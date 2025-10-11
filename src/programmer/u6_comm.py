""" A library for automating useful6502 PICBridge shell operations
"""

import serial
import time
from typing import Optional, Union

# Maximum chunk size for SRAM/EEPROM operations (in bytes)
# Limited by the PICBridge buffer size (64 bytes)
MAX_CHUNK_SIZE = 30

# Communication parameters
BAUD_RATE = 115200
TIMEOUT = 2.0  # seconds


class PICBridgeError(Exception):
    """Custom exception for PICBridge communication errors"""
    
    def __init__(self, error_type: str, message: str = ""):
        self.error_type = error_type
        self.message = message
        super().__init__(f"PICBridge Error: {error_type}" + (f" - {message}" if message else ""))


class PICBridge:
    """Class to handle communication with the useful6502 PICBridge"""
    
    def __init__(self, port: str, baud: int = BAUD_RATE, timeout: float = TIMEOUT):
        """
        Initialize PICBridge communication
        
        Args:
            port: Serial port path (e.g., '/dev/ttyUSB0' or 'COM3')
            baud: Baud rate (default: 115200)
            timeout: Serial timeout in seconds (default: 2.0)
        """
        self.port = port
        self.baud = baud
        self.timeout = timeout
        self.serial: Optional[serial.Serial] = None
        
    def connect(self) -> None:
        """Open serial connection to PICBridge"""
        if self.serial and self.serial.is_open:
            return
            
        self.serial = serial.Serial(
            port=self.port,
            baudrate=self.baud,
            timeout=self.timeout,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE
        )
        
        # Wait for device to initialize and send READY
        time.sleep(0.1)
        self.serial.reset_input_buffer()
        
    def disconnect(self) -> None:
        """Close serial connection"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            
    def __enter__(self):
        """Context manager entry"""
        self.connect()
        return self
        
    def __exit__(self, exc_type, exc_val, exc_tb):
        """Context manager exit"""
        self.disconnect()
        
    def _send_command(self, cmd: str) -> str:
        """
        Send a command and get response
        
        Args:
            cmd: Command string to send
            
        Returns:
            Response string from PICBridge
            
        Raises:
            PICBridgeError: If device returns an error or communication fails
        """
        if not self.serial or not self.serial.is_open:
            raise PICBridgeError("NOT_CONNECTED", "Serial port not open")
            
        # print(f"Sending -> {cmd}")

        # Send command
        self.serial.write((cmd + '\n').encode('ascii'))
        self.serial.flush()
        
        # Read response
        response = self.serial.readline().decode('ascii').strip()
        
        if not response:
            raise PICBridgeError("NO_RESPONSE", f"No response to command: {cmd}")
            
        # Parse response
        if response.startswith('OK:'):
            return response[3:]  # Return everything after "OK:"
        elif response.startswith('ERR:'):
            error_msg = response[4:]  # Everything after "ERR:"
            raise PICBridgeError(error_msg, f"Command failed: {cmd}")
        else:
            raise PICBridgeError("INVALID_RESPONSE", f"Unexpected response: {response}")
    
    def get_version(self) -> str:
        """
        Query PICBridge firmware version
        
        Returns:
            Version string
        """
        response = self._send_command('?')
        if response.startswith('VERSION:'):
            return response[8:]
        return response
    
    def cpu_reset(self) -> None:
        """Assert reset on 6502 CPU"""
        self._send_command('-')
        
    def cpu_unreset(self) -> None:
        """Release reset on 6502 CPU"""
        self._send_command('O')
        
    def cpu_irq(self) -> None:
        """Assert IRQ on 6502 CPU"""
        self._send_command('I')
        
    def cpu_irq_clear(self) -> None:
        """Clear IRQ on 6502 CPU"""
        self._send_command('i')
    
    def sram_write(self, address: int, data: Union[bytes, bytearray, list]) -> None:
        """
        Write data to SRAM, automatically chunking if necessary
        
        Args:
            address: Starting address (0x000-0x7FF for 2KB SRAM)
            data: Data to write (bytes, bytearray, or list of ints)
            
        Raises:
            PICBridgeError: If write fails
        """
        if isinstance(data, list):
            data = bytes(data)
        elif isinstance(data, bytearray):
            data = bytes(data)
            
        offset = 0
        bytes_written = 0
        while offset < len(data):
            chunk_size = min(MAX_CHUNK_SIZE, len(data) - offset)
            chunk = data[offset:offset + chunk_size]
            chunk_addr = (address + offset) & 0x7FF  # Mask to 11 bits
            
            # Format: w<3-hex-addr><hex-data>
            hex_data = ''.join(f'{b:02X}' for b in chunk)
            cmd = f'w{chunk_addr:03X}{hex_data}'
            
            response = self._send_command(cmd)
            bytes_written += int(response.split(':')[1], 16)
            # Response format: "SRAM_WRITE:<bytes_written_hex>"
            offset += chunk_size
    
        return bytes_written

    def sram_read(self, address: int, length: int) -> bytes:
        """
        Read data from SRAM, automatically chunking if necessary
        
        Args:
            address: Starting address (0x000-0x7FF for 2KB SRAM)
            length: Number of bytes to read
            
        Returns:
            Data read as bytes
            
        Raises:
            PICBridgeError: If read fails
        """
        result = bytearray()
        offset = 0
        
        while offset < length:
            chunk_size = min(MAX_CHUNK_SIZE, length - offset)
            chunk_addr = (address + offset) & 0x7FF  # Mask to 11 bits
            
            # Format: r<3-hex-addr><3-hex-length>
            cmd = f'r{chunk_addr:03X}{chunk_size:03X}'
            
            response = self._send_command(cmd)
            # Response format: "SRAM_READ:<hex-data>"
            
            if response.startswith('SRAM_READ:'):
                hex_data = response[10:]
                # Convert hex string to bytes
                chunk_data = bytes.fromhex(hex_data)
                result.extend(chunk_data)
            else:
                raise PICBridgeError("INVALID_RESPONSE", f"Expected SRAM_READ, got: {response}")
                
            offset += chunk_size
            
        return bytes(result)
    
    def eeprom_write(self, address: int, data: Union[bytes, bytearray, list]) -> None:
        """
        Write data to EEPROM, automatically chunking if necessary
        
        Args:
            address: Starting address (0x0000-0xFFFF for M95 EEPROM)
            data: Data to write (bytes, bytearray, or list of ints)
            
        Raises:
            PICBridgeError: If write fails
        """
        if isinstance(data, list):
            data = bytes(data)
        elif isinstance(data, bytearray):
            data = bytes(data)
        
        # Save original timeout and increase it for slow EEPROM writes
        original_timeout = self.serial.timeout
        self.serial.timeout = 5.0  # EEPROM writes can take several seconds
            
        offset = 0
        try:
            while offset < len(data):
                chunk_size = min(MAX_CHUNK_SIZE, len(data) - offset)
                chunk = data[offset:offset + chunk_size]
                chunk_addr = (address + offset) & 0xFFFF  # Mask to 16 bits
                
                # Format: W<4-hex-addr><hex-data>
                hex_data = ''.join(f'{b:02X}' for b in chunk)
                cmd = f'W{chunk_addr:04X}{hex_data}'
                
                response = self._send_command(cmd)
                # Response format: "EEPROM_WRITE:<bytes_written_hex>"
                
                offset += chunk_size
        finally:
            # Restore original timeout
            self.serial.timeout = original_timeout
    
    def eeprom_read(self, address: int, length: int) -> bytes:
        """
        Read data from EEPROM, automatically chunking if necessary
        
        Args:
            address: Starting address (0x0000-0xFFFF for M95 EEPROM)
            length: Number of bytes to read
            
        Returns:
            Data read as bytes
            
        Raises:
            PICBridgeError: If read fails
        """
        result = bytearray()
        offset = 0
        
        while offset < length:
            chunk_size = min(MAX_CHUNK_SIZE, length - offset)
            chunk_addr = (address + offset) & 0xFFFF  # Mask to 16 bits
            
            # Format: R<4-hex-addr><4-hex-length>
            cmd = f'R{chunk_addr:04X}{chunk_size:04X}'
            
            response = self._send_command(cmd)
            # Response format: "EEPROM_READ:<hex-data>"
            
            if response.startswith('EEPROM_READ:'):
                hex_data = response[12:]
                # Convert hex string to bytes
                chunk_data = bytes.fromhex(hex_data)
                result.extend(chunk_data)
            else:
                raise PICBridgeError("INVALID_RESPONSE", f"Expected EEPROM_READ, got: {response}")
                
            offset += chunk_size
            
        return bytes(result)


# Convenience functions for quick operations
def sram_write_file(port: str, address: int, filename: str) -> None:
    """Write a binary file to SRAM"""
    with open(filename, 'rb') as f:
        data = f.read()
    with PICBridge(port) as pb:
        pb.sram_write(address, data)


def sram_read_file(port: str, address: int, length: int, filename: str) -> None:
    """Read SRAM to a binary file"""
    with PICBridge(port) as pb:
        data = pb.sram_read(address, length)
    with open(filename, 'wb') as f:
        f.write(data)


def eeprom_write_file(port: str, address: int, filename: str) -> None:
    """Write a binary file to EEPROM"""
    with open(filename, 'rb') as f:
        data = f.read()
    with PICBridge(port) as pb:
        pb.eeprom_write(address, data)


def eeprom_read_file(port: str, address: int, length: int, filename: str) -> None:
    """Read EEPROM to a binary file"""
    with PICBridge(port) as pb:
        data = pb.eeprom_read(address, length)
    with open(filename, 'wb') as f:
        f.write(data)