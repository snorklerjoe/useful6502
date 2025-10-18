'''
Contains the string text for a simple loader program
'''

from .loader6502 import *


def loader_code(to_addr) -> bytes:
    if to_addr % 256 != 0:
        raise ValueError(
            "Cannot load across a page boundary. Please specify an address that is evenly divisible by 256.")
    code_template: bytes = bytes(loader6502_code).replace(b'\xFF\xFF', b'%c%c')
    return code_template % (0x00, (to_addr // 256), 0x00, (to_addr // 256 + 1))
