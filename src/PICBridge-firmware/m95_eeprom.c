#include "m95_eeprom.h"
#include "mcc_generated_files/system/system.h"
#include "conio.h"

#define M95_CMD_WREN    0x06
#define M95_CMD_WRDI    0x04
#define M95_CMD_RDSR    0x05
#define M95_CMD_READ    0x03
#define M95_CMD_WRITE   0x02
#define M95_CMD_RDID    0x83
#define M95_CMD_WRID    0x82

#define M95_PAGE_SIZE   64 // Adjust for your EEPROM variant

// Placeholder CS control macros – implement for your board
#define M95_CS_LOW()    LATAbits.LATA4 = 0;
#define M95_CS_HIGH()   LATAbits.LATA4 = 1;

char buf[2] = {0xff, 0xff};

// Direct, robust SPI byte exchange for PIC (blocking, register-level)
static uint8_t spi1_byte_exchange_hw(uint8_t data)
{
    // Clear any previous interrupt flag
    PIR3bits.SSP1IF = 0;
    // Write data to buffer
    SSP1BUF = data;
    // Wait for transfer to complete
    while (!PIR3bits.SSP1IF) ;
    // Read received byte
    uint8_t received = SSP1BUF;
    // Clear interrupt flag
    PIR3bits.SSP1IF = 0;
    return received;
}

static uint8_t M95_wait_write_complete(void)
{
    SPI1_ByteWrite(M95_CMD_RDSR);
    int tmp = SPI1_ByteExchange(0xff);
}

int M95_init(void)
{
    SPI1_Host_Initialize();
    
    LATAbits.LATA4 = 1;    // Start with CS high
    TRISAbits.TRISA4 = 0;  // Set RA4 as output for CS
    TRISBbits.TRISB1 = 1; // Set RB1 as input for MISO
    
    // Use Config 4: SPI Mode 2 (CPOL=1, CPHA=0) - clock idle HIGH, data on rising edge
    if (!SPI1_Host_Open(4)) {
        uart_puts("SPI Open failed\r\n");
        return -1;
    }

    uart_puts("Getting status byte...\n");
    
    // Read status register
    M95_CS_LOW();
    spi1_byte_exchange_hw(M95_CMD_RDSR);
    uart_putc('.');
    int status = spi1_byte_exchange_hw(0xff);
    M95_CS_HIGH();
    
    uart_puts("Status register: 0x");
    putch_hex(status);
    uart_puts("\r\n");

    return status;
}

int M95_read_bytes(int addr, int num_bytes, void* buf)
{
    if (!buf || addr < 0 || num_bytes <= 0) return -1;

    M95_CS_LOW();
    spi1_byte_exchange_hw(M95_CMD_READ);
    spi1_byte_exchange_hw((addr >> 8) & 0xFF); // MSB
    spi1_byte_exchange_hw(addr & 0xFF);        // LSB

    uint8_t* data = (uint8_t*)buf;
    for (int i = 0; i < num_bytes; i++)
        data[i] = spi1_byte_exchange_hw(0xFF); // Dummy write to clock in data

    M95_CS_HIGH();
    return 0;
}

int M95_write_bytes(int addr, int num_bytes, void* buf)
{
    if (!buf || addr < 0 || num_bytes <= 0) return -1;

    uint8_t* data = (uint8_t*)buf;
    int remaining = num_bytes;
    int current_addr = addr;

    while (remaining > 0) {
        // Write Enable
        M95_CS_LOW();
        spi1_byte_exchange_hw(M95_CMD_WREN);
        M95_CS_HIGH();

        // Calculate page boundary
        int page_offset = current_addr % M95_PAGE_SIZE;
        int space_in_page = M95_PAGE_SIZE - page_offset;
        int to_write = (remaining < space_in_page) ? remaining : space_in_page;

        // Write command and address
        M95_CS_LOW();
        spi1_byte_exchange_hw(M95_CMD_WRITE);
        spi1_byte_exchange_hw((current_addr >> 8) & 0xFF);
        spi1_byte_exchange_hw(current_addr & 0xFF);

        // Write data bytes
        for (int i = 0; i < to_write; i++)
            spi1_byte_exchange_hw(data[i]);

        M95_CS_HIGH();

        // Wait for write complete (poll WIP bit)
        while (spi1_byte_exchange_hw(0xff) & 0x01);

        current_addr += to_write;
        data += to_write;
        remaining -= to_write;
    }

    return 0;
}

int M95_read_id(int num_bytes, void* buf)
{
    if (!buf || num_bytes <= 0) return -1;

    M95_CS_LOW();
    spi1_byte_exchange_hw(M95_CMD_RDID);
    spi1_byte_exchange_hw(0x00); // ID address MSB
    spi1_byte_exchange_hw(0x00); // ID address LSB

    SPI1_BufferRead(buf, num_bytes);
    M95_CS_HIGH();

    return 0;
}

int M95_write_id(int num_bytes, void* buf)
{
    if (!buf || num_bytes <= 0) return -1;

    // Write Enable
    M95_CS_LOW();
    spi1_byte_exchange_hw(M95_CMD_WREN);
    M95_CS_HIGH();

    M95_CS_LOW();
    spi1_byte_exchange_hw(M95_CMD_WRID);
    spi1_byte_exchange_hw(0x00); // ID address MSB
    spi1_byte_exchange_hw(0x00); // ID address LSB

    SPI1_BufferWrite(buf, num_bytes);
    M95_CS_HIGH();

    return spi1_byte_exchange_hw(0xff);
}
