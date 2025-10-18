subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	16F15385
include "/opt/microchip/xc8/v3.00/pic/include/proc/16f15385.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
# 52 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF0 equ 00h ;# 
# 72 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INDF1 equ 01h ;# 
# 92 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCL equ 02h ;# 
# 112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS equ 03h ;# 
# 175 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L equ 04h ;# 
# 195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H equ 05h ;# 
# 219 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L equ 06h ;# 
# 239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H equ 07h ;# 
# 259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR equ 08h ;# 
# 317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG equ 09h ;# 
# 337 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH equ 0Ah ;# 
# 357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTCON equ 0Bh ;# 
# 390 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTA equ 0Ch ;# 
# 452 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTB equ 0Dh ;# 
# 514 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTC equ 0Eh ;# 
# 576 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTD equ 0Fh ;# 
# 638 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTE equ 010h ;# 
# 676 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PORTF equ 011h ;# 
# 738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISA equ 012h ;# 
# 800 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISB equ 013h ;# 
# 862 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISC equ 014h ;# 
# 924 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISD equ 015h ;# 
# 986 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISE equ 016h ;# 
# 1018 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TRISF equ 017h ;# 
# 1080 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATA equ 018h ;# 
# 1142 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATB equ 019h ;# 
# 1204 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATC equ 01Ah ;# 
# 1266 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATD equ 01Bh ;# 
# 1328 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATE equ 01Ch ;# 
# 1360 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
LATF equ 01Dh ;# 
# 1422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRES equ 09Bh ;# 
# 1429 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESL equ 09Bh ;# 
# 1499 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADRESH equ 09Ch ;# 
# 1569 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON0 equ 09Dh ;# 
# 1646 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADCON1 equ 09Eh ;# 
# 1712 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACT equ 09Fh ;# 
# 1764 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1REG equ 0119h ;# 
# 1769 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG equ 0119h ;# 
# 1773 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG1 equ 0119h ;# 
# 1818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1REG equ 011Ah ;# 
# 1823 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG1 equ 011Ah ;# 
# 1827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG equ 011Ah ;# 
# 1872 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRG equ 011Bh ;# 
# 1877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG equ 011Bh ;# 
# 1884 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGL equ 011Bh ;# 
# 1889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG1 equ 011Bh ;# 
# 1893 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGL equ 011Bh ;# 
# 1938 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP1BRGH equ 011Ch ;# 
# 1943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH equ 011Ch ;# 
# 1947 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH1 equ 011Ch ;# 
# 1992 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1STA equ 011Dh ;# 
# 1997 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA1 equ 011Dh ;# 
# 2001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA equ 011Dh ;# 
# 2172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1STA equ 011Eh ;# 
# 2177 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA1 equ 011Eh ;# 
# 2181 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA equ 011Eh ;# 
# 2352 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD1CON equ 011Fh ;# 
# 2357 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON1 equ 011Fh ;# 
# 2361 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL1 equ 011Fh ;# 
# 2365 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON equ 011Fh ;# 
# 2369 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL equ 011Fh ;# 
# 2598 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1BUF equ 018Ch ;# 
# 2618 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1ADD equ 018Dh ;# 
# 2738 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1MSK equ 018Eh ;# 
# 2808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1STAT equ 018Fh ;# 
# 3172 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON1 equ 0190h ;# 
# 3292 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON2 equ 0191h ;# 
# 3479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CON3 equ 0192h ;# 
# 3541 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2BUF equ 0196h ;# 
# 3561 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2ADD equ 0197h ;# 
# 3681 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2MSK equ 0198h ;# 
# 3751 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2STAT equ 0199h ;# 
# 4115 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON1 equ 019Ah ;# 
# 4235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON2 equ 019Bh ;# 
# 4422 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CON3 equ 019Ch ;# 
# 4484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1 equ 020Ch ;# 
# 4491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1L equ 020Ch ;# 
# 4661 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1H equ 020Dh ;# 
# 4781 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CON equ 020Eh ;# 
# 4877 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GCON equ 020Fh ;# 
# 4882 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR1 equ 020Fh ;# 
# 5073 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GATE equ 0210h ;# 
# 5078 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1GATE equ 0210h ;# 
# 5239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CLK equ 0211h ;# 
# 5244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR1CLK equ 0211h ;# 
# 5381 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2TMR equ 028Ch ;# 
# 5386 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR2 equ 028Ch ;# 
# 5435 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2PR equ 028Dh ;# 
# 5440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR2 equ 028Dh ;# 
# 5489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CON equ 028Eh ;# 
# 5635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2HLT equ 028Fh ;# 
# 5763 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2CLKCON equ 0290h ;# 
# 5843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2RST equ 0291h ;# 
# 5923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1 equ 030Ch ;# 
# 5930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1L equ 030Ch ;# 
# 5950 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR1H equ 030Dh ;# 
# 5970 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CON equ 030Eh ;# 
# 6088 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1CAP equ 030Fh ;# 
# 6156 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2 equ 0310h ;# 
# 6163 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2L equ 0310h ;# 
# 6183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCPR2H equ 0311h ;# 
# 6203 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CON equ 0312h ;# 
# 6321 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2CAP equ 0313h ;# 
# 6389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DC equ 0314h ;# 
# 6396 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCL equ 0314h ;# 
# 6462 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3DCH equ 0315h ;# 
# 6632 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM3CON equ 0316h ;# 
# 6688 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DC equ 0318h ;# 
# 6695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCL equ 0318h ;# 
# 6761 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4DCH equ 0319h ;# 
# 6931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM4CON equ 031Ah ;# 
# 6987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DC equ 031Ch ;# 
# 6994 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCL equ 031Ch ;# 
# 7060 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5DCH equ 031Dh ;# 
# 7230 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM5CON equ 031Eh ;# 
# 7286 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DC equ 038Ch ;# 
# 7293 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCL equ 038Ch ;# 
# 7359 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6DCH equ 038Dh ;# 
# 7529 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PWM6CON equ 038Eh ;# 
# 7597 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACC equ 058Ch ;# 
# 7604 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCL equ 058Ch ;# 
# 7674 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCH equ 058Dh ;# 
# 7744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1ACCU equ 058Eh ;# 
# 7792 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INC equ 058Fh ;# 
# 7799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCL equ 058Fh ;# 
# 7869 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCH equ 0590h ;# 
# 7939 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1INCU equ 0591h ;# 
# 7985 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CON equ 0592h ;# 
# 8025 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NCO1CLK equ 0593h ;# 
# 8097 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0L equ 059Ch ;# 
# 8102 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0 equ 059Ch ;# 
# 8235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TMR0H equ 059Dh ;# 
# 8240 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PR0 equ 059Dh ;# 
# 8489 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON0 equ 059Eh ;# 
# 8559 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CON1 equ 059Fh ;# 
# 8670 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CLKCON equ 060Ch ;# 
# 8698 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DAT equ 060Dh ;# 
# 8744 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBR equ 060Eh ;# 
# 8848 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1DBF equ 060Fh ;# 
# 8952 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON0 equ 0610h ;# 
# 9053 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1CON1 equ 0611h ;# 
# 9131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS0 equ 0612h ;# 
# 9251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1AS1 equ 0613h ;# 
# 9295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1STR equ 0614h ;# 
# 9407 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR0 equ 070Ch ;# 
# 9440 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR1 equ 070Dh ;# 
# 9479 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR2 equ 070Eh ;# 
# 9512 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR3 equ 070Fh ;# 
# 9574 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR4 equ 0710h ;# 
# 9600 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR5 equ 0711h ;# 
# 9645 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR6 equ 0712h ;# 
# 9671 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIR7 equ 0713h ;# 
# 9713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE0 equ 0716h ;# 
# 9746 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE1 equ 0717h ;# 
# 9785 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE2 equ 0718h ;# 
# 9818 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE3 equ 0719h ;# 
# 9880 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE4 equ 071Ah ;# 
# 9906 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE5 equ 071Bh ;# 
# 9951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE6 equ 071Ch ;# 
# 9977 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PIE7 equ 071Dh ;# 
# 10019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD0 equ 0796h ;# 
# 10064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD1 equ 0797h ;# 
# 10112 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD2 equ 0798h ;# 
# 10157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD3 equ 0799h ;# 
# 10207 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD4 equ 079Ah ;# 
# 10252 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PMD5 equ 079Bh ;# 
# 10291 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON0 equ 080Ch ;# 
# 10366 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTCON1 equ 080Dh ;# 
# 10460 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSL equ 080Eh ;# 
# 10588 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTPSH equ 080Fh ;# 
# 10716 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WDTTMR equ 0810h ;# 
# 10798 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BORCON equ 0811h ;# 
# 10825 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
VREGCON equ 0812h ;# 
# 10846 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON0 equ 0813h ;# 
# 10908 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCON1 equ 0814h ;# 
# 10929 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADR equ 081Ah ;# 
# 10936 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRL equ 081Ah ;# 
# 10998 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMADRH equ 081Bh ;# 
# 11054 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDAT equ 081Ch ;# 
# 11061 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATL equ 081Ch ;# 
# 11123 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMDATH equ 081Dh ;# 
# 11173 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON1 equ 081Eh ;# 
# 11229 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
NVMCON2 equ 081Fh ;# 
# 11249 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CPUDOZE equ 088Ch ;# 
# 11314 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON1 equ 088Dh ;# 
# 11384 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON2 equ 088Eh ;# 
# 11454 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCCON3 equ 088Fh ;# 
# 11494 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCSTAT equ 0890h ;# 
# 11551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCEN equ 0891h ;# 
# 11602 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCTUNE equ 0892h ;# 
# 11660 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
OSCFRQ equ 0893h ;# 
# 11700 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCON equ 0895h ;# 
# 11765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLKRCLK equ 0896h ;# 
# 11811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FVRCON equ 090Ch ;# 
# 11887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON0 equ 090Eh ;# 
# 11988 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
DAC1CON1 equ 090Fh ;# 
# 12040 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ZCDCON equ 091Fh ;# 
# 12086 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMOUT equ 098Fh ;# 
# 12091 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CMSTAT equ 098Fh ;# 
# 12164 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON0 equ 0990h ;# 
# 12244 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1CON1 equ 0991h ;# 
# 12284 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1NCH equ 0992h ;# 
# 12344 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM1PCH equ 0993h ;# 
# 12404 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON0 equ 0994h ;# 
# 12484 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2CON1 equ 0995h ;# 
# 12524 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2NCH equ 0996h ;# 
# 12584 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CM2PCH equ 0997h ;# 
# 12644 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2REG equ 0A19h ;# 
# 12649 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCREG2 equ 0A19h ;# 
# 12682 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2REG equ 0A1Ah ;# 
# 12687 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXREG2 equ 0A1Ah ;# 
# 12720 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRG equ 0A1Bh ;# 
# 12727 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGL equ 0A1Bh ;# 
# 12732 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRG2 equ 0A1Bh ;# 
# 12765 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SP2BRGH equ 0A1Ch ;# 
# 12770 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SPBRGH2 equ 0A1Ch ;# 
# 12803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2STA equ 0A1Dh ;# 
# 12808 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RCSTA2 equ 0A1Dh ;# 
# 12925 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2STA equ 0A1Eh ;# 
# 12930 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TXSTA2 equ 0A1Eh ;# 
# 13047 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUD2CON equ 0A1Fh ;# 
# 13052 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCON2 equ 0A1Fh ;# 
# 13056 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BAUDCTL2 equ 0A1Fh ;# 
# 13197 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCDATA equ 01E0Fh ;# 
# 13235 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1CON equ 01E10h ;# 
# 13353 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1POL equ 01E11h ;# 
# 13431 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL0 equ 01E12h ;# 
# 13535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL1 equ 01E13h ;# 
# 13639 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL2 equ 01E14h ;# 
# 13743 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1SEL3 equ 01E15h ;# 
# 13847 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS0 equ 01E16h ;# 
# 13959 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS1 equ 01E17h ;# 
# 14071 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS2 equ 01E18h ;# 
# 14183 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC1GLS3 equ 01E19h ;# 
# 14295 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2CON equ 01E1Ah ;# 
# 14413 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2POL equ 01E1Bh ;# 
# 14491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14595 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14699 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14803 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14907 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS0 equ 01E20h ;# 
# 15019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS1 equ 01E21h ;# 
# 15131 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS2 equ 01E22h ;# 
# 15243 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC2GLS3 equ 01E23h ;# 
# 15355 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3CON equ 01E24h ;# 
# 15473 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3POL equ 01E25h ;# 
# 15551 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL0 equ 01E26h ;# 
# 15655 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL1 equ 01E27h ;# 
# 15759 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL2 equ 01E28h ;# 
# 15863 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3SEL3 equ 01E29h ;# 
# 15967 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS0 equ 01E2Ah ;# 
# 16079 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS1 equ 01E2Bh ;# 
# 16191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16303 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4CON equ 01E2Eh ;# 
# 16533 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4POL equ 01E2Fh ;# 
# 16611 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL0 equ 01E30h ;# 
# 16715 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL1 equ 01E31h ;# 
# 16819 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL2 equ 01E32h ;# 
# 16923 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4SEL3 equ 01E33h ;# 
# 17027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS0 equ 01E34h ;# 
# 17139 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS1 equ 01E35h ;# 
# 17251 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS2 equ 01E36h ;# 
# 17363 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLC4GLS3 equ 01E37h ;# 
# 17475 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF0PPS equ 01E38h ;# 
# 17519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF1PPS equ 01E39h ;# 
# 17563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF2PPS equ 01E3Ah ;# 
# 17607 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF3PPS equ 01E3Bh ;# 
# 17651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF4PPS equ 01E3Ch ;# 
# 17695 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF5PPS equ 01E3Dh ;# 
# 17739 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF6PPS equ 01E3Eh ;# 
# 17783 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RF7PPS equ 01E3Fh ;# 
# 17827 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELF equ 01E50h ;# 
# 17889 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUF equ 01E51h ;# 
# 17951 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONF equ 01E52h ;# 
# 18013 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONF equ 01E53h ;# 
# 18075 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLF equ 01E54h ;# 
# 18137 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PPSLOCK equ 01E8Fh ;# 
# 18157 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INTPPS equ 01E90h ;# 
# 18215 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T0CKIPPS equ 01E91h ;# 
# 18273 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1CKIPPS equ 01E92h ;# 
# 18331 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T1GPPS equ 01E93h ;# 
# 18389 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
T2INPPS equ 01E9Ch ;# 
# 18447 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP1PPS equ 01EA1h ;# 
# 18505 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CCP2PPS equ 01EA2h ;# 
# 18563 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CWG1PPS equ 01EB1h ;# 
# 18621 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN0PPS equ 01EBBh ;# 
# 18679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN1PPS equ 01EBCh ;# 
# 18737 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN2PPS equ 01EBDh ;# 
# 18795 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
CLCIN3PPS equ 01EBEh ;# 
# 18853 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ADACTPPS equ 01EC3h ;# 
# 18911 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18969 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1DATPPS equ 01EC6h ;# 
# 19027 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP1SSPPS equ 01EC7h ;# 
# 19085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2CLKPPS equ 01EC8h ;# 
# 19143 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2DATPPS equ 01EC9h ;# 
# 19201 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SSP2SSPPS equ 01ECAh ;# 
# 19259 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX1DTPPS equ 01ECBh ;# 
# 19317 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX1CKPPS equ 01ECCh ;# 
# 19375 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RX2DTPPS equ 01ECDh ;# 
# 19433 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TX2CKPPS equ 01ECEh ;# 
# 19491 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA0PPS equ 01F10h ;# 
# 19535 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA1PPS equ 01F11h ;# 
# 19579 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA2PPS equ 01F12h ;# 
# 19623 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA3PPS equ 01F13h ;# 
# 19667 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA4PPS equ 01F14h ;# 
# 19711 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA5PPS equ 01F15h ;# 
# 19755 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA6PPS equ 01F16h ;# 
# 19799 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RA7PPS equ 01F17h ;# 
# 19843 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB0PPS equ 01F18h ;# 
# 19887 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB1PPS equ 01F19h ;# 
# 19931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB2PPS equ 01F1Ah ;# 
# 19975 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB3PPS equ 01F1Bh ;# 
# 20019 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB4PPS equ 01F1Ch ;# 
# 20063 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB5PPS equ 01F1Dh ;# 
# 20107 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB6PPS equ 01F1Eh ;# 
# 20151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RB7PPS equ 01F1Fh ;# 
# 20195 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC0PPS equ 01F20h ;# 
# 20239 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC1PPS equ 01F21h ;# 
# 20283 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC2PPS equ 01F22h ;# 
# 20327 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC3PPS equ 01F23h ;# 
# 20371 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC4PPS equ 01F24h ;# 
# 20415 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC5PPS equ 01F25h ;# 
# 20459 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC6PPS equ 01F26h ;# 
# 20503 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RC7PPS equ 01F27h ;# 
# 20547 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD0PPS equ 01F28h ;# 
# 20591 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD1PPS equ 01F29h ;# 
# 20635 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD2PPS equ 01F2Ah ;# 
# 20679 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD3PPS equ 01F2Bh ;# 
# 20723 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD4PPS equ 01F2Ch ;# 
# 20767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD5PPS equ 01F2Dh ;# 
# 20811 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD6PPS equ 01F2Eh ;# 
# 20855 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RD7PPS equ 01F2Fh ;# 
# 20899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE0PPS equ 01F30h ;# 
# 20943 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE1PPS equ 01F31h ;# 
# 20987 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
RE2PPS equ 01F32h ;# 
# 21031 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELA equ 01F38h ;# 
# 21093 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUA equ 01F39h ;# 
# 21155 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONA equ 01F3Ah ;# 
# 21217 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONA equ 01F3Bh ;# 
# 21279 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLA equ 01F3Ch ;# 
# 21341 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAP equ 01F3Dh ;# 
# 21403 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAN equ 01F3Eh ;# 
# 21465 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCAF equ 01F3Fh ;# 
# 21527 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELB equ 01F43h ;# 
# 21589 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUB equ 01F44h ;# 
# 21651 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONB equ 01F45h ;# 
# 21713 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONB equ 01F46h ;# 
# 21775 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLB equ 01F47h ;# 
# 21837 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBP equ 01F48h ;# 
# 21899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBN equ 01F49h ;# 
# 21961 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCBF equ 01F4Ah ;# 
# 22023 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELC equ 01F4Eh ;# 
# 22085 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUC equ 01F4Fh ;# 
# 22147 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONC equ 01F50h ;# 
# 22209 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONC equ 01F51h ;# 
# 22271 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLC equ 01F52h ;# 
# 22333 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCP equ 01F53h ;# 
# 22395 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCN equ 01F54h ;# 
# 22457 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCCF equ 01F55h ;# 
# 22519 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELD equ 01F59h ;# 
# 22581 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUD equ 01F5Ah ;# 
# 22643 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCOND equ 01F5Bh ;# 
# 22705 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCOND equ 01F5Ch ;# 
# 22767 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLD equ 01F5Dh ;# 
# 22829 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ANSELE equ 01F64h ;# 
# 22861 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WPUE equ 01F65h ;# 
# 22899 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
ODCONE equ 01F66h ;# 
# 22931 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
SLRCONE equ 01F67h ;# 
# 22963 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
INLVLE equ 01F68h ;# 
# 23001 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEP equ 01F69h ;# 
# 23022 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEN equ 01F6Ah ;# 
# 23043 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
IOCEF equ 01F6Bh ;# 
# 23064 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STATUS_SHAD equ 01FE4h ;# 
# 23084 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
WREG_SHAD equ 01FE5h ;# 
# 23104 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
BSR_SHAD equ 01FE6h ;# 
# 23124 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
PCLATH_SHAD equ 01FE7h ;# 
# 23144 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0_SHAD equ 01FE8h ;# 
# 23151 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0L_SHAD equ 01FE8h ;# 
# 23171 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR0H_SHAD equ 01FE9h ;# 
# 23191 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1L_SHAD equ 01FEAh ;# 
# 23211 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
FSR1H_SHAD equ 01FEBh ;# 
# 23231 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
STKPTR equ 01FEDh ;# 
# 23275 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSL equ 01FEEh ;# 
# 23345 "/opt/microchip/xc8/v3.00/pic/include/proc/pic16f15385.h"
TOSH equ 01FEFh ;# 
;; Function _SPI1_Deinitialize is unused but had its address taken
global _SPI1_Deinitialize
_SPI1_Deinitialize equ 0
;; Function _SPI1_Close is unused but had its address taken
global _SPI1_Close
_SPI1_Close equ 0
;; Function _SPI1_BufferExchange is unused but had its address taken
global _SPI1_BufferExchange
_SPI1_BufferExchange equ 0
;; Function _SPI1_BufferWrite is unused but had its address taken
global _SPI1_BufferWrite
_SPI1_BufferWrite equ 0
;; Function _SPI1_BufferRead is unused but had its address taken
global _SPI1_BufferRead
_SPI1_BufferRead equ 0
;; Function _SPI1_ByteExchange is unused but had its address taken
global _SPI1_ByteExchange
_SPI1_ByteExchange equ 0
;; Function _SPI1_ByteWrite is unused but had its address taken
global _SPI1_ByteWrite
_SPI1_ByteWrite equ 0
;; Function _SPI1_ByteRead is unused but had its address taken
global _SPI1_ByteRead
_SPI1_ByteRead equ 0
;; Function _SPI1_IsRxReady is unused but had its address taken
global _SPI1_IsRxReady
_SPI1_IsRxReady equ 0
;; Function _SPI1_IsTxReady is unused but had its address taken
global _SPI1_IsTxReady
_SPI1_IsTxReady equ 0
;; Function _I2C2_Deinitialize is unused but had its address taken
global _I2C2_Deinitialize
_I2C2_Deinitialize equ 0
;; Function _I2C2_Write is unused but had its address taken
global _I2C2_Write
_I2C2_Write equ 0
;; Function _I2C2_Read is unused but had its address taken
global _I2C2_Read
_I2C2_Read equ 0
;; Function _I2C2_WriteRead is unused but had its address taken
global _I2C2_WriteRead
_I2C2_WriteRead equ 0
;; Function _I2C2_ErrorGet is unused but had its address taken
global _I2C2_ErrorGet
_I2C2_ErrorGet equ 0
;; Function _I2C2_IsBusy is unused but had its address taken
global _I2C2_IsBusy
_I2C2_IsBusy equ 0
;; Function _I2C2_CallbackRegister is unused but had its address taken
global _I2C2_CallbackRegister
_I2C2_CallbackRegister equ 0
;; Function _EUSART2_Deinitialize is unused but had its address taken
global _EUSART2_Deinitialize
_EUSART2_Deinitialize equ 0
;; Function _EUSART2_TransmitEnable is unused but had its address taken
global _EUSART2_TransmitEnable
_EUSART2_TransmitEnable equ 0
;; Function _EUSART2_TransmitDisable is unused but had its address taken
global _EUSART2_TransmitDisable
_EUSART2_TransmitDisable equ 0
;; Function _EUSART2_AutoBaudSet is unused but had its address taken
global _EUSART2_AutoBaudSet
_EUSART2_AutoBaudSet equ 0
;; Function _EUSART2_AutoBaudQuery is unused but had its address taken
global _EUSART2_AutoBaudQuery
_EUSART2_AutoBaudQuery equ 0
;; Function _EUSART2_IsTxDone is unused but had its address taken
global _EUSART2_IsTxDone
_EUSART2_IsTxDone equ 0
;; Function _EUSART2_ErrorGet is unused but had its address taken
global _EUSART2_ErrorGet
_EUSART2_ErrorGet equ 0
;; Function _EUSART2_TxCompleteCallbackRegister is unused but had its address taken
global _EUSART2_TxCompleteCallbackRegister
_EUSART2_TxCompleteCallbackRegister equ 0
	debug_source C
	FNCALL	_main,_EUSART2_ReceiveInterruptEnable
	FNCALL	_main,_EUSART2_RxCompleteCallbackRegister
	FNCALL	_main,_M95_init
	FNCALL	_main,_M95_read_bytes
	FNCALL	_main,_M95_write_bytes
	FNCALL	_main,_SRAM_init
	FNCALL	_main,_SRAM_read
	FNCALL	_main,_SRAM_read_bytes
	FNCALL	_main,_SRAM_write
	FNCALL	_main,_SRAM_write_bytes
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_cpu6502_interrupt
	FNCALL	_main,_cpu6502_reset
	FNCALL	_main,_cpu6502_uninterrupt
	FNCALL	_main,_cpu6502_unreset
	FNCALL	_main,_hexstr_to_bytes
	FNCALL	_main,_hexstr_to_uint
	FNCALL	_main,_putch_hex
	FNCALL	_main,_strcpy
	FNCALL	_main,_strlen
	FNCALL	_main,_uart_puts
	FNCALL	_hexstr_to_uint,_hex2val
	FNCALL	_hexstr_to_bytes,_hex2val
	FNCALL	_SYSTEM_Initialize,_CLOCK_Initialize
	FNCALL	_SYSTEM_Initialize,_EUSART2_Initialize
	FNCALL	_SYSTEM_Initialize,_I2C2_Initialize
	FNCALL	_SYSTEM_Initialize,_INTERRUPT_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNCALL	_SYSTEM_Initialize,_SPI1_Initialize
	FNCALL	_PIN_MANAGER_Initialize,_IO_RA5_SetInterruptHandler
	FNCALL	_INTERRUPT_Initialize,_INT_SetInterruptHandler
	FNCALL	_I2C2_Initialize,_I2C2_InterruptsEnable
	FNCALL	_EUSART2_Initialize,_EUSART2_FramingErrorCallbackRegister
	FNCALL	_EUSART2_Initialize,_EUSART2_OverrunErrorCallbackRegister
	FNCALL	_SRAM_write_bytes,_SRAM_deselect
	FNCALL	_SRAM_write_bytes,_SRAM_set_address
	FNCALL	_SRAM_write,_SRAM_deselect
	FNCALL	_SRAM_write,_SRAM_set_address
	FNCALL	_SRAM_read_bytes,_SRAM_deselect
	FNCALL	_SRAM_read_bytes,_SRAM_set_address
	FNCALL	_SRAM_read,_SRAM_deselect
	FNCALL	_SRAM_read,_SRAM_set_address
	FNCALL	_M95_write_bytes,_spi1_byte_exchange_hw
	FNCALL	_M95_read_bytes,_spi1_byte_exchange_hw
	FNCALL	_M95_init,_SPI1_Initialize
	FNCALL	_M95_init,_SPI1_Open
	FNCALL	_M95_init,_putch_hex
	FNCALL	_M95_init,_spi1_byte_exchange_hw
	FNCALL	_M95_init,_uart_putc
	FNCALL	_M95_init,_uart_puts
	FNCALL	_uart_puts,_uart_putc
	FNCALL	_putch_hex,_uart_putc
	FNCALL	_uart_putc,_EUSART2_IsTxReady
	FNCALL	_uart_putc,_EUSART2_Write
	FNCALL	_SPI1_Open,___wmul
	FNCALL	_SPI1_Initialize,_SPI1_RxCompleteCallbackRegister
	FNROOT	_main
	FNCALL	_INTERRUPT_InterruptManager,_EUSART2_ReceiveISR
	FNCALL	_INTERRUPT_InterruptManager,_EUSART2_TransmitISR
	FNCALL	_INTERRUPT_InterruptManager,_I2C2_ERROR_ISR
	FNCALL	_INTERRUPT_InterruptManager,_I2C2_ISR
	FNCALL	_INTERRUPT_InterruptManager,_INT_ISR
	FNCALL	_INTERRUPT_InterruptManager,_PIN_MANAGER_IOC
	FNCALL	_INTERRUPT_InterruptManager,_SPI1_ISR
	FNCALL	_PIN_MANAGER_IOC,_IO_RA5_ISR
	FNCALL	_IO_RA5_ISR,_IO_RA5_DefaultInterruptHandler
	FNCALL	_INT_ISR,_INT_CallBack
	FNCALL	_INT_CallBack,_INT_DefaultInterruptHandler
	FNCALL	_I2C2_ISR,_I2C2_EventHandler
	FNCALL	_I2C2_EventHandler,_I2C2_Close
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_ERROR
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_IDLE
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_NACK
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_RESET
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_RX
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_SEND_RD_ADDR
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_SEND_WR_ADDR
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_STOP
	FNCALL	_I2C2_EventHandler,_I2C2_EVENT_TX
	FNCALL	_I2C2_EventHandler,_I2C2_InterruptClear
	FNCALL	_I2C2_EventHandler,_I2C2_IsAddr
	FNCALL	_I2C2_EventHandler,_I2C2_IsData
	FNCALL	_I2C2_EventHandler,_I2C2_IsNack
	FNCALL	_I2C2_ERROR_ISR,_I2C2_ErrorEventHandler
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_ERROR
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_IDLE
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_NACK
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_RESET
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_RX
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_SEND_RD_ADDR
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_SEND_WR_ADDR
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_STOP
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_EVENT_TX
	FNCALL	_I2C2_ErrorEventHandler,_I2C2_ErrorInterruptClear
	FNCALL	_I2C2_EVENT_TX,_I2C2_DataTransmit
	FNCALL	_I2C2_EVENT_TX,_I2C2_EVENT_STOP
	FNCALL	_I2C2_EVENT_TX,_I2C2_RestartEnable
	FNCALL	_I2C2_EVENT_SEND_WR_ADDR,_I2C2_DataTransmit
	FNCALL	_I2C2_EVENT_SEND_RD_ADDR,_I2C2_DataTransmit
	FNCALL	_I2C2_EVENT_RX,_I2C2_AckSend
	FNCALL	_I2C2_EVENT_RX,_I2C2_DataReceive
	FNCALL	_I2C2_EVENT_RX,_I2C2_IsRxBufFull
	FNCALL	_I2C2_EVENT_RX,_I2C2_NackSend
	FNCALL	_I2C2_EVENT_RX,_I2C2_ReceiveEnable
	FNCALL	_I2C2_EVENT_RX,_I2C2_RestartDisable
	FNCALL	_I2C2_EVENT_NACK,_I2C2_EVENT_STOP
	FNCALL	_I2C2_EVENT_STOP,_I2C2_Close
	FNCALL	_I2C2_EVENT_STOP,_I2C2_StopSend
	FNCALL	_I2C2_Close,_I2C2_ErrorInterruptClear
	FNCALL	_I2C2_Close,_I2C2_InterruptClear
	FNCALL	_I2C2_Close,_I2C2_StatusFlagsClear
	FNCALL	_I2C2_EVENT_ERROR,_I2C2_EVENT_RESET
	FNCALL	_I2C2_EVENT_RESET,_I2C2_BusReset
	FNCALL	_EUSART2_ReceiveISR,_EUSART2_DefaultFramingErrorCallback
	FNCALL	_EUSART2_ReceiveISR,_EUSART2_DefaultOverrunErrorCallback
	FNCALL	_EUSART2_ReceiveISR,_onUartInput
	FNCALL	_onUartInput,_EUSART2_IsRxReady
	FNCALL	_onUartInput,_EUSART2_Read
	FNCALL	intlevel1,_INTERRUPT_InterruptManager
	global	intlevel1
	FNROOT	intlevel1
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"m95_eeprom.c"
	line	19

;initializer for _buf
	retlw	0FFh
	retlw	0FFh
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	53
_UART2:
	
	retlw	low(_EUSART2_Initialize)
	retlw	high(_EUSART2_Initialize)

	retlw	low(0)
	retlw	high(0)

	
	retlw	low(_EUSART2_Read)
	retlw	high(_EUSART2_Read)

	
	retlw	low(_EUSART2_Write)
	retlw	high(_EUSART2_Write)

	
	retlw	low(_EUSART2_IsRxReady)
	retlw	high(_EUSART2_IsRxReady)

	
	retlw	low(_EUSART2_IsTxReady)
	retlw	high(_EUSART2_IsTxReady)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	
	retlw	low(_EUSART2_RxCompleteCallbackRegister)
	retlw	high(_EUSART2_RxCompleteCallbackRegister)

	retlw	low(0)
	retlw	high(0)

	
	retlw	low(_EUSART2_FramingErrorCallbackRegister)
	retlw	high(_EUSART2_FramingErrorCallbackRegister)

	
	retlw	low(_EUSART2_OverrunErrorCallbackRegister)
	retlw	high(_EUSART2_OverrunErrorCallbackRegister)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	global __end_of_UART2
__end_of_UART2:
psect	stringtext2,class=STRCODE,delta=2,noexec
global __pstringtext2
__pstringtext2:
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	38
_SPI1_Host:
	
	retlw	low(_SPI1_Initialize)
	retlw	high(_SPI1_Initialize)

	retlw	low(0)
	retlw	high(0)

	
	retlw	low(_SPI1_Open)
	retlw	high(_SPI1_Open)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	
	retlw	low(_SPI1_RxCompleteCallbackRegister)
	retlw	high(_SPI1_RxCompleteCallbackRegister)

	retlw	low(0)
	retlw	high(0)

	global __end_of_SPI1_Host
__end_of_SPI1_Host:
	global	_spi1_configuration
psect	stringtext3,class=STRCODE,delta=2,noexec
global __pstringtext3
__pstringtext3:
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	63
_spi1_configuration:
	retlw	low(0)
	retlw	0Ah
	retlw	010h
	retlw	03Fh
	retlw	0
	retlw	064h
	retlw	low(0)
	retlw	010h
	retlw	01h
	retlw	0
	retlw	low(0)
	retlw	low(0)
	retlw	010h
	retlw	07h
	retlw	0
	retlw	040h
	retlw	010h
	retlw	010h
	retlw	07h
	retlw	0
	retlw	low(0)
	retlw	010h
	retlw	010h
	retlw	07h
	retlw	0
	global __end_of_spi1_configuration
__end_of_spi1_configuration:
psect	stringtext4,class=STRCODE,delta=2,noexec
global __pstringtext4
__pstringtext4:
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	80
_I2C2_Host:
	
	retlw	low(_I2C2_Initialize)
	retlw	high(_I2C2_Initialize)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	global __end_of_I2C2_Host
__end_of_I2C2_Host:
	global	_i2c2_eventTable
psect	stringtext5,class=STRCODE,delta=2,noexec
global __pstringtext5
__pstringtext5:
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	99
_i2c2_eventTable:
	
	retlw	low(_I2C2_EVENT_IDLE)
	retlw	high(_I2C2_EVENT_IDLE)

	
	retlw	low(_I2C2_EVENT_SEND_RD_ADDR)
	retlw	high(_I2C2_EVENT_SEND_RD_ADDR)

	
	retlw	low(_I2C2_EVENT_SEND_WR_ADDR)
	retlw	high(_I2C2_EVENT_SEND_WR_ADDR)

	
	retlw	low(_I2C2_EVENT_TX)
	retlw	high(_I2C2_EVENT_TX)

	
	retlw	low(_I2C2_EVENT_RX)
	retlw	high(_I2C2_EVENT_RX)

	
	retlw	low(_I2C2_EVENT_NACK)
	retlw	high(_I2C2_EVENT_NACK)

	
	retlw	low(_I2C2_EVENT_ERROR)
	retlw	high(_I2C2_EVENT_ERROR)

	
	retlw	low(_I2C2_EVENT_STOP)
	retlw	high(_I2C2_EVENT_STOP)

	
	retlw	low(_I2C2_EVENT_RESET)
	retlw	high(_I2C2_EVENT_RESET)

	global __end_of_i2c2_eventTable
__end_of_i2c2_eventTable:
	global	_hex_char
psect	stringtext6,class=STRCODE,delta=2,noexec
global __pstringtext6
__pstringtext6:
	file	"conio.c"
	line	3
_hex_char:
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	041h
	retlw	042h
	retlw	043h
	retlw	044h
	retlw	045h
	retlw	046h
	retlw	low(0)
	global __end_of_hex_char
__end_of_hex_char:
	global	_spi1_configuration
	global	_i2c2_eventTable
	global	_hex_char
	global	_spi1_descriptor
	global	_i2c2Status
	global	_INT_InterruptHandler
	global	_EUSART2_OverrunErrorHandler
	global	_EUSART2_FramingErrorHandler
	global	_EUSART2_RxCompleteInterruptHandler
	global	_eusart2RxCount
	global	_eusart2RxTail
	global	_eusart2RxHead
	global	_eusart2TxBufferRemaining
	global	_eusart2TxTail
	global	_eusart2TxHead
	global	_message_ready
	global	_rx_index
	global	_eusart2RxStatusBuffer
	global	_eusart2RxBuffer
	global	_eusart2TxBuffer
	global	_IO_RA5_InterruptHandler
	global	_EUSART2_RxInterruptHandler
	global	_EUSART2_TxCompleteInterruptHandler
	global	_EUSART2_TxInterruptHandler
	global	_eusart2RxLastError
	global	_I2C2_Callback
	global	_SPI1_RxCompleteCallback
	global	_cmd_buffer
	global	_eeprom_sram_io_buffer
	global	_rx_buffer
	global	_TRISD
_TRISD	set	0x15
	global	_TRISB
_TRISB	set	0x13
	global	_TRISA
_TRISA	set	0x12
	global	_LATD
_LATD	set	0x1B
	global	_LATB
_LATB	set	0x19
	global	_LATA
_LATA	set	0x18
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PORTF
_PORTF	set	0x11
	global	_LATF
_LATF	set	0x1D
	global	_TRISDbits
_TRISDbits	set	0x15
	global	_TRISE
_TRISE	set	0x16
	global	_TRISC
_TRISC	set	0x14
	global	_LATE
_LATE	set	0x1C
	global	_LATC
_LATC	set	0x1A
	global	_LATDbits
_LATDbits	set	0x1B
	global	_TRISF
_TRISF	set	0x17
	global	_TRISBbits
_TRISBbits	set	0x13
	global	_TRISAbits
_TRISAbits	set	0x12
	global	_LATAbits
_LATAbits	set	0x18
	global	_SSP2CON2bits
_SSP2CON2bits	set	0x19B
	global	_SSP2BUF
_SSP2BUF	set	0x196
	global	_SSP2STATbits
_SSP2STATbits	set	0x199
	global	_SSP2CON1bits
_SSP2CON1bits	set	0x19A
	global	_SSP2ADD
_SSP2ADD	set	0x197
	global	_SSP2CON3
_SSP2CON3	set	0x19C
	global	_SSP2CON2
_SSP2CON2	set	0x19B
	global	_SSP2CON1
_SSP2CON1	set	0x19A
	global	_SSP2STAT
_SSP2STAT	set	0x199
	global	_SSP1CON1bits
_SSP1CON1bits	set	0x190
	global	_SSP1ADD
_SSP1ADD	set	0x18D
	global	_SSP1CON3
_SSP1CON3	set	0x192
	global	_SSP1CON1
_SSP1CON1	set	0x190
	global	_SSP1STAT
_SSP1STAT	set	0x18F
	global	_SSP1BUF
_SSP1BUF	set	0x18C
	global	_PIE0bits
_PIE0bits	set	0x716
	global	_PIR0bits
_PIR0bits	set	0x70C
	global	_PIE3bits
_PIE3bits	set	0x719
	global	_PIR3bits
_PIR3bits	set	0x70F
	global	_OSCSTATbits
_OSCSTATbits	set	0x890
	global	_OSCTUNE
_OSCTUNE	set	0x892
	global	_OSCFRQ
_OSCFRQ	set	0x893
	global	_OSCEN
_OSCEN	set	0x891
	global	_OSCCON3
_OSCCON3	set	0x88F
	global	_OSCCON1
_OSCCON1	set	0x88D
	global	_TX2REG
_TX2REG	set	0xA1A
	global	_RC2REG
_RC2REG	set	0xA19
	global	_BAUD2CONbits
_BAUD2CONbits	set	0xA1F
	global	_TX2STAbits
_TX2STAbits	set	0xA1E
	global	_RC2STAbits
_RC2STAbits	set	0xA1D
	global	_SP2BRGH
_SP2BRGH	set	0xA1C
	global	_SP2BRGL
_SP2BRGL	set	0xA1B
	global	_TX2STA
_TX2STA	set	0xA1E
	global	_RC2STA
_RC2STA	set	0xA1D
	global	_BAUD2CON
_BAUD2CON	set	0xA1F
	global	_INLVLF
_INLVLF	set	0x1E54
	global	_SLRCONF
_SLRCONF	set	0x1E53
	global	_ODCONF
_ODCONF	set	0x1E52
	global	_WPUF
_WPUF	set	0x1E51
	global	_ANSELF
_ANSELF	set	0x1E50
	global	_SSP2DATPPS
_SSP2DATPPS	set	0x1EC9
	global	_SSP2CLKPPS
_SSP2CLKPPS	set	0x1EC8
	global	_SSP1CLKPPS
_SSP1CLKPPS	set	0x1EC5
	global	_INTPPS
_INTPPS	set	0x1E90
	global	_RX2DTPPS
_RX2DTPPS	set	0x1ECD
	global	_SSP1DATPPS
_SSP1DATPPS	set	0x1EC6
	global	_IOCAFbits
_IOCAFbits	set	0x1F3F
	global	_IOCEF
_IOCEF	set	0x1F6B
	global	_IOCEN
_IOCEN	set	0x1F6A
	global	_IOCEP
_IOCEP	set	0x1F69
	global	_IOCCF
_IOCCF	set	0x1F55
	global	_IOCCN
_IOCCN	set	0x1F54
	global	_IOCCP
_IOCCP	set	0x1F53
	global	_IOCBF
_IOCBF	set	0x1F4A
	global	_IOCBN
_IOCBN	set	0x1F49
	global	_IOCBP
_IOCBP	set	0x1F48
	global	_IOCAF
_IOCAF	set	0x1F3F
	global	_IOCAN
_IOCAN	set	0x1F3E
	global	_IOCAP
_IOCAP	set	0x1F3D
	global	_RB4PPS
_RB4PPS	set	0x1F1C
	global	_RB3PPS
_RB3PPS	set	0x1F1B
	global	_RB0PPS
_RB0PPS	set	0x1F18
	global	_RB5PPS
_RB5PPS	set	0x1F1D
	global	_RB2PPS
_RB2PPS	set	0x1F1A
	global	_INLVLE
_INLVLE	set	0x1F68
	global	_INLVLD
_INLVLD	set	0x1F5D
	global	_INLVLC
_INLVLC	set	0x1F52
	global	_INLVLB
_INLVLB	set	0x1F47
	global	_INLVLA
_INLVLA	set	0x1F3C
	global	_SLRCONE
_SLRCONE	set	0x1F67
	global	_SLRCOND
_SLRCOND	set	0x1F5C
	global	_SLRCONC
_SLRCONC	set	0x1F51
	global	_SLRCONB
_SLRCONB	set	0x1F46
	global	_SLRCONA
_SLRCONA	set	0x1F3B
	global	_ODCONE
_ODCONE	set	0x1F66
	global	_ODCOND
_ODCOND	set	0x1F5B
	global	_ODCONC
_ODCONC	set	0x1F50
	global	_ODCONB
_ODCONB	set	0x1F45
	global	_ODCONA
_ODCONA	set	0x1F3A
	global	_WPUE
_WPUE	set	0x1F65
	global	_WPUD
_WPUD	set	0x1F5A
	global	_WPUC
_WPUC	set	0x1F4F
	global	_WPUB
_WPUB	set	0x1F44
	global	_WPUA
_WPUA	set	0x1F39
	global	_ANSELE
_ANSELE	set	0x1F64
	global	_ANSELD
_ANSELD	set	0x1F59
	global	_ANSELC
_ANSELC	set	0x1F4E
	global	_ANSELB
_ANSELB	set	0x1F43
	global	_ANSELA
_ANSELA	set	0x1F38
	
STR_5:	
	retlw	10
	retlw	13
	retlw	10
	retlw	13
	retlw	10
	retlw	13
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	10
	retlw	13
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	47	;'/'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	90	;'Z'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	
STR_11:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	58	;':'
	retlw	41	;')'
	retlw	10
	retlw	13
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	85	;'U'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	74	;'J'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	72	;'H'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
STR_6:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	58	;':'
	retlw	40	;'('
	retlw	10
	retlw	13
	retlw	0
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
STR_7:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	0
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
STR_9:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	70	;'F'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	0
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
STR_2:	
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	0
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
	
STR_3:	
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	0
psect	stringtext13,class=STRCODE,delta=2,noexec
global __pstringtext13
__pstringtext13:
	
STR_39:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	95	;'_'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	81	;'Q'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext14,class=STRCODE,delta=2,noexec
global __pstringtext14
__pstringtext14:
	
STR_22:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext15,class=STRCODE,delta=2,noexec
global __pstringtext15
__pstringtext15:
	
STR_43:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	75	;'K'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	87	;'W'
	retlw	78	;'N'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	68	;'D'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext16,class=STRCODE,delta=2,noexec
global __pstringtext16
__pstringtext16:
	
STR_17:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext17,class=STRCODE,delta=2,noexec
global __pstringtext17
__pstringtext17:
	
STR_1:	
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext18,class=STRCODE,delta=2,noexec
global __pstringtext18
__pstringtext18:
	
STR_29:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext19,class=STRCODE,delta=2,noexec
global __pstringtext19
__pstringtext19:
	
STR_36:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	95	;'_'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext20,class=STRCODE,delta=2,noexec
global __pstringtext20
__pstringtext20:
	
STR_19:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext21,class=STRCODE,delta=2,noexec
global __pstringtext21
__pstringtext21:
	
STR_33:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext22,class=STRCODE,delta=2,noexec
global __pstringtext22
__pstringtext22:
	
STR_23:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	0
psect	stringtext23,class=STRCODE,delta=2,noexec
global __pstringtext23
__pstringtext23:
	
STR_27:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	95	;'_'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext24,class=STRCODE,delta=2,noexec
global __pstringtext24
__pstringtext24:
	
STR_37:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext25,class=STRCODE,delta=2,noexec
global __pstringtext25
__pstringtext25:
	
STR_30:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext26,class=STRCODE,delta=2,noexec
global __pstringtext26
__pstringtext26:
	
STR_16:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	95	;'_'
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext27,class=STRCODE,delta=2,noexec
global __pstringtext27
__pstringtext27:
	
STR_15:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	66	;'B'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	95	;'_'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	68	;'D'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext28,class=STRCODE,delta=2,noexec
global __pstringtext28
__pstringtext28:
	
STR_28:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	68	;'D'
	retlw	95	;'_'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	88	;'X'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext29,class=STRCODE,delta=2,noexec
global __pstringtext29
__pstringtext29:
	
STR_34:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	95	;'_'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	0
psect	stringtext30,class=STRCODE,delta=2,noexec
global __pstringtext30
__pstringtext30:
	
STR_38:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	95	;'_'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	81	;'Q'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext31,class=STRCODE,delta=2,noexec
global __pstringtext31
__pstringtext31:
	
STR_12:	
	retlw	10
	retlw	13
	retlw	86	;'V'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext32,class=STRCODE,delta=2,noexec
global __pstringtext32
__pstringtext32:
	
STR_40:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	58	;':'
	retlw	0
psect	stringtext33,class=STRCODE,delta=2,noexec
global __pstringtext33
__pstringtext33:
	
STR_14:	
	retlw	10
	retlw	13
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	89	;'Y'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext34,class=STRCODE,delta=2,noexec
global __pstringtext34
__pstringtext34:
	
STR_13:	
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	0
psect	stringtext35,class=STRCODE,delta=2,noexec
global __pstringtext35
__pstringtext35:
STR_10	equ	STR_9+0
STR_8	equ	STR_7+0
STR_41	equ	STR_13+0
STR_21	equ	STR_15+0
STR_25	equ	STR_15+0
STR_32	equ	STR_15+0
STR_26	equ	STR_16+0
STR_18	equ	STR_6+29
STR_20	equ	STR_6+29
STR_24	equ	STR_6+29
STR_31	equ	STR_6+29
STR_35	equ	STR_6+29
STR_42	equ	STR_6+29
STR_4	equ	STR_1+15
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = always
	config default_idlocs  = always
	config FEXTOSC = "OFF"
	config RSTOSC = "HFINT32"
	config CLKOUTEN = "OFF"
	config CSWEN = "ON"
	config FCMEN = "ON"
	config MCLRE = "ON"
	config LPBOREN = "OFF"
	config BOREN = "ON"
	config BORV = "LO"
	config ZCD = "OFF"
	config PPS1WAY = "ON"
	config STVREN = "ON"
	config WDTCPS = "WDTCPS_31"
	config WDTE = "OFF"
	config WDTCWS = "WDTCWS_7"
	config WDTCCS = "SC"
	config BBSIZE = "BB512"
	config BBEN = "OFF"
	config SAFEN = "OFF"
	config WRTAPP = "OFF"
	config WRTB = "OFF"
	config WRTC = "OFF"
	config WRTSAF = "OFF"
	config LVP = "ON"
	config CP = "OFF"
	file	"main.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_spi1_descriptor:
       ds      5

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_i2c2Status:
       ds      14

_INT_InterruptHandler:
       ds      2

_EUSART2_OverrunErrorHandler:
       ds      2

_EUSART2_FramingErrorHandler:
       ds      2

_EUSART2_RxCompleteInterruptHandler:
       ds      2

_eusart2RxCount:
       ds      1

_eusart2RxTail:
       ds      1

_eusart2RxHead:
       ds      1

_eusart2TxBufferRemaining:
       ds      1

_eusart2TxTail:
       ds      1

_eusart2TxHead:
       ds      1

_message_ready:
       ds      1

_rx_index:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_eusart2RxStatusBuffer:
       ds      16

_eusart2RxBuffer:
       ds      8

_eusart2TxBuffer:
       ds      8

_IO_RA5_InterruptHandler:
       ds      2

_EUSART2_RxInterruptHandler:
       ds      2

_EUSART2_TxCompleteInterruptHandler:
       ds      2

_EUSART2_TxInterruptHandler:
       ds      2

_eusart2RxLastError:
       ds      2

_I2C2_Callback:
       ds      2

_SPI1_RxCompleteCallback:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"m95_eeprom.c"
	line	19
_buf:
       ds      2

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_cmd_buffer:
       ds      70

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_eeprom_sram_io_buffer:
       ds      64

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_rx_buffer:
       ds      70

	file	"main.s"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlb 1	; select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	01Eh
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	02Eh
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	046h
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram0
; Clear objects allocated to BANK4
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK4
	movlw	low(__pbssBANK4)
	movwf	fsr0l
	movlw	high(__pbssBANK4)
	movwf	fsr0h
	movlw	046h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@addr
main@addr:	; 2 bytes @ 0x0
	ds	2
	global	main@bytes
main@bytes:	; 2 bytes @ 0x2
	ds	2
	global	main@addr_502
main@addr_502:	; 2 bytes @ 0x4
	ds	2
	global	main@addr_510
main@addr_510:	; 2 bytes @ 0x6
	ds	2
	global	main@bytes_515
main@bytes_515:	; 2 bytes @ 0x8
	ds	2
	global	main@addr_522
main@addr_522:	; 2 bytes @ 0xA
	ds	2
	global	main@datalen
main@datalen:	; 2 bytes @ 0xC
	ds	2
	global	main@retval_516
main@retval_516:	; 2 bytes @ 0xE
	ds	2
	global	main@retval
main@retval:	; 1 bytes @ 0x10
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x11
	ds	2
	global	main@i_527
main@i_527:	; 2 bytes @ 0x13
	ds	2
	global	main@nbytes
main@nbytes:	; 2 bytes @ 0x15
	ds	2
	global	main@nbytes_523
main@nbytes_523:	; 2 bytes @ 0x17
	ds	2
	global	main@datalen_511
main@datalen_511:	; 2 bytes @ 0x19
	ds	2
	global	main@len
main@len:	; 2 bytes @ 0x1B
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SPI1_Initialize:	; 1 bytes @ 0x0
?_uart_putc:	; 1 bytes @ 0x0
?_putch_hex:	; 1 bytes @ 0x0
?_SRAM_deselect:	; 1 bytes @ 0x0
?_EUSART2_IsRxReady:	; 1 bytes @ 0x0
?_EUSART2_Read:	; 1 bytes @ 0x0
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_EUSART2_ReceiveInterruptEnable:	; 1 bytes @ 0x0
?_I2C2_Initialize:	; 1 bytes @ 0x0
?_I2C2_EVENT_IDLE:	; 1 bytes @ 0x0
?_I2C2_EVENT_SEND_RD_ADDR:	; 1 bytes @ 0x0
?_I2C2_EVENT_SEND_WR_ADDR:	; 1 bytes @ 0x0
?_I2C2_EVENT_TX:	; 1 bytes @ 0x0
?_I2C2_EVENT_RX:	; 1 bytes @ 0x0
?_I2C2_EVENT_NACK:	; 1 bytes @ 0x0
?_I2C2_EVENT_ERROR:	; 1 bytes @ 0x0
?_I2C2_EVENT_STOP:	; 1 bytes @ 0x0
?_I2C2_EVENT_RESET:	; 1 bytes @ 0x0
?_I2C2_InterruptsEnable:	; 1 bytes @ 0x0
?_I2C2_EventHandler:	; 1 bytes @ 0x0
?_I2C2_ErrorEventHandler:	; 1 bytes @ 0x0
?_I2C2_InterruptClear:	; 1 bytes @ 0x0
?_I2C2_ErrorInterruptClear:	; 1 bytes @ 0x0
?_I2C2_StatusFlagsClear:	; 1 bytes @ 0x0
?_I2C2_IsAddr:	; 1 bytes @ 0x0
?_I2C2_IsNack:	; 1 bytes @ 0x0
?_I2C2_IsData:	; 1 bytes @ 0x0
?_I2C2_DataTransmit:	; 1 bytes @ 0x0
?_I2C2_RestartEnable:	; 1 bytes @ 0x0
?_I2C2_IsRxBufFull:	; 1 bytes @ 0x0
?_I2C2_DataReceive:	; 1 bytes @ 0x0
?_I2C2_AckSend:	; 1 bytes @ 0x0
?_I2C2_RestartDisable:	; 1 bytes @ 0x0
?_I2C2_NackSend:	; 1 bytes @ 0x0
?_I2C2_ReceiveEnable:	; 1 bytes @ 0x0
?_I2C2_StopSend:	; 1 bytes @ 0x0
?_I2C2_BusReset:	; 1 bytes @ 0x0
?_EUSART2_Initialize:	; 1 bytes @ 0x0
?_EUSART2_IsTxReady:	; 1 bytes @ 0x0
?_EUSART2_ReceiveISR:	; 1 bytes @ 0x0
?_EUSART2_TransmitISR:	; 1 bytes @ 0x0
?_EUSART2_DefaultFramingErrorCallback:	; 1 bytes @ 0x0
?_EUSART2_DefaultOverrunErrorCallback:	; 1 bytes @ 0x0
?_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_Initialize:	; 1 bytes @ 0x0
?_INT_DefaultInterruptHandler:	; 1 bytes @ 0x0
?_INT_ISR:	; 1 bytes @ 0x0
?_PIN_MANAGER_IOC:	; 1 bytes @ 0x0
?_INT_CallBack:	; 1 bytes @ 0x0
?_IO_RA5_DefaultInterruptHandler:	; 1 bytes @ 0x0
?_IO_RA5_ISR:	; 1 bytes @ 0x0
?_spi1_byte_exchange_hw:	; 1 bytes @ 0x0
?_SRAM_init:	; 1 bytes @ 0x0
?_cpu6502_reset:	; 1 bytes @ 0x0
?_cpu6502_unreset:	; 1 bytes @ 0x0
?_cpu6502_interrupt:	; 1 bytes @ 0x0
?_cpu6502_uninterrupt:	; 1 bytes @ 0x0
?_onUartInput:	; 1 bytes @ 0x0
?_SPI1_ISR:	; 1 bytes @ 0x0
?_I2C2_ISR:	; 1 bytes @ 0x0
?_I2C2_ERROR_ISR:	; 1 bytes @ 0x0
?_I2C2_Close:	; 1 bytes @ 0x0
?_CLOCK_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_InterruptManager:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	SPI1_ISR@dataToWrite
SPI1_ISR@dataToWrite:	; 1 bytes @ 0x0
	global	I2C2_EVENT_RX@retEventState
I2C2_EVENT_RX@retEventState:	; 1 bytes @ 0x0
	global	I2C2_EVENT_NACK@retEventState
I2C2_EVENT_NACK@retEventState:	; 1 bytes @ 0x0
	global	I2C2_EVENT_ERROR@retEventState
I2C2_EVENT_ERROR@retEventState:	; 1 bytes @ 0x0
	global	I2C2_DataTransmit@data
I2C2_DataTransmit@data:	; 1 bytes @ 0x0
	global	EUSART2_Read@tempRxTail
EUSART2_Read@tempRxTail:	; 1 bytes @ 0x0
	global	EUSART2_TransmitISR@tempTxTail
EUSART2_TransmitISR@tempTxTail:	; 1 bytes @ 0x0
??_EUSART2_IsRxReady:	; 1 bytes @ 0x0
??_EUSART2_Read:	; 1 bytes @ 0x0
??_I2C2_EVENT_IDLE:	; 1 bytes @ 0x0
??_I2C2_EVENT_SEND_RD_ADDR:	; 1 bytes @ 0x0
??_I2C2_EVENT_RX:	; 1 bytes @ 0x0
??_I2C2_EVENT_NACK:	; 1 bytes @ 0x0
??_I2C2_EVENT_ERROR:	; 1 bytes @ 0x0
??_I2C2_EVENT_STOP:	; 1 bytes @ 0x0
??_I2C2_EVENT_RESET:	; 1 bytes @ 0x0
??_I2C2_InterruptClear:	; 1 bytes @ 0x0
??_I2C2_ErrorInterruptClear:	; 1 bytes @ 0x0
??_I2C2_StatusFlagsClear:	; 1 bytes @ 0x0
??_I2C2_IsAddr:	; 1 bytes @ 0x0
??_I2C2_IsNack:	; 1 bytes @ 0x0
??_I2C2_IsData:	; 1 bytes @ 0x0
??_I2C2_DataTransmit:	; 1 bytes @ 0x0
??_I2C2_RestartEnable:	; 1 bytes @ 0x0
??_I2C2_IsRxBufFull:	; 1 bytes @ 0x0
??_I2C2_DataReceive:	; 1 bytes @ 0x0
??_I2C2_AckSend:	; 1 bytes @ 0x0
??_I2C2_RestartDisable:	; 1 bytes @ 0x0
??_I2C2_NackSend:	; 1 bytes @ 0x0
??_I2C2_ReceiveEnable:	; 1 bytes @ 0x0
??_I2C2_StopSend:	; 1 bytes @ 0x0
??_I2C2_BusReset:	; 1 bytes @ 0x0
??_EUSART2_TransmitISR:	; 1 bytes @ 0x0
??_EUSART2_DefaultFramingErrorCallback:	; 1 bytes @ 0x0
??_EUSART2_DefaultOverrunErrorCallback:	; 1 bytes @ 0x0
??_INT_DefaultInterruptHandler:	; 1 bytes @ 0x0
??_INT_ISR:	; 1 bytes @ 0x0
??_PIN_MANAGER_IOC:	; 1 bytes @ 0x0
??_INT_CallBack:	; 1 bytes @ 0x0
??_IO_RA5_DefaultInterruptHandler:	; 1 bytes @ 0x0
??_IO_RA5_ISR:	; 1 bytes @ 0x0
??_SPI1_ISR:	; 1 bytes @ 0x0
??_I2C2_Close:	; 1 bytes @ 0x0
	ds	1
	global	I2C2_EVENT_TX@retEventState
I2C2_EVENT_TX@retEventState:	; 1 bytes @ 0x1
	global	EUSART2_Read@readValue
EUSART2_Read@readValue:	; 1 bytes @ 0x1
??_I2C2_EVENT_SEND_WR_ADDR:	; 1 bytes @ 0x1
??_I2C2_EVENT_TX:	; 1 bytes @ 0x1
	ds	1
	global	onUartInput@received
onUartInput@received:	; 1 bytes @ 0x2
??_I2C2_EventHandler:	; 1 bytes @ 0x2
??_I2C2_ErrorEventHandler:	; 1 bytes @ 0x2
??_onUartInput:	; 1 bytes @ 0x2
	ds	1
	global	EUSART2_ReceiveISR@regValue
EUSART2_ReceiveISR@regValue:	; 1 bytes @ 0x3
??_EUSART2_ReceiveISR:	; 1 bytes @ 0x3
	ds	1
	global	EUSART2_ReceiveISR@tempRxHead
EUSART2_ReceiveISR@tempRxHead:	; 1 bytes @ 0x4
??_I2C2_ISR:	; 1 bytes @ 0x4
??_I2C2_ERROR_ISR:	; 1 bytes @ 0x4
	ds	1
??_INTERRUPT_InterruptManager:	; 1 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_EUSART2_RxCompleteCallbackRegister:	; 1 bytes @ 0x0
?_strcpy:	; 1 bytes @ 0x0
?_SPI1_RxCompleteCallbackRegister:	; 1 bytes @ 0x0
?_EUSART2_Write:	; 1 bytes @ 0x0
?_EUSART2_FramingErrorCallbackRegister:	; 1 bytes @ 0x0
?_EUSART2_OverrunErrorCallbackRegister:	; 1 bytes @ 0x0
?_INT_SetInterruptHandler:	; 1 bytes @ 0x0
?_IO_RA5_SetInterruptHandler:	; 1 bytes @ 0x0
?_SRAM_set_address:	; 1 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?_hex2val
?_hex2val:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	spi1_byte_exchange_hw@data
spi1_byte_exchange_hw@data:	; 1 bytes @ 0x0
	global	EUSART2_Write@txData
EUSART2_Write@txData:	; 1 bytes @ 0x0
	global	strcpy@dest
strcpy@dest:	; 1 bytes @ 0x0
	global	strlen@s
strlen@s:	; 1 bytes @ 0x0
	global	SRAM_set_address@addr
SRAM_set_address@addr:	; 2 bytes @ 0x0
	global	SPI1_RxCompleteCallbackRegister@CallbackHandler
SPI1_RxCompleteCallbackRegister@CallbackHandler:	; 2 bytes @ 0x0
	global	EUSART2_FramingErrorCallbackRegister@callbackHandler
EUSART2_FramingErrorCallbackRegister@callbackHandler:	; 2 bytes @ 0x0
	global	EUSART2_OverrunErrorCallbackRegister@callbackHandler
EUSART2_OverrunErrorCallbackRegister@callbackHandler:	; 2 bytes @ 0x0
	global	EUSART2_RxCompleteCallbackRegister@callbackHandler
EUSART2_RxCompleteCallbackRegister@callbackHandler:	; 2 bytes @ 0x0
	global	INT_SetInterruptHandler@InterruptHandler
INT_SetInterruptHandler@InterruptHandler:	; 2 bytes @ 0x0
	global	IO_RA5_SetInterruptHandler@InterruptHandler
IO_RA5_SetInterruptHandler@InterruptHandler:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
??_SRAM_deselect:	; 1 bytes @ 0x0
??_EUSART2_ReceiveInterruptEnable:	; 1 bytes @ 0x0
??_I2C2_Initialize:	; 1 bytes @ 0x0
??_I2C2_InterruptsEnable:	; 1 bytes @ 0x0
??_EUSART2_IsTxReady:	; 1 bytes @ 0x0
??_spi1_byte_exchange_hw:	; 1 bytes @ 0x0
??_SRAM_init:	; 1 bytes @ 0x0
??_cpu6502_reset:	; 1 bytes @ 0x0
??_cpu6502_unreset:	; 1 bytes @ 0x0
??_cpu6502_interrupt:	; 1 bytes @ 0x0
??_cpu6502_uninterrupt:	; 1 bytes @ 0x0
??_CLOCK_Initialize:	; 1 bytes @ 0x0
	ds	1
	global	spi1_byte_exchange_hw@received
spi1_byte_exchange_hw@received:	; 1 bytes @ 0x1
	global	EUSART2_Write@tempTxHead
EUSART2_Write@tempTxHead:	; 1 bytes @ 0x1
	global	strcpy@src
strcpy@src:	; 1 bytes @ 0x1
??_EUSART2_Write:	; 1 bytes @ 0x1
	ds	1
	global	?_M95_read_bytes
?_M95_read_bytes:	; 2 bytes @ 0x2
	global	?_M95_write_bytes
?_M95_write_bytes:	; 2 bytes @ 0x2
	global	hex2val@c
hex2val@c:	; 1 bytes @ 0x2
	global	uart_putc@c
uart_putc@c:	; 1 bytes @ 0x2
	global	strcpy@d
strcpy@d:	; 1 bytes @ 0x2
	global	strlen@a
strlen@a:	; 1 bytes @ 0x2
	global	M95_read_bytes@addr
M95_read_bytes@addr:	; 2 bytes @ 0x2
	global	M95_write_bytes@addr
M95_write_bytes@addr:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
??_SPI1_Initialize:	; 1 bytes @ 0x2
??_uart_putc:	; 1 bytes @ 0x2
??_SYSTEM_Initialize:	; 1 bytes @ 0x2
??_EUSART2_RxCompleteCallbackRegister:	; 1 bytes @ 0x2
??_strcpy:	; 1 bytes @ 0x2
??_strlen:	; 1 bytes @ 0x2
??_SPI1_RxCompleteCallbackRegister:	; 1 bytes @ 0x2
??_EUSART2_Initialize:	; 1 bytes @ 0x2
??_EUSART2_FramingErrorCallbackRegister:	; 1 bytes @ 0x2
??_EUSART2_OverrunErrorCallbackRegister:	; 1 bytes @ 0x2
??_PIN_MANAGER_Initialize:	; 1 bytes @ 0x2
??_INTERRUPT_Initialize:	; 1 bytes @ 0x2
??_INT_SetInterruptHandler:	; 1 bytes @ 0x2
??_IO_RA5_SetInterruptHandler:	; 1 bytes @ 0x2
??_SRAM_set_address:	; 1 bytes @ 0x2
??_hex2val:	; 1 bytes @ 0x2
	ds	1
?_uart_puts:	; 1 bytes @ 0x3
	global	?_hexstr_to_bytes
?_hexstr_to_bytes:	; 2 bytes @ 0x3
	global	?_hexstr_to_uint
?_hexstr_to_uint:	; 2 bytes @ 0x3
	global	hexstr_to_bytes@str
hexstr_to_bytes@str:	; 1 bytes @ 0x3
	global	hexstr_to_uint@str
hexstr_to_uint@str:	; 1 bytes @ 0x3
	global	uart_puts@s
uart_puts@s:	; 2 bytes @ 0x3
??_putch_hex:	; 1 bytes @ 0x3
	ds	1
	global	putch_hex@byte
putch_hex@byte:	; 1 bytes @ 0x4
	global	M95_read_bytes@num_bytes
M95_read_bytes@num_bytes:	; 2 bytes @ 0x4
	global	M95_write_bytes@num_bytes
M95_write_bytes@num_bytes:	; 2 bytes @ 0x4
	global	hexstr_to_bytes@len
hexstr_to_bytes@len:	; 2 bytes @ 0x4
	global	hexstr_to_uint@digits
hexstr_to_uint@digits:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
	ds	1
?_SRAM_read:	; 1 bytes @ 0x5
?_SRAM_write:	; 1 bytes @ 0x5
	global	?_SRAM_write_bytes
?_SRAM_write_bytes:	; 2 bytes @ 0x5
	global	?_SRAM_read_bytes
?_SRAM_read_bytes:	; 2 bytes @ 0x5
	global	SRAM_read@addr
SRAM_read@addr:	; 2 bytes @ 0x5
	global	SRAM_write@addr
SRAM_write@addr:	; 2 bytes @ 0x5
	global	SRAM_write_bytes@addr
SRAM_write_bytes@addr:	; 4 bytes @ 0x5
	global	SRAM_read_bytes@addr
SRAM_read_bytes@addr:	; 4 bytes @ 0x5
??_uart_puts:	; 1 bytes @ 0x5
	ds	1
?_SPI1_Open:	; 1 bytes @ 0x6
	global	M95_read_bytes@buf
M95_read_bytes@buf:	; 1 bytes @ 0x6
	global	M95_write_bytes@buf
M95_write_bytes@buf:	; 1 bytes @ 0x6
	global	hexstr_to_bytes@out
hexstr_to_bytes@out:	; 1 bytes @ 0x6
	global	SPI1_Open@spiConfigIndex
SPI1_Open@spiConfigIndex:	; 1 bytes @ 0x6
??_hexstr_to_uint:	; 1 bytes @ 0x6
	ds	1
	global	SRAM_read@data
SRAM_read@data:	; 1 bytes @ 0x7
	global	SRAM_write@data
SRAM_write@data:	; 1 bytes @ 0x7
	global	hexstr_to_bytes@maxout
hexstr_to_bytes@maxout:	; 2 bytes @ 0x7
??_SPI1_Open:	; 1 bytes @ 0x7
??_M95_read_bytes:	; 1 bytes @ 0x7
??_M95_write_bytes:	; 1 bytes @ 0x7
??_SRAM_read:	; 1 bytes @ 0x7
	ds	1
	global	M95_read_bytes@data
M95_read_bytes@data:	; 1 bytes @ 0x8
	global	M95_write_bytes@page_offset
M95_write_bytes@page_offset:	; 2 bytes @ 0x8
	global	hexstr_to_uint@v
hexstr_to_uint@v:	; 2 bytes @ 0x8
??_SRAM_write:	; 1 bytes @ 0x8
	ds	1
	global	SPI1_Open@returnValue
SPI1_Open@returnValue:	; 1 bytes @ 0x9
	global	M95_read_bytes@i
M95_read_bytes@i:	; 2 bytes @ 0x9
	global	SRAM_write_bytes@len
SRAM_write_bytes@len:	; 2 bytes @ 0x9
	global	SRAM_read_bytes@len
SRAM_read_bytes@len:	; 2 bytes @ 0x9
??_hexstr_to_bytes:	; 1 bytes @ 0x9
	ds	1
	global	?_M95_init
?_M95_init:	; 2 bytes @ 0xA
	global	M95_write_bytes@status
M95_write_bytes@status:	; 1 bytes @ 0xA
	global	hexstr_to_uint@val
hexstr_to_uint@val:	; 2 bytes @ 0xA
	ds	1
	global	M95_write_bytes@data
M95_write_bytes@data:	; 1 bytes @ 0xB
	global	SRAM_write_bytes@data
SRAM_write_bytes@data:	; 1 bytes @ 0xB
	global	SRAM_read_bytes@data
SRAM_read_bytes@data:	; 1 bytes @ 0xB
	ds	1
	global	M95_write_bytes@space_in_page
M95_write_bytes@space_in_page:	; 2 bytes @ 0xC
	global	hexstr_to_bytes@hi
hexstr_to_bytes@hi:	; 2 bytes @ 0xC
	global	hexstr_to_uint@i
hexstr_to_uint@i:	; 2 bytes @ 0xC
??_M95_init:	; 1 bytes @ 0xC
??_SRAM_write_bytes:	; 1 bytes @ 0xC
??_SRAM_read_bytes:	; 1 bytes @ 0xC
	ds	1
	global	SRAM_write_bytes@stop
SRAM_write_bytes@stop:	; 2 bytes @ 0xD
	global	SRAM_read_bytes@stop
SRAM_read_bytes@stop:	; 2 bytes @ 0xD
	ds	1
	global	M95_init@status
M95_init@status:	; 2 bytes @ 0xE
	global	M95_write_bytes@i
M95_write_bytes@i:	; 2 bytes @ 0xE
	global	hexstr_to_bytes@lo
hexstr_to_bytes@lo:	; 2 bytes @ 0xE
	ds	1
	global	SRAM_write_bytes@addri
SRAM_write_bytes@addri:	; 2 bytes @ 0xF
	global	SRAM_read_bytes@addri
SRAM_read_bytes@addri:	; 2 bytes @ 0xF
	ds	1
	global	M95_write_bytes@remaining
M95_write_bytes@remaining:	; 2 bytes @ 0x10
	global	hexstr_to_bytes@bytes
hexstr_to_bytes@bytes:	; 2 bytes @ 0x10
	ds	2
	global	M95_write_bytes@current_addr
M95_write_bytes@current_addr:	; 2 bytes @ 0x12
	global	hexstr_to_bytes@i
hexstr_to_bytes@i:	; 2 bytes @ 0x12
	ds	2
	global	M95_write_bytes@to_write
M95_write_bytes@to_write:	; 2 bytes @ 0x14
	ds	2
??_main:	; 1 bytes @ 0x16
	ds	1
;!
;!Data Sizes:
;!    Strings     622
;!    Constant    156
;!    Data        2
;!    BSS         285
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80     23      53
;!    BANK1            80     29      77
;!    BANK2            80      0      70
;!    BANK3            80      0      64
;!    BANK4            80      0      70
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    EUSART2_FramingErrorCallbackRegister@callbackHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultFramingErrorCallback(), 
;!
;!    EUSART2_FramingErrorHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultFramingErrorCallback(), NULL(), 
;!
;!    EUSART2_OverrunErrorCallbackRegister@callbackHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultOverrunErrorCallback(), 
;!
;!    EUSART2_OverrunErrorHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultOverrunErrorCallback(), NULL(), 
;!
;!    EUSART2_RxCompleteCallbackRegister@callbackHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> onUartInput(), 
;!
;!    EUSART2_RxCompleteInterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> onUartInput(), NULL(), 
;!
;!    EUSART2_RxInterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_ReceiveISR(), NULL(), 
;!
;!    EUSART2_TxCompleteInterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    EUSART2_TxInterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitISR(), NULL(), 
;!
;!    hexstr_to_bytes@out	PTR unsigned char  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    hexstr_to_bytes@str	PTR const unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    hexstr_to_uint@str	PTR const unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    I2C2_Callback	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    i2c2_eventTable	const PTR FTN()enum E8056[9] size(2) Largest target is 1
;!		 -> I2C2_EVENT_ERROR(), I2C2_EVENT_IDLE(), I2C2_EVENT_NACK(), I2C2_EVENT_RESET(), 
;!		 -> I2C2_EVENT_RX(), I2C2_EVENT_SEND_RD_ADDR(), I2C2_EVENT_SEND_WR_ADDR(), I2C2_EVENT_STOP(), 
;!		 -> I2C2_EVENT_TX(), 
;!
;!    I2C2_Host$CallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> I2C2_CallbackRegister(), 
;!
;!    I2C2_Host$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C2_Deinitialize(), 
;!
;!    I2C2_Host$ErrorGet	PTR FTN()enum E8047 size(2) Largest target is 1
;!		 -> I2C2_ErrorGet(), 
;!
;!    I2C2_Host$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C2_Initialize(), 
;!
;!    I2C2_Host$IsBusy	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> I2C2_IsBusy(), 
;!
;!    I2C2_Host$Read	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_Read(), 
;!
;!    I2C2_Host$Tasks	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    I2C2_Host$TransferSetup	PTR FTN(PTR struct i2c_transfer_setup,unsigned long ,)_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    I2C2_Host$Write	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_Write(), 
;!
;!    I2C2_Host$WriteRead	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_WriteRead(), 
;!
;!    i2c2Status$readPtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    i2c2Status$writePtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    INT_InterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> INT_DefaultInterruptHandler(), NULL(), 
;!
;!    INT_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> INT_DefaultInterruptHandler(), 
;!
;!    IO_RA5_InterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> IO_RA5_DefaultInterruptHandler(), NULL(), 
;!
;!    IO_RA5_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> IO_RA5_DefaultInterruptHandler(), 
;!
;!    M95_read_bytes@buf	PTR void  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    M95_read_bytes@data	PTR unsigned char  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    M95_write_bytes@buf	PTR void  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    M95_write_bytes@data	PTR unsigned char  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    NULL$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S1614$17$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S1614$18$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> onUartInput(), 
;!
;!    S1614$20$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultFramingErrorCallback(), 
;!
;!    S1614$21$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultOverrunErrorCallback(), 
;!
;!    S1614$AutoBaudEventEnableGet	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$AutoBaudQuery	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_AutoBaudQuery(), 
;!
;!    S1614$AutoBaudSet	PTR FTN(_Bool ,)void  size(2) Largest target is 1
;!		 -> EUSART2_AutoBaudSet(), 
;!
;!    S1614$BaudRateGet	PTR FTN()unsigned long  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$BaudRateSet	PTR FTN(unsigned long ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$BRGCountGet	PTR FTN()unsigned long  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$BRGCountSet	PTR FTN(unsigned long ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_Deinitialize(), 
;!
;!    S1614$ErrorGet	PTR FTN()unsigned int  size(2) Largest target is 2
;!		 -> EUSART2_ErrorGet(), 
;!
;!    S1614$EventCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$FramingErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_FramingErrorCallbackRegister(), 
;!
;!    S1614$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_Initialize(), 
;!
;!    S1614$IsRxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsRxReady(), 
;!
;!    S1614$IsTxDone	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsTxDone(), 
;!
;!    S1614$IsTxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsTxReady(), 
;!
;!    S1614$OverrunErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_OverrunErrorCallbackRegister(), 
;!
;!    S1614$ParityErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$Read	PTR FTN()unsigned char  size(2) Largest target is 1
;!		 -> EUSART2_Read(), 
;!
;!    S1614$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_RxCompleteCallbackRegister(), 
;!
;!    S1614$TransmitDisable	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitDisable(), 
;!
;!    S1614$TransmitEnable	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitEnable(), 
;!
;!    S1614$TxCollisionCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1614$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_TxCompleteCallbackRegister(), 
;!
;!    S1614$Write	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> EUSART2_Write(), 
;!
;!    S563$12$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S563$4$0	PTR void  size(2) Largest target is 0
;!
;!    S563$5$0	PTR void  size(2) Largest target is 0
;!
;!    S563$6$0	PTR void  size(2) Largest target is 0
;!
;!    S563SPI_INTERFACE$BufferExchange	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferExchange(), 
;!
;!    S563SPI_INTERFACE$BufferRead	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferRead(), 
;!
;!    S563SPI_INTERFACE$BufferWrite	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferWrite(), 
;!
;!    S563SPI_INTERFACE$ByteExchange	PTR FTN(unsigned char ,)unsigned char  size(2) Largest target is 1
;!		 -> SPI1_ByteExchange(), 
;!
;!    S563SPI_INTERFACE$ByteRead	PTR FTN()unsigned char  size(2) Largest target is 1
;!		 -> SPI1_ByteRead(), 
;!
;!    S563SPI_INTERFACE$ByteWrite	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> SPI1_ByteWrite(), 
;!
;!    S563SPI_INTERFACE$Close	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Close(), 
;!
;!    S563SPI_INTERFACE$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Deinitialize(), 
;!
;!    S563SPI_INTERFACE$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Initialize(), 
;!
;!    S563SPI_INTERFACE$IsRxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> SPI1_IsRxReady(), 
;!
;!    S563SPI_INTERFACE$IsTxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> SPI1_IsTxReady(), 
;!
;!    S563SPI_INTERFACE$Open	PTR FTN(unsigned char ,)_Bool  size(2) Largest target is 1
;!		 -> SPI1_Open(), 
;!
;!    S563SPI_INTERFACE$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> SPI1_RxCompleteCallbackRegister(), 
;!
;!    S563SPI_INTERFACE$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S662$buffer	PTR unsigned char  size(1) Largest target is 1
;!		 -> SPI1_ByteExchange@byteData(COMMON[1]), NULL(NULL[0]), 
;!
;!    S856$2$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S856$3$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S856$4$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S856$4$3	PTR unsigned char  size(2) Largest target is 0
;!
;!    S856$8$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S856$CallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> I2C2_CallbackRegister(), 
;!
;!    S856$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C2_Deinitialize(), 
;!
;!    S856$ErrorGet	PTR FTN()enum E8047 size(2) Largest target is 1
;!		 -> I2C2_ErrorGet(), 
;!
;!    S856$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C2_Initialize(), 
;!
;!    S856$IsBusy	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> I2C2_IsBusy(), 
;!
;!    S856$Read	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_Read(), 
;!
;!    S856$Tasks	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S856$TransferSetup	PTR FTN(PTR struct i2c_transfer_setup,unsigned long ,)_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S856$Write	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_Write(), 
;!
;!    S856$WriteRead	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_WriteRead(), 
;!
;!    S955$readPtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S955$writePtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    spi1_descriptor$buffer	PTR unsigned char  size(1) Largest target is 1
;!		 -> SPI1_ByteExchange@byteData(COMMON[1]), NULL(NULL[0]), 
;!
;!    SPI1_Host$BufferExchange	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferExchange(), 
;!
;!    SPI1_Host$BufferRead	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferRead(), 
;!
;!    SPI1_Host$BufferWrite	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferWrite(), 
;!
;!    SPI1_Host$ByteExchange	PTR FTN(unsigned char ,)unsigned char  size(2) Largest target is 1
;!		 -> SPI1_ByteExchange(), 
;!
;!    SPI1_Host$ByteRead	PTR FTN()unsigned char  size(2) Largest target is 1
;!		 -> SPI1_ByteRead(), 
;!
;!    SPI1_Host$ByteWrite	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> SPI1_ByteWrite(), 
;!
;!    SPI1_Host$Close	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Close(), 
;!
;!    SPI1_Host$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Deinitialize(), 
;!
;!    SPI1_Host$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Initialize(), 
;!
;!    SPI1_Host$IsRxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> SPI1_IsRxReady(), 
;!
;!    SPI1_Host$IsTxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> SPI1_IsTxReady(), 
;!
;!    SPI1_Host$Open	PTR FTN(unsigned char ,)_Bool  size(2) Largest target is 1
;!		 -> SPI1_Open(), 
;!
;!    SPI1_Host$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> SPI1_RxCompleteCallbackRegister(), 
;!
;!    SPI1_Host$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    SPI1_RxCompleteCallback	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    SPI1_RxCompleteCallbackRegister@CallbackHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    SRAM_read_bytes@data	PTR unsigned char  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    SRAM_write_bytes@data	PTR const unsigned char  size(1) Largest target is 64
;!		 -> eeprom_sram_io_buffer(BANK3[64]), 
;!
;!    strcpy@d	PTR unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    strcpy@dest	PTR unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    strcpy@src	PTR const unsigned char  size(1) Largest target is 70
;!		 -> rx_buffer(BANK4[70]), 
;!
;!    strlen@a	PTR const unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 70
;!		 -> cmd_buffer(BANK2[70]), 
;!
;!    UART2$AutoBaudEventEnableGet	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$AutoBaudQuery	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_AutoBaudQuery(), 
;!
;!    UART2$AutoBaudSet	PTR FTN(_Bool ,)void  size(2) Largest target is 1
;!		 -> EUSART2_AutoBaudSet(), 
;!
;!    UART2$BaudRateGet	PTR FTN()unsigned long  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$BaudRateSet	PTR FTN(unsigned long ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$BRGCountGet	PTR FTN()unsigned long  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$BRGCountSet	PTR FTN(unsigned long ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_Deinitialize(), 
;!
;!    UART2$ErrorGet	PTR FTN()unsigned int  size(2) Largest target is 2
;!		 -> EUSART2_ErrorGet(), 
;!
;!    UART2$EventCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$FramingErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_FramingErrorCallbackRegister(), 
;!
;!    UART2$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_Initialize(), 
;!
;!    UART2$IsRxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsRxReady(), 
;!
;!    UART2$IsTxDone	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsTxDone(), 
;!
;!    UART2$IsTxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsTxReady(), 
;!
;!    UART2$OverrunErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_OverrunErrorCallbackRegister(), 
;!
;!    UART2$ParityErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$Read	PTR FTN()unsigned char  size(2) Largest target is 1
;!		 -> EUSART2_Read(), 
;!
;!    UART2$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_RxCompleteCallbackRegister(), 
;!
;!    UART2$TransmitDisable	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitDisable(), 
;!
;!    UART2$TransmitEnable	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitEnable(), 
;!
;!    UART2$TxCollisionCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_TxCompleteCallbackRegister(), 
;!
;!    UART2$Write	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> EUSART2_Write(), 
;!
;!    uart_puts@s	PTR unsigned char  size(2) Largest target is 81
;!		 -> STR_1(CODE[18]), STR_10(CODE[31]), STR_11(CODE[77]), STR_12(CODE[12]), 
;!		 -> STR_13(CODE[4]), STR_14(CODE[10]), STR_15(CODE[14]), STR_16(CODE[14]), 
;!		 -> STR_17(CODE[18]), STR_18(CODE[3]), STR_19(CODE[17]), STR_2(CODE[24]), 
;!		 -> STR_20(CODE[3]), STR_21(CODE[14]), STR_22(CODE[18]), STR_23(CODE[16]), 
;!		 -> STR_24(CODE[3]), STR_25(CODE[14]), STR_26(CODE[14]), STR_27(CODE[15]), 
;!		 -> STR_28(CODE[14]), STR_29(CODE[17]), STR_3(CODE[20]), STR_30(CODE[15]), 
;!		 -> STR_31(CODE[3]), STR_32(CODE[14]), STR_33(CODE[16]), STR_34(CODE[14]), 
;!		 -> STR_35(CODE[3]), STR_36(CODE[17]), STR_37(CODE[15]), STR_38(CODE[13]), 
;!		 -> STR_39(CODE[19]), STR_4(CODE[3]), STR_40(CODE[12]), STR_41(CODE[4]), 
;!		 -> STR_42(CODE[3]), STR_43(CODE[18]), STR_5(CODE[81]), STR_6(CODE[32]), 
;!		 -> STR_7(CODE[31]), STR_8(CODE[31]), STR_9(CODE[31]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in COMMON
;!
;!    _INTERRUPT_InterruptManager->_EUSART2_ReceiveISR
;!    _I2C2_ISR->_I2C2_EventHandler
;!    _I2C2_EventHandler->_I2C2_EVENT_TX
;!    _I2C2_ERROR_ISR->_I2C2_ErrorEventHandler
;!    _I2C2_ErrorEventHandler->_I2C2_EVENT_TX
;!    _I2C2_EVENT_TX->_I2C2_DataTransmit
;!    _I2C2_EVENT_SEND_WR_ADDR->_I2C2_DataTransmit
;!    _EUSART2_ReceiveISR->_onUartInput
;!    _onUartInput->_EUSART2_Read
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_M95_write_bytes
;!    _hexstr_to_uint->_hex2val
;!    _hexstr_to_bytes->_hex2val
;!    _PIN_MANAGER_Initialize->_IO_RA5_SetInterruptHandler
;!    _INTERRUPT_Initialize->_INT_SetInterruptHandler
;!    _EUSART2_Initialize->_EUSART2_FramingErrorCallbackRegister
;!    _EUSART2_Initialize->_EUSART2_OverrunErrorCallbackRegister
;!    _SRAM_write_bytes->_SRAM_set_address
;!    _SRAM_write->_SRAM_set_address
;!    _SRAM_read_bytes->_SRAM_set_address
;!    _SRAM_read->_SRAM_set_address
;!    _M95_write_bytes->_spi1_byte_exchange_hw
;!    _M95_read_bytes->_spi1_byte_exchange_hw
;!    _M95_init->_SPI1_Open
;!    _uart_puts->_uart_putc
;!    _putch_hex->_uart_putc
;!    _uart_putc->_EUSART2_Write
;!    _SPI1_Open->___wmul
;!    _SPI1_Initialize->_SPI1_RxCompleteCallbackRegister
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                47    47      0    7460
;!                                             22 BANK0      1     1      0
;!                                              0 BANK1     29    29      0
;!     _EUSART2_ReceiveInterruptEnable
;! _EUSART2_RxCompleteCallbackRegister
;!                           _M95_init
;!                     _M95_read_bytes
;!                    _M95_write_bytes
;!                          _SRAM_init
;!                          _SRAM_read
;!                    _SRAM_read_bytes
;!                         _SRAM_write
;!                   _SRAM_write_bytes
;!                  _SYSTEM_Initialize
;!                  _cpu6502_interrupt
;!                      _cpu6502_reset
;!                _cpu6502_uninterrupt
;!                    _cpu6502_unreset
;!                    _hexstr_to_bytes
;!                     _hexstr_to_uint
;!                          _putch_hex
;!                             _strcpy
;!                             _strlen
;!                          _uart_puts
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               3     1      2     133
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _strcpy                                               3     1      2     109
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _hexstr_to_uint                                      11     8      3     722
;!                                              3 BANK0     11     8      3
;!                            _hex2val
;! ---------------------------------------------------------------------------------
;! (1) _hexstr_to_bytes                                     17    11      6     995
;!                                              3 BANK0     17    11      6
;!                            _hex2val
;! ---------------------------------------------------------------------------------
;! (2) _hex2val                                              3     1      2     423
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _cpu6502_unreset                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _cpu6502_uninterrupt                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _cpu6502_reset                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _cpu6502_interrupt                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0     232
;!                   _CLOCK_Initialize
;!                 _EUSART2_Initialize
;!                    _I2C2_Initialize
;!               _INTERRUPT_Initialize
;!             _PIN_MANAGER_Initialize
;!                    _SPI1_Initialize
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0      34
;!         _IO_RA5_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _IO_RA5_SetInterruptHandler                           2     0      2      34
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _INTERRUPT_Initialize                                 0     0      0      34
;!            _INT_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _INT_SetInterruptHandler                              2     0      2      34
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _I2C2_Initialize                                      0     0      0       0
;!              _I2C2_InterruptsEnable
;! ---------------------------------------------------------------------------------
;! (3) _I2C2_InterruptsEnable                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _EUSART2_Initialize                                   0     0      0     130
;!_EUSART2_FramingErrorCallbackRegiste
;!_EUSART2_OverrunErrorCallbackRegiste
;! ---------------------------------------------------------------------------------
;! (3) _EUSART2_OverrunErrorCallbackRegister                 2     0      2      65
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _EUSART2_FramingErrorCallbackRegister                 2     0      2      65
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _CLOCK_Initialize                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_write_bytes                                    12     5      7     358
;!                                              5 BANK0     12     5      7
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_write                                           3     0      3     175
;!                                              5 BANK0      3     0      3
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_read_bytes                                     12     5      7     358
;!                                              5 BANK0     12     5      7
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_read                                            3     1      2     166
;!                                              5 BANK0      3     1      2
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (2) _SRAM_set_address                                     5     3      2      89
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _SRAM_deselect                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _M95_write_bytes                                     20    15      5     842
;!                                              2 BANK0     20    15      5
;!              _spi1_byte_exchange_hw
;! ---------------------------------------------------------------------------------
;! (1) _M95_read_bytes                                       9     4      5     409
;!                                              2 BANK0      9     4      5
;!              _spi1_byte_exchange_hw
;! ---------------------------------------------------------------------------------
;! (1) _M95_init                                             6     4      2    1233
;!                                             10 BANK0      6     4      2
;!                    _SPI1_Initialize
;!                          _SPI1_Open
;!                          _putch_hex
;!              _spi1_byte_exchange_hw
;!                          _uart_putc
;!                          _uart_puts
;! ---------------------------------------------------------------------------------
;! (1) _uart_puts                                            3     1      2     340
;!                                              3 BANK0      3     1      2
;!                          _uart_putc
;! ---------------------------------------------------------------------------------
;! (2) _spi1_byte_exchange_hw                                2     2      0      81
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _putch_hex                                            2     2      0     240
;!                                              3 BANK0      2     2      0
;!                          _uart_putc
;! ---------------------------------------------------------------------------------
;! (2) _uart_putc                                            1     1      0     146
;!                                              2 BANK0      1     1      0
;!                  _EUSART2_IsTxReady
;!                      _EUSART2_Write
;! ---------------------------------------------------------------------------------
;! (3) _EUSART2_Write                                        2     1      1      99
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _EUSART2_IsTxReady                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _SPI1_Open                                            4     3      1     327
;!                                              6 BANK0      4     3      1
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     160
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _SPI1_Initialize                                      0     0      0      34
;!    _SPI1_RxCompleteCallbackRegister
;! ---------------------------------------------------------------------------------
;! (3) _SPI1_RxCompleteCallbackRegister                      2     0      2      34
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _EUSART2_RxCompleteCallbackRegister                   2     0      2      65
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _EUSART2_ReceiveInterruptEnable                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _INTERRUPT_InterruptManager                           0     0      0     599
;!                                NULL *
;!                 _EUSART2_ReceiveISR *
;!                _EUSART2_TransmitISR *
;!                     _I2C2_ERROR_ISR
;!                           _I2C2_ISR
;!                            _INT_ISR
;!                    _PIN_MANAGER_IOC
;!                           _SPI1_ISR
;! ---------------------------------------------------------------------------------
;! (6) _SPI1_ISR                                             1     1      0      24
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _PIN_MANAGER_IOC                                      0     0      0       0
;!                         _IO_RA5_ISR
;! ---------------------------------------------------------------------------------
;! (7) _IO_RA5_ISR                                           0     0      0       0
;!                                NULL *
;!     _IO_RA5_DefaultInterruptHandler *
;! ---------------------------------------------------------------------------------
;! (8) _IO_RA5_DefaultInterruptHandler                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _INT_ISR                                              0     0      0       0
;!                       _INT_CallBack
;! ---------------------------------------------------------------------------------
;! (7) _INT_CallBack                                         0     0      0       0
;!                                NULL *
;!        _INT_DefaultInterruptHandler *
;! ---------------------------------------------------------------------------------
;! (8) _INT_DefaultInterruptHandler                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _I2C2_ISR                                             0     0      0     185
;!                  _I2C2_EventHandler
;! ---------------------------------------------------------------------------------
;! (7) _I2C2_EventHandler                                    2     2      0     185
;!                                              2 COMMON     2     2      0
;!                         _I2C2_Close
;!                   _I2C2_EVENT_ERROR *
;!                    _I2C2_EVENT_IDLE *
;!                    _I2C2_EVENT_NACK *
;!                   _I2C2_EVENT_RESET *
;!                      _I2C2_EVENT_RX *
;!            _I2C2_EVENT_SEND_RD_ADDR *
;!            _I2C2_EVENT_SEND_WR_ADDR *
;!                    _I2C2_EVENT_STOP *
;!                      _I2C2_EVENT_TX *
;!                _I2C2_InterruptClear
;!                        _I2C2_IsAddr
;!                        _I2C2_IsData
;!                        _I2C2_IsNack
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_IsNack                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_IsData                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_IsAddr                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _I2C2_ERROR_ISR                                       0     0      0     185
;!             _I2C2_ErrorEventHandler
;! ---------------------------------------------------------------------------------
;! (7) _I2C2_ErrorEventHandler                               2     2      0     185
;!                                              2 COMMON     2     2      0
;!                   _I2C2_EVENT_ERROR *
;!                    _I2C2_EVENT_IDLE *
;!                    _I2C2_EVENT_NACK *
;!                   _I2C2_EVENT_RESET *
;!                      _I2C2_EVENT_RX *
;!            _I2C2_EVENT_SEND_RD_ADDR *
;!            _I2C2_EVENT_SEND_WR_ADDR *
;!                    _I2C2_EVENT_STOP *
;!                      _I2C2_EVENT_TX *
;!           _I2C2_ErrorInterruptClear
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_TX                                        1     1      0      55
;!                                              1 COMMON     1     1      0
;!                  _I2C2_DataTransmit
;!                    _I2C2_EVENT_STOP
;!                 _I2C2_RestartEnable
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_RestartEnable                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_SEND_WR_ADDR                              0     0      0      29
;!                  _I2C2_DataTransmit
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_SEND_RD_ADDR                              0     0      0      29
;!                  _I2C2_DataTransmit
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_DataTransmit                                    1     1      0      29
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_RX                                        1     1      0      24
;!                                              0 COMMON     1     1      0
;!                       _I2C2_AckSend
;!                   _I2C2_DataReceive
;!                   _I2C2_IsRxBufFull
;!                      _I2C2_NackSend
;!                 _I2C2_ReceiveEnable
;!                _I2C2_RestartDisable
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_RestartDisable                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_ReceiveEnable                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_NackSend                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_IsRxBufFull                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_DataReceive                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_AckSend                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_NACK                                      1     1      0      24
;!                                              0 COMMON     1     1      0
;!                    _I2C2_EVENT_STOP
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_EVENT_STOP                                      0     0      0       0
;!                         _I2C2_Close
;!                      _I2C2_StopSend
;! ---------------------------------------------------------------------------------
;! (10) _I2C2_StopSend                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _I2C2_Close                                          0     0      0       0
;!           _I2C2_ErrorInterruptClear
;!                _I2C2_InterruptClear
;!              _I2C2_StatusFlagsClear
;! ---------------------------------------------------------------------------------
;! (11) _I2C2_StatusFlagsClear                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_InterruptClear                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (11) _I2C2_ErrorInterruptClear                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_IDLE                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_ERROR                                     1     1      0      24
;!                                              0 COMMON     1     1      0
;!                   _I2C2_EVENT_RESET
;! ---------------------------------------------------------------------------------
;! (8) _I2C2_EVENT_RESET                                     0     0      0       0
;!                      _I2C2_BusReset
;! ---------------------------------------------------------------------------------
;! (9) _I2C2_BusReset                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _EUSART2_TransmitISR                                  1     1      0      23
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _EUSART2_ReceiveISR                                   2     2      0     182
;!                                              3 COMMON     2     2      0
;!                                NULL *
;!_EUSART2_DefaultFramingErrorCallback *
;!_EUSART2_DefaultOverrunErrorCallback *
;!                        _onUartInput *
;! ---------------------------------------------------------------------------------
;! (7) _onUartInput                                          1     1      0     114
;!                                              2 COMMON     1     1      0
;!                  _EUSART2_IsRxReady
;!                       _EUSART2_Read
;! ---------------------------------------------------------------------------------
;! (8) _EUSART2_Read                                         2     2      0      47
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (8) _EUSART2_IsRxReady                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _EUSART2_DefaultOverrunErrorCallback                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _EUSART2_DefaultFramingErrorCallback                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) NULL(Fake)                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 11
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _EUSART2_ReceiveInterruptEnable
;!   _EUSART2_RxCompleteCallbackRegister
;!   _M95_init
;!     _SPI1_Initialize
;!       _SPI1_RxCompleteCallbackRegister
;!     _SPI1_Open
;!       ___wmul
;!     _putch_hex
;!       _uart_putc
;!         _EUSART2_IsTxReady
;!         _EUSART2_Write
;!     _spi1_byte_exchange_hw
;!     _uart_putc
;!     _uart_puts
;!       _uart_putc
;!   _M95_read_bytes
;!     _spi1_byte_exchange_hw
;!   _M95_write_bytes
;!     _spi1_byte_exchange_hw
;!   _SRAM_init
;!   _SRAM_read
;!     _SRAM_deselect
;!     _SRAM_set_address
;!   _SRAM_read_bytes
;!     _SRAM_deselect
;!     _SRAM_set_address
;!   _SRAM_write
;!     _SRAM_deselect
;!     _SRAM_set_address
;!   _SRAM_write_bytes
;!     _SRAM_deselect
;!     _SRAM_set_address
;!   _SYSTEM_Initialize
;!     _CLOCK_Initialize
;!     _EUSART2_Initialize
;!       _EUSART2_FramingErrorCallbackRegister
;!       _EUSART2_OverrunErrorCallbackRegister
;!     _I2C2_Initialize
;!       _I2C2_InterruptsEnable
;!     _INTERRUPT_Initialize
;!       _INT_SetInterruptHandler
;!     _PIN_MANAGER_Initialize
;!       _IO_RA5_SetInterruptHandler
;!     _SPI1_Initialize
;!   _cpu6502_interrupt
;!   _cpu6502_reset
;!   _cpu6502_uninterrupt
;!   _cpu6502_unreset
;!   _hexstr_to_bytes
;!     _hex2val
;!   _hexstr_to_uint
;!     _hex2val
;!   _putch_hex
;!   _strcpy
;!   _strlen
;!   _uart_puts
;!
;! _INTERRUPT_InterruptManager (ROOT)
;!   NULL(Fake) *
;!   _EUSART2_ReceiveISR *
;!     NULL(Fake) *
;!     _EUSART2_DefaultFramingErrorCallback *
;!     _EUSART2_DefaultOverrunErrorCallback *
;!     _onUartInput *
;!       _EUSART2_IsRxReady
;!       _EUSART2_Read
;!   _EUSART2_TransmitISR *
;!   _I2C2_ERROR_ISR *
;!     _I2C2_ErrorEventHandler
;!       _I2C2_EVENT_ERROR *
;!         _I2C2_EVENT_RESET
;!           _I2C2_BusReset
;!       _I2C2_EVENT_IDLE *
;!       _I2C2_EVENT_NACK *
;!         _I2C2_EVENT_STOP
;!           _I2C2_Close
;!             _I2C2_ErrorInterruptClear
;!             _I2C2_InterruptClear
;!             _I2C2_StatusFlagsClear
;!           _I2C2_StopSend
;!       _I2C2_EVENT_RESET *
;!       _I2C2_EVENT_RX *
;!         _I2C2_AckSend
;!         _I2C2_DataReceive
;!         _I2C2_IsRxBufFull
;!         _I2C2_NackSend
;!         _I2C2_ReceiveEnable
;!         _I2C2_RestartDisable
;!       _I2C2_EVENT_SEND_RD_ADDR *
;!         _I2C2_DataTransmit
;!       _I2C2_EVENT_SEND_WR_ADDR *
;!         _I2C2_DataTransmit
;!       _I2C2_EVENT_STOP *
;!       _I2C2_EVENT_TX *
;!         _I2C2_DataTransmit
;!         _I2C2_EVENT_STOP
;!         _I2C2_RestartEnable
;!       _I2C2_ErrorInterruptClear *
;!   _I2C2_ISR *
;!     _I2C2_EventHandler
;!       _I2C2_Close
;!       _I2C2_EVENT_ERROR *
;!       _I2C2_EVENT_IDLE *
;!       _I2C2_EVENT_NACK *
;!       _I2C2_EVENT_RESET *
;!       _I2C2_EVENT_RX *
;!       _I2C2_EVENT_SEND_RD_ADDR *
;!       _I2C2_EVENT_SEND_WR_ADDR *
;!       _I2C2_EVENT_STOP *
;!       _I2C2_EVENT_TX *
;!       _I2C2_InterruptClear *
;!       _I2C2_IsAddr *
;!       _I2C2_IsData *
;!       _I2C2_IsNack *
;!   _INT_ISR *
;!     _INT_CallBack
;!       NULL(Fake) *
;!       _INT_DefaultInterruptHandler *
;!   _PIN_MANAGER_IOC *
;!     _IO_RA5_ISR
;!       NULL(Fake) *
;!       _IO_RA5_DefaultInterruptHandler *
;!   _SPI1_ISR *
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK2            80      0       0      0.0%
;!BITBANK3            80      0       0      0.0%
;!BITBANK4            80      0       0      0.0%
;!BITBANK5            80      0       0      0.0%
;!BITBANK6            80      0       0      0.0%
;!BITBANK7            80      0       0      0.0%
;!BITBANK8            80      0       0      0.0%
;!BITBANK9            80      0       0      0.0%
;!BITBANK10           80      0       0      0.0%
;!BITBANK11           80      0       0      0.0%
;!BITBANK12           48      0       0      0.0%
;!BIGRAM            1008      0       0      0.0%
;!COMMON              14      5      10     71.4%
;!BANK0               80     23      53     66.2%
;!BANK1               80     29      77     96.2%
;!BANK2               80      0      70     87.5%
;!BANK3               80      0      64     80.0%
;!BANK4               80      0      70     87.5%
;!BANK5               80      0       0      0.0%
;!BANK6               80      0       0      0.0%
;!BANK7               80      0       0      0.0%
;!BANK8               80      0       0      0.0%
;!BANK9               80      0       0      0.0%
;!BANK10              80      0       0      0.0%
;!BANK11              80      0       0      0.0%
;!BANK12              48      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     345      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 89 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   19[BANK1 ] int 
;;  i               2   17[BANK1 ] int 
;;  nbytes          2   23[BANK1 ] unsigned int 
;;  addr            2   10[BANK1 ] unsigned int 
;;  datalen         2   25[BANK1 ] int 
;;  retval          2   14[BANK1 ] int 
;;  bytes           2    8[BANK1 ] int 
;;  addr            2    6[BANK1 ] unsigned int 
;;  nbytes          2   21[BANK1 ] unsigned int 
;;  addr            2    4[BANK1 ] unsigned int 
;;  datalen         2   12[BANK1 ] int 
;;  bytes           2    2[BANK1 ] int 
;;  addr            2    0[BANK1 ] unsigned int 
;;  retval          1   16[BANK1 ] unsigned char 
;;  len             2   27[BANK1 ] int 
;;  sram_buf       16    0        unsigned char [16]
;;  status          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2  254[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      29       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1      29       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_EUSART2_ReceiveInterruptEnable
;;		_EUSART2_RxCompleteCallbackRegister
;;		_M95_init
;;		_M95_read_bytes
;;		_M95_write_bytes
;;		_SRAM_init
;;		_SRAM_read
;;		_SRAM_read_bytes
;;		_SRAM_write
;;		_SRAM_write_bytes
;;		_SYSTEM_Initialize
;;		_cpu6502_interrupt
;;		_cpu6502_reset
;;		_cpu6502_uninterrupt
;;		_cpu6502_unreset
;;		_hexstr_to_bytes
;;		_hexstr_to_uint
;;		_putch_hex
;;		_strcpy
;;		_strlen
;;		_uart_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"main.c"
	line	89
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	89
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	93
	
l5285:	
	fcall	_SYSTEM_Initialize
	line	94
	fcall	_SRAM_init
	line	95
	
l5287:	
	bsf	(11),7	;volatile
	line	96
	
l5289:	
	bsf	(11),6	;volatile
	line	97
	
l5291:	
	fcall	_cpu6502_reset
	line	98
	
l5293:	
	fcall	_cpu6502_uninterrupt
	line	100
	movlw	low(_onUartInput)
	movlb 0	; select bank0
	movwf	(EUSART2_RxCompleteCallbackRegister@callbackHandler)
	movlw	high(_onUartInput)
	movwf	((EUSART2_RxCompleteCallbackRegister@callbackHandler))+1
	fcall	_EUSART2_RxCompleteCallbackRegister
	line	101
	
l5295:	
	fcall	_EUSART2_ReceiveInterruptEnable
	line	103
	
l5297:	
	movlw	low(((STR_5)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_5)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	106
	
l5299:	
	movlb 0	; select bank0
	bcf	(18),3	;volatile
	line	107
	
l5301:	
	bsf	(24),3	;volatile
	line	109
	
l5303:	
	fcall	_M95_init
	line	115
	
l5307:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_write@addr)
	movwf	(SRAM_write@addr+1)
	clrf	(SRAM_write@data)
	fcall	_SRAM_write
	line	116
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_read@addr)
	movwf	(SRAM_read@addr+1)
	fcall	_SRAM_read
	xorlw	low(0)&0ffh
	skipnz
	goto	u3261
	goto	u3260
u3261:
	goto	l5311
u3260:
	
l5309:	
	movlw	low(((STR_7)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_7)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	
l260:	
	
l261:	
	goto	l260
	line	117
	
l5311:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_write@addr)
	movwf	(SRAM_write@addr+1)
	movlw	low(0DDh)
	movwf	(SRAM_write@data)
	fcall	_SRAM_write
	line	118
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_read@addr)
	movwf	(SRAM_read@addr+1)
	fcall	_SRAM_read
	line	119
	
l5315:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_write@addr)
	movlw	0Fh
	movwf	((SRAM_write@addr))+1
	clrf	(SRAM_write@data)
	fcall	_SRAM_write
	line	120
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_read@addr)
	movlw	0Fh
	movwf	((SRAM_read@addr))+1
	fcall	_SRAM_read
	xorlw	low(0)&0ffh
	skipnz
	goto	u3271
	goto	u3270
u3271:
	goto	l5319
u3270:
	
l5317:	
	movlw	low(((STR_9)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_9)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	
l268:	
	
l269:	
	goto	l268
	line	121
	
l5319:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_write@addr)
	movlw	0Fh
	movwf	((SRAM_write@addr))+1
	movlw	low(0AFh)
	movwf	(SRAM_write@data)
	fcall	_SRAM_write
	line	122
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_read@addr)
	movlw	0Fh
	movwf	((SRAM_read@addr))+1
	fcall	_SRAM_read
	line	125
	
l5323:	
	movlw	low(((STR_11)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_11)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	126
	movlw	low(((STR_12)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_12)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	127
	movlw	low(((STR_13)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_13)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	128
	movlw	low(((STR_14)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_14)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	132
	
l5325:	
	movlb 0	; select bank0
	movf	((_message_ready)),w	;volatile
	btfsc	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l5325
u3280:
	line	133
	
l5327:	
	movlw	(low(_cmd_buffer|((0x1)<<8)))&0ffh
	movwf	(strcpy@dest)
	movlw	(low(_rx_buffer|((0x2)<<8)))&0ffh
	movwf	(strcpy@src)
	fcall	_strcpy
	line	134
	
l5329:	
	movlb 0	; select bank0
	clrf	(_message_ready)	;volatile
	line	136
	
l5331:	
	movlw	(low(_cmd_buffer|((0x1)<<8)))&0ffh
	movwf	(strlen@s)
	fcall	_strlen
	movlb 0	; select bank0
	movf	(1+(?_strlen)),w
	movlb 1	; select bank1
	movwf	(main@len+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_strlen)),w
	movlb 1	; select bank1
	movwf	(main@len)^080h
	line	137
	
l5333:	
	movf	((main@len)^080h),w
iorwf	((main@len+1)^080h),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l5337
u3290:
	goto	l5325
	line	140
	
l5337:	
		movlw	87
	movlb 2	; select bank2
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l5357
u3300:
	line	141
	
l5339:	
	movlb 1	; select bank1
	movf	(main@len+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3315
	movlw	05h
	movlb 1	; select bank1
	subwf	(main@len)^080h,w
u3315:

	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l5343
u3310:
	
l5341:	
	movlw	low(((STR_15)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_15)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	142
	
l5343:	
	movlw	(low(_cmd_buffer|((0x1)<<8)+01h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_uint@str)
	movlw	04h
	movwf	(hexstr_to_uint@digits)
	movlw	0
	movwf	((hexstr_to_uint@digits))+1
	fcall	_hexstr_to_uint
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr)^080h
	line	143
	
l5345:	
	movf	(main@len)^080h,w
	addlw	0FBh
	movwf	(main@datalen)^080h
	movlw	0FFh
	addwfc	(main@len+1)^080h,w
	movwf	1+(main@datalen)^080h
	line	144
	
l5347:	
	movf	(main@datalen+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3325
	movlw	01h
	movlb 1	; select bank1
	subwf	(main@datalen)^080h,w
u3325:

	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l5351
u3320:
	
l5349:	
	movlw	low(((STR_16)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_16)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	145
	
l5351:	
	movlw	(low(_cmd_buffer|((0x1)<<8)+05h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@str)
	movlb 1	; select bank1
	movf	(main@datalen+1)^080h,w
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@len+1)
	movlb 1	; select bank1
	movf	(main@datalen)^080h,w
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@len)
	movlw	(low(_eeprom_sram_io_buffer|((0x1)<<8)))&0ffh
	movwf	(hexstr_to_bytes@out)
	movlw	040h
	movwf	(hexstr_to_bytes@maxout)
	movlw	0
	movwf	((hexstr_to_bytes@maxout))+1
	fcall	_hexstr_to_bytes
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_bytes)),w
	movlb 1	; select bank1
	movwf	(main@bytes+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_bytes)),w
	movlb 1	; select bank1
	movwf	(main@bytes)^080h
	line	146
	movf	(main@addr+1)^080h,w
	movlb 0	; select bank0
	movwf	(M95_write_bytes@addr+1)
	movlb 1	; select bank1
	movf	(main@addr)^080h,w
	movlb 0	; select bank0
	movwf	(M95_write_bytes@addr)
	movlb 1	; select bank1
	movf	(main@bytes+1)^080h,w
	movlb 0	; select bank0
	movwf	(M95_write_bytes@num_bytes+1)
	movlb 1	; select bank1
	movf	(main@bytes)^080h,w
	movlb 0	; select bank0
	movwf	(M95_write_bytes@num_bytes)
	movlw	(low(_eeprom_sram_io_buffer|((0x1)<<8)))&0ffh
	movwf	(M95_write_bytes@buf)
	fcall	_M95_write_bytes
	movlb 0	; select bank0
	movf	(0+(?_M95_write_bytes)),w
	movlb 1	; select bank1
	movwf	(main@retval)^080h
	line	152
	
l5355:	
	movlw	low(((STR_19)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_19)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	153
	movlb 1	; select bank1
	movf	(main@retval)^080h,w
	fcall	_putch_hex
	line	154
	movlw	low(((STR_20)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_20)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	158
	
l5357:	
		movlw	82
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l5385
u3330:
	line	159
	
l5359:	
	movlb 1	; select bank1
	movf	(main@len+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3345
	movlw	09h
	movlb 1	; select bank1
	subwf	(main@len)^080h,w
u3345:

	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l5363
u3340:
	
l5361:	
	movlw	low(((STR_21)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_21)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	160
	
l5363:	
	movlw	(low(_cmd_buffer|((0x1)<<8)+01h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_uint@str)
	movlw	04h
	movwf	(hexstr_to_uint@digits)
	movlw	0
	movwf	((hexstr_to_uint@digits))+1
	fcall	_hexstr_to_uint
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr_502+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr_502)^080h
	line	161
	movlw	(low(_cmd_buffer|((0x1)<<8)+05h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_uint@str)
	movlw	04h
	movwf	(hexstr_to_uint@digits)
	movlw	0
	movwf	((hexstr_to_uint@digits))+1
	fcall	_hexstr_to_uint
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@nbytes+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@nbytes)^080h
	line	162
	
l5365:	
	movlw	0
	subwf	(main@nbytes+1)^080h,w
	movlw	041h
	skipnz
	subwf	(main@nbytes)^080h,w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l5369
u3350:
	
l5367:	
	movlw	040h
	movwf	(main@nbytes)^080h
	movlw	0
	movwf	((main@nbytes)^080h)+1
	line	163
	
l5369:	
	movf	(main@addr_502+1)^080h,w
	movlb 0	; select bank0
	movwf	(M95_read_bytes@addr+1)
	movlb 1	; select bank1
	movf	(main@addr_502)^080h,w
	movlb 0	; select bank0
	movwf	(M95_read_bytes@addr)
	movlb 1	; select bank1
	movf	(main@nbytes+1)^080h,w
	movlb 0	; select bank0
	movwf	(M95_read_bytes@num_bytes+1)
	movlb 1	; select bank1
	movf	(main@nbytes)^080h,w
	movlb 0	; select bank0
	movwf	(M95_read_bytes@num_bytes)
	movlw	(low(_eeprom_sram_io_buffer|((0x1)<<8)))&0ffh
	movwf	(M95_read_bytes@buf)
	fcall	_M95_read_bytes
	movlb 0	; select bank0
	btfss	(1+(?_M95_read_bytes)),7
	goto	u3361
	goto	u3360
u3361:
	goto	l5373
u3360:
	line	164
	
l5371:	
	movlw	low(((STR_22)|8000h))
	movwf	(uart_puts@s)
	movlw	high(((STR_22)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	165
	goto	l5325
	line	166
	
l5373:	
	movlw	low(((STR_23)|8000h))
	movwf	(uart_puts@s)
	movlw	high(((STR_23)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	167
	
l5375:	
	movlb 1	; select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	goto	l5381
	line	168
	
l5377:	
	movf	(main@i)^080h,w
	addlw	low(_eeprom_sram_io_buffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_putch_hex
	line	169
	
l5379:	
	movlw	01h
	movlb 1	; select bank1
	addwf	(main@i)^080h,f
	movlw	0
	addwfc	(main@i+1)^080h,f
	
l5381:	
	movf	(main@nbytes+1)^080h,w
	subwf	(main@i+1)^080h,w
	skipz
	goto	u3375
	movf	(main@nbytes)^080h,w
	subwf	(main@i)^080h,w
u3375:
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l5377
u3370:
	line	170
	
l5383:	
	movlw	low(((STR_24)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_24)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	174
	
l5385:	
		movlw	119
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l5413
u3380:
	line	175
	
l5387:	
	movlb 1	; select bank1
	movf	(main@len+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3395
	movlw	05h
	movlb 1	; select bank1
	subwf	(main@len)^080h,w
u3395:

	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l5391
u3390:
	
l5389:	
	movlw	low(((STR_25)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_25)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	176
	
l5391:	
	movlw	(low(_cmd_buffer|((0x1)<<8)+01h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_uint@str)
	movlw	03h
	movwf	(hexstr_to_uint@digits)
	movlw	0
	movwf	((hexstr_to_uint@digits))+1
	fcall	_hexstr_to_uint
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr_510+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr_510)^080h
	line	177
	
l5393:	
	movf	(main@len)^080h,w
	addlw	0FCh
	movwf	(main@datalen_511)^080h
	movlw	0FFh
	addwfc	(main@len+1)^080h,w
	movwf	1+(main@datalen_511)^080h
	line	178
	
l5395:	
	movf	(main@datalen_511+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3405
	movlw	01h
	movlb 1	; select bank1
	subwf	(main@datalen_511)^080h,w
u3405:

	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l5399
u3400:
	
l5397:	
	movlw	low(((STR_26)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_26)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	179
	
l5399:	
	movlb 1	; select bank1
	movf	(main@datalen_511+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3415
	movlw	081h
	movlb 1	; select bank1
	subwf	(main@datalen_511)^080h,w
u3415:

	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l297
u3410:
	
l5401:	
	movlw	low(((STR_27)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_27)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	
l297:	
	line	180
	movlb 1	; select bank1
	btfsc	(main@datalen_511)^080h,(0)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l5405
u3420:
	
l5403:	
	movlw	low(((STR_28)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_28)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	182
	
l5405:	
	movlw	(low(_cmd_buffer|((0x1)<<8)+04h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@str)
	movlb 1	; select bank1
	movf	(main@datalen_511+1)^080h,w
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@len+1)
	movlb 1	; select bank1
	movf	(main@datalen_511)^080h,w
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@len)
	movlw	(low(_eeprom_sram_io_buffer|((0x1)<<8)))&0ffh
	movwf	(hexstr_to_bytes@out)
	movlw	040h
	movwf	(hexstr_to_bytes@maxout)
	movlw	0
	movwf	((hexstr_to_bytes@maxout))+1
	fcall	_hexstr_to_bytes
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_bytes)),w
	movlb 1	; select bank1
	movwf	(main@bytes_515+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_bytes)),w
	movlb 1	; select bank1
	movwf	(main@bytes_515)^080h
	line	183
	movf	(main@addr_510)^080h,w
	movlb 0	; select bank0
	movwf	(SRAM_write_bytes@addr)
	movlb 1	; select bank1
	movf	(main@addr_510+1)^080h,w
	movlb 0	; select bank0
	movwf	((SRAM_write_bytes@addr))+1
	clrf	2+((SRAM_write_bytes@addr))
	clrf	3+((SRAM_write_bytes@addr))
	movlb 1	; select bank1
	movf	(main@bytes_515+1)^080h,w
	movlb 0	; select bank0
	movwf	(SRAM_write_bytes@len+1)
	movlb 1	; select bank1
	movf	(main@bytes_515)^080h,w
	movlb 0	; select bank0
	movwf	(SRAM_write_bytes@len)
	movlw	(low(_eeprom_sram_io_buffer|((0x1)<<8)))&0ffh
	movwf	(SRAM_write_bytes@data)
	fcall	_SRAM_write_bytes
	movlb 0	; select bank0
	movf	(1+(?_SRAM_write_bytes)),w
	movlb 1	; select bank1
	movwf	(main@retval_516+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_SRAM_write_bytes)),w
	movlb 1	; select bank1
	movwf	(main@retval_516)^080h
	line	184
	
l5407:	
	btfss	(main@retval_516+1)^080h,7
	goto	u3431
	goto	u3430
u3431:
	goto	l5411
u3430:
	line	185
	
l5409:	
	movlw	low(((STR_29)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_29)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	186
	goto	l5325
	line	187
	
l5411:	
	movlw	low(((STR_30)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_30)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	188
	movlb 1	; select bank1
	movf	(main@retval_516)^080h,w
	fcall	_putch_hex
	line	189
	movlw	low(((STR_31)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_31)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	193
	
l5413:	
		movlw	114
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l5441
u3440:
	line	194
	
l5415:	
	movlb 1	; select bank1
	movf	(main@len+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3455
	movlw	07h
	movlb 1	; select bank1
	subwf	(main@len)^080h,w
u3455:

	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l5419
u3450:
	
l5417:	
	movlw	low(((STR_32)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_32)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	195
	
l5419:	
	movlw	(low(_cmd_buffer|((0x1)<<8)+01h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_uint@str)
	movlw	03h
	movwf	(hexstr_to_uint@digits)
	movlw	0
	movwf	((hexstr_to_uint@digits))+1
	fcall	_hexstr_to_uint
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr_522+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@addr_522)^080h
	line	196
	movlw	(low(_cmd_buffer|((0x1)<<8)+04h))&0ffh
	movlb 0	; select bank0
	movwf	(hexstr_to_uint@str)
	movlw	03h
	movwf	(hexstr_to_uint@digits)
	movlw	0
	movwf	((hexstr_to_uint@digits))+1
	fcall	_hexstr_to_uint
	movlb 0	; select bank0
	movf	(1+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@nbytes_523+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_hexstr_to_uint)),w
	movlb 1	; select bank1
	movwf	(main@nbytes_523)^080h
	line	197
	
l5421:	
	movlw	0
	subwf	(main@nbytes_523+1)^080h,w
	movlw	041h
	skipnz
	subwf	(main@nbytes_523)^080h,w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l5425
u3460:
	
l5423:	
	movlw	040h
	movwf	(main@nbytes_523)^080h
	movlw	0
	movwf	((main@nbytes_523)^080h)+1
	line	198
	
l5425:	
	movf	(main@addr_522)^080h,w
	movlb 0	; select bank0
	movwf	(SRAM_read_bytes@addr)
	movlb 1	; select bank1
	movf	(main@addr_522+1)^080h,w
	movlb 0	; select bank0
	movwf	((SRAM_read_bytes@addr))+1
	clrf	2+((SRAM_read_bytes@addr))
	clrf	3+((SRAM_read_bytes@addr))
	movlb 1	; select bank1
	movf	(main@nbytes_523+1)^080h,w
	movlb 0	; select bank0
	movwf	(SRAM_read_bytes@len+1)
	movlb 1	; select bank1
	movf	(main@nbytes_523)^080h,w
	movlb 0	; select bank0
	movwf	(SRAM_read_bytes@len)
	movlw	(low(_eeprom_sram_io_buffer|((0x1)<<8)))&0ffh
	movwf	(SRAM_read_bytes@data)
	fcall	_SRAM_read_bytes
	movlb 0	; select bank0
	btfss	(1+(?_SRAM_read_bytes)),7
	goto	u3471
	goto	u3470
u3471:
	goto	l5429
u3470:
	line	199
	
l5427:	
	movlw	low(((STR_33)|8000h))
	movwf	(uart_puts@s)
	movlw	high(((STR_33)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	200
	goto	l5325
	line	201
	
l5429:	
	movlw	low(((STR_34)|8000h))
	movwf	(uart_puts@s)
	movlw	high(((STR_34)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	202
	
l5431:	
	movlb 1	; select bank1
	clrf	(main@i_527)^080h
	clrf	(main@i_527+1)^080h
	goto	l5437
	line	203
	
l5433:	
	movf	(main@i_527)^080h,w
	addlw	low(_eeprom_sram_io_buffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank3/4
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_putch_hex
	line	204
	
l5435:	
	movlw	01h
	movlb 1	; select bank1
	addwf	(main@i_527)^080h,f
	movlw	0
	addwfc	(main@i_527+1)^080h,f
	
l5437:	
	movf	(main@nbytes_523+1)^080h,w
	subwf	(main@i_527+1)^080h,w
	skipz
	goto	u3485
	movf	(main@nbytes_523)^080h,w
	subwf	(main@i_527)^080h,w
u3485:
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l5433
u3480:
	line	205
	
l5439:	
	movlw	low(((STR_35)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_35)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	line	209
	
l5441:	
		movlw	79
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l5447
u3490:
	line	210
	
l5443:	
	fcall	_cpu6502_unreset
	line	211
	
l5445:	
	movlw	low(((STR_36)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_36)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	212
	goto	l5325
	line	214
	
l5447:	
		movlw	45
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l5453
u3500:
	line	215
	
l5449:	
	fcall	_cpu6502_reset
	line	216
	
l5451:	
	movlw	low(((STR_37)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_37)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	217
	goto	l5325
	line	219
	
l5453:	
		movlw	73
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l5459
u3510:
	line	220
	
l5455:	
	fcall	_cpu6502_interrupt
	line	221
	
l5457:	
	movlw	low(((STR_38)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_38)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	222
	goto	l5325
	line	224
	
l5459:	
		movlw	105
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l5465
u3520:
	line	225
	
l5461:	
	fcall	_cpu6502_uninterrupt
	line	226
	
l5463:	
	movlw	low(((STR_39)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_39)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	227
	goto	l5325
	line	229
	
l5465:	
		movlw	63
	xorwf	((_cmd_buffer)^0100h),w	;volatile
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l5469
u3530:
	line	230
	
l5467:	
	movlw	low(((STR_40)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_40)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	231
	movlw	low(((STR_41)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_41)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	232
	movlw	low(((STR_42)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_42)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	233
	goto	l5325
	line	236
	
l5469:	
	movlw	low(((STR_43)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_43)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	goto	l5325
	global	start
	ljmp	start
	callstack 0
	line	240
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v3.00/pic/sources/c99/common/strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    0[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(70), 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(70), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=2
	file	"/opt/microchip/xc8/v3.00/pic/sources/c99/common/strlen.c"
	line	5
global __ptext1
__ptext1:	;psect for function _strlen
psect	text1
	file	"/opt/microchip/xc8/v3.00/pic/sources/c99/common/strlen.c"
	line	5
	
_strlen:	
;incstack = 0
	callstack 8
; Regs used in _strlen: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	7
	
l5247:	
	movlb 0	; select bank0
	movf	(strlen@s),w
	movwf	(strlen@a)
	line	8
	goto	l5251
	line	9
	
l5249:	
	movlw	low(01h)
	addwf	(strlen@s),f
	line	8
	
l5251:	
	movf	(strlen@s),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l5249
u3210:
	line	11
	
l5253:	
	movf	(strlen@a),w
	subwf	(strlen@s),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	12
	
l1743:	
	return
	callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 3 in file "/opt/microchip/xc8/v3.00/pic/sources/c99/common/strcpy.c"
;; Parameters:    Size  Location     Type
;;  dest            1    0[BANK0 ] PTR unsigned char 
;;		 -> cmd_buffer(70), 
;;  src             1    1[BANK0 ] PTR const unsigned char 
;;		 -> rx_buffer(70), 
;; Auto vars:     Size  Location     Type
;;  d               1    2[BANK0 ] PTR unsigned char 
;;		 -> cmd_buffer(70), 
;; Return value:  Size  Location     Type
;;                  1    0[BANK0 ] PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"/opt/microchip/xc8/v3.00/pic/sources/c99/common/strcpy.c"
	line	3
global __ptext2
__ptext2:	;psect for function _strcpy
psect	text2
	file	"/opt/microchip/xc8/v3.00/pic/sources/c99/common/strcpy.c"
	line	3
	
_strcpy:	
;incstack = 0
	callstack 8
; Regs used in _strcpy: [wreg-fsr1h+status,2+status,0]
	line	5
	
l5243:	
	movlb 0	; select bank0
	movf	(strcpy@dest),w
	movwf	(strcpy@d)
	line	6
	
l5245:	
	movf	(strcpy@d),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	incf	(strcpy@d),f
	movf	(strcpy@src),w
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	incf	(strcpy@src),f
	movf	indf0,w
	movwi	[0]fsr1
	movf	wreg
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l5245
u3200:
	line	8
	
l1737:	
	return
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8314
	global	_hexstr_to_uint

;; *************** function _hexstr_to_uint *****************
;; Defined at:
;;		line 54 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str             1    3[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(70), 
;;  digits          2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  v               2    8[BANK0 ] int 
;;  i               2   12[BANK0 ] int 
;;  val             2   10[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_hex2val
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	54
global __ptext3
__ptext3:	;psect for function _hexstr_to_uint
psect	text3
	file	"main.c"
	line	54
	
_hexstr_to_uint:	
;incstack = 0
	callstack 7
; Regs used in _hexstr_to_uint: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	55
	
l5213:	
	movlb 0	; select bank0
	clrf	(hexstr_to_uint@val)
	clrf	(hexstr_to_uint@val+1)
	line	56
	clrf	(hexstr_to_uint@i)
	clrf	(hexstr_to_uint@i+1)
	goto	l237
	line	57
	
l5215:	
	movlb 0	; select bank0
	movf	(hexstr_to_uint@str),w
	addwf	(hexstr_to_uint@i),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_hex2val
	movlb 0	; select bank0
	movf	(1+(?_hex2val)),w
	movwf	(hexstr_to_uint@v+1)
	movf	(0+(?_hex2val)),w
	movwf	(hexstr_to_uint@v)
	line	58
	
l5217:	
	btfss	(hexstr_to_uint@v+1),7
	goto	u3171
	goto	u3170
u3171:
	goto	l5221
u3170:
	goto	l5223
	line	59
	
l5221:	
	movf	(hexstr_to_uint@val+1),w
	movwf	(??_hexstr_to_uint+0)+0+1
	movf	(hexstr_to_uint@val),w
	movwf	(??_hexstr_to_uint+0)+0
	swapf	(??_hexstr_to_uint+0)+0,f
	swapf	(??_hexstr_to_uint+0)+1,f
	movlw	0f0h
	andwf	(??_hexstr_to_uint+0)+1,f
	movf	(??_hexstr_to_uint+0)+0,w
	andlw	0fh
	iorwf	(??_hexstr_to_uint+0)+1,f
	movlw	0f0h
	andwf	(??_hexstr_to_uint+0)+0,f
	movf	(hexstr_to_uint@v),w
	iorwf	0+(??_hexstr_to_uint+0)+0,w
	movwf	(hexstr_to_uint@val)
	movf	(hexstr_to_uint@v+1),w
	iorwf	1+(??_hexstr_to_uint+0)+0,w
	movwf	1+(hexstr_to_uint@val)
	line	60
	movlw	01h
	addwf	(hexstr_to_uint@i),f
	movlw	0
	addwfc	(hexstr_to_uint@i+1),f
	
l237:	
	movf	(hexstr_to_uint@i+1),w
	xorlw	80h
	movwf	(??_hexstr_to_uint+0)+0
	movf	(hexstr_to_uint@digits+1),w
	xorlw	80h
	subwf	(??_hexstr_to_uint+0)+0,w
	skipz
	goto	u3185
	movf	(hexstr_to_uint@digits),w
	subwf	(hexstr_to_uint@i),w
u3185:

	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l5215
u3180:
	line	61
	
l5223:	
	movlb 0	; select bank0
	movf	(hexstr_to_uint@val+1),w
	movwf	(?_hexstr_to_uint+1)
	movf	(hexstr_to_uint@val),w
	movwf	(?_hexstr_to_uint)
	line	62
	
l241:	
	return
	callstack 0
GLOBAL	__end_of_hexstr_to_uint
	__end_of_hexstr_to_uint:
	signat	_hexstr_to_uint,8314
	global	_hexstr_to_bytes

;; *************** function _hexstr_to_bytes *****************
;; Defined at:
;;		line 42 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str             1    3[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(70), 
;;  len             2    4[BANK0 ] int 
;;  out             1    6[BANK0 ] PTR unsigned char 
;;		 -> eeprom_sram_io_buffer(64), 
;;  maxout          2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  lo              2   14[BANK0 ] int 
;;  hi              2   12[BANK0 ] int 
;;  i               2   18[BANK0 ] int 
;;  bytes           2   16[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_hex2val
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext4
__ptext4:	;psect for function _hexstr_to_bytes
psect	text4
	file	"main.c"
	line	42
	
_hexstr_to_bytes:	
;incstack = 0
	callstack 7
; Regs used in _hexstr_to_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	43
	
l5185:	
	movlb 0	; select bank0
	clrf	(hexstr_to_bytes@bytes)
	clrf	(hexstr_to_bytes@bytes+1)
	line	44
	clrf	(hexstr_to_bytes@i)
	clrf	(hexstr_to_bytes@i+1)
	goto	l5205
	line	45
	
l5187:	
	movlb 0	; select bank0
	movf	(hexstr_to_bytes@str),w
	addwf	(hexstr_to_bytes@i),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_hex2val
	movlb 0	; select bank0
	movf	(1+(?_hex2val)),w
	movwf	(hexstr_to_bytes@hi+1)
	movf	(0+(?_hex2val)),w
	movwf	(hexstr_to_bytes@hi)
	line	46
	
l5189:	
	movf	(hexstr_to_bytes@i),w
	addlw	01h
	movwf	(??_hexstr_to_bytes+0)+0
	movlw	0
	addwfc	(hexstr_to_bytes@i+1),w
	movwf	1+(??_hexstr_to_bytes+0)+0
	movf	1+(??_hexstr_to_bytes+0)+0,w
	xorlw	80h
	movwf	(??_hexstr_to_bytes+2)+0
	movf	(hexstr_to_bytes@len+1),w
	xorlw	80h
	subwf	(??_hexstr_to_bytes+2)+0,w
	skipz
	goto	u3115
	movf	(hexstr_to_bytes@len),w
	subwf	0+(??_hexstr_to_bytes+0)+0,w
u3115:

	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l5193
u3110:
	
l5191:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@lo)
	movlw	0FFh
	movwf	((hexstr_to_bytes@lo))+1
	goto	l5195
	
l5193:	
	movlb 0	; select bank0
	movf	(hexstr_to_bytes@i),w
	addwf	(hexstr_to_bytes@str),w
	movwf	(??_hexstr_to_bytes+0)+0
	incf	0+(??_hexstr_to_bytes+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_hex2val
	movlb 0	; select bank0
	movf	(1+(?_hex2val)),w
	movwf	(hexstr_to_bytes@lo+1)
	movf	(0+(?_hex2val)),w
	movwf	(hexstr_to_bytes@lo)
	line	47
	
l5195:	
	btfsc	(hexstr_to_bytes@hi+1),7
	goto	u3121
	goto	u3120
u3121:
	goto	l5209
u3120:
	
l5197:	
	btfss	(hexstr_to_bytes@lo+1),7
	goto	u3131
	goto	u3130
u3131:
	goto	l5199
u3130:
	goto	l5209
	line	48
	
l5199:	
	movf	(hexstr_to_bytes@out),w
	addwf	(hexstr_to_bytes@bytes),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(hexstr_to_bytes@hi),w
	movwf	(??_hexstr_to_bytes+0)+0
	movlw	04h
u3145:
	lslf	(??_hexstr_to_bytes+0)+0,f
	decfsz	wreg,f
	goto	u3145
	movf	(??_hexstr_to_bytes+0)+0,w
	iorwf	(hexstr_to_bytes@lo),w
	movwf	indf1
	
l5201:	
	movlw	01h
	addwf	(hexstr_to_bytes@bytes),f
	movlw	0
	addwfc	(hexstr_to_bytes@bytes+1),f
	line	49
	
l5203:	
	movlw	02h
	addwf	(hexstr_to_bytes@i),f
	movlw	0
	addwfc	(hexstr_to_bytes@i+1),f
	
l5205:	
	movf	(hexstr_to_bytes@i+1),w
	xorlw	80h
	movwf	(??_hexstr_to_bytes+0)+0
	movf	(hexstr_to_bytes@len+1),w
	xorlw	80h
	subwf	(??_hexstr_to_bytes+0)+0,w
	skipz
	goto	u3155
	movf	(hexstr_to_bytes@len),w
	subwf	(hexstr_to_bytes@i),w
u3155:

	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l5209
u3150:
	
l5207:	
	movlb 0	; select bank0
	movf	(hexstr_to_bytes@bytes+1),w
	xorlw	80h
	movwf	(??_hexstr_to_bytes+0)+0
	movf	(hexstr_to_bytes@maxout+1),w
	xorlw	80h
	subwf	(??_hexstr_to_bytes+0)+0,w
	skipz
	goto	u3165
	movf	(hexstr_to_bytes@maxout),w
	subwf	(hexstr_to_bytes@bytes),w
u3165:

	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l5187
u3160:
	line	50
	
l5209:	
	movlb 0	; select bank0
	movf	(hexstr_to_bytes@bytes+1),w
	movwf	(?_hexstr_to_bytes+1)
	movf	(hexstr_to_bytes@bytes),w
	movwf	(?_hexstr_to_bytes)
	line	51
	
l234:	
	return
	callstack 0
GLOBAL	__end_of_hexstr_to_bytes
	__end_of_hexstr_to_bytes:
	signat	_hexstr_to_bytes,16506
	global	_hex2val

;; *************** function _hex2val *****************
;; Defined at:
;;		line 34 in file "main.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hexstr_to_bytes
;;		_hexstr_to_uint
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext5
__ptext5:	;psect for function _hex2val
psect	text5
	file	"main.c"
	line	34
	
_hex2val:	
;incstack = 0
	callstack 7
; Regs used in _hex2val: [wreg]
	movlb 0	; select bank0
	movwf	(hex2val@c)
	line	35
	
l4699:	
	movlw	low(030h)
	subwf	(hex2val@c),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l4707
u2900:
	
l4701:	
	movlw	low(03Ah)
	subwf	(hex2val@c),w
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l4707
u2910:
	
l4703:	
	movf	(hex2val@c),w
	addlw	low(0FFD0h)
	movwf	(?_hex2val)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((?_hex2val))+1
	goto	l217
	line	36
	
l4707:	
	movlw	low(041h)
	subwf	(hex2val@c),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l4715
u2920:
	
l4709:	
	movlw	low(047h)
	subwf	(hex2val@c),w
	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l4715
u2930:
	
l4711:	
	movf	(hex2val@c),w
	addlw	low(0FFC9h)
	movwf	(?_hex2val)
	movlw	high(0FFC9h)
	skipnc
	movlw	(high(0FFC9h)+1)&0ffh
	movwf	((?_hex2val))+1
	goto	l217
	line	37
	
l4715:	
	movlw	low(061h)
	subwf	(hex2val@c),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l4723
u2940:
	
l4717:	
	movlw	low(067h)
	subwf	(hex2val@c),w
	skipnc
	goto	u2951
	goto	u2950
u2951:
	goto	l4723
u2950:
	
l4719:	
	movf	(hex2val@c),w
	addlw	low(0FFA9h)
	movwf	(?_hex2val)
	movlw	high(0FFA9h)
	skipnc
	movlw	(high(0FFA9h)+1)&0ffh
	movwf	((?_hex2val))+1
	goto	l217
	line	38
	
l4723:	
	movlw	0FFh
	movwf	(?_hex2val)
	movlw	0FFh
	movwf	((?_hex2val))+1
	line	39
	
l217:	
	return
	callstack 0
GLOBAL	__end_of_hex2val
	__end_of_hex2val:
	signat	_hex2val,4218
	global	_cpu6502_unreset

;; *************** function _cpu6502_unreset *****************
;; Defined at:
;;		line 279 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"hardware.c"
	line	279
global __ptext6
__ptext6:	;psect for function _cpu6502_unreset
psect	text6
	file	"hardware.c"
	line	279
	
_cpu6502_unreset:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_unreset: []
	line	280
	
l5179:	
	movlb 0	; select bank0
	bsf	(24),1	;volatile
	line	281
	
l147:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_unreset
	__end_of_cpu6502_unreset:
	signat	_cpu6502_unreset,89
	global	_cpu6502_uninterrupt

;; *************** function _cpu6502_uninterrupt *****************
;; Defined at:
;;		line 293 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	293
global __ptext7
__ptext7:	;psect for function _cpu6502_uninterrupt
psect	text7
	file	"hardware.c"
	line	293
	
_cpu6502_uninterrupt:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_uninterrupt: []
	line	294
	
l5183:	
	movlb 0	; select bank0
	bsf	(24),0	;volatile
	line	295
	
l153:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_uninterrupt
	__end_of_cpu6502_uninterrupt:
	signat	_cpu6502_uninterrupt,89
	global	_cpu6502_reset

;; *************** function _cpu6502_reset *****************
;; Defined at:
;;		line 272 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext8
__ptext8:	;psect for function _cpu6502_reset
psect	text8
	file	"hardware.c"
	line	272
	
_cpu6502_reset:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_reset: []
	line	273
	
l5177:	
	movlb 0	; select bank0
	bcf	(24),1	;volatile
	line	274
	
l144:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_reset
	__end_of_cpu6502_reset:
	signat	_cpu6502_reset,89
	global	_cpu6502_interrupt

;; *************** function _cpu6502_interrupt *****************
;; Defined at:
;;		line 286 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	286
global __ptext9
__ptext9:	;psect for function _cpu6502_interrupt
psect	text9
	file	"hardware.c"
	line	286
	
_cpu6502_interrupt:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_interrupt: []
	line	287
	
l5181:	
	movlb 0	; select bank0
	bcf	(24),0	;volatile
	line	288
	
l150:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_interrupt
	__end_of_cpu6502_interrupt:
	signat	_cpu6502_interrupt,89
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_CLOCK_Initialize
;;		_EUSART2_Initialize
;;		_I2C2_Initialize
;;		_INTERRUPT_Initialize
;;		_PIN_MANAGER_Initialize
;;		_SPI1_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/system.c"
	line	39
global __ptext10
__ptext10:	;psect for function _SYSTEM_Initialize
psect	text10
	file	"mcc_generated_files/system/src/system.c"
	line	39
	
_SYSTEM_Initialize:	
;incstack = 0
	callstack 6
; Regs used in _SYSTEM_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l5227:	
	fcall	_CLOCK_Initialize
	line	42
	
l5229:	
	fcall	_PIN_MANAGER_Initialize
	line	43
	
l5231:	
	fcall	_EUSART2_Initialize
	line	44
	fcall	_I2C2_Initialize
	line	45
	
l5233:	
	fcall	_SPI1_Initialize
	line	46
	
l5235:	
	fcall	_INTERRUPT_Initialize
	line	47
	
l956:	
	return
	callstack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,89
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_IO_RA5_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/pins.c"
	line	39
global __ptext11
__ptext11:	;psect for function _PIN_MANAGER_Initialize
psect	text11
	file	"mcc_generated_files/system/src/pins.c"
	line	39
	
_PIN_MANAGER_Initialize:	
;incstack = 0
	callstack 6
; Regs used in _PIN_MANAGER_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l4781:	
	movlb 0	; select bank0
	clrf	(24)	;volatile
	line	45
	
l4783:	
	movlw	018h
	movwf	(25)	;volatile
	line	46
	clrf	(26)	;volatile
	line	47
	clrf	(27)	;volatile
	line	48
	clrf	(28)	;volatile
	line	49
	clrf	(29)	;volatile
	line	54
	
l4785:	
	movlw	0FFh
	movwf	(18)	;volatile
	line	55
	
l4787:	
	movlw	0DAh
	movwf	(19)	;volatile
	line	56
	clrf	(20)	;volatile
	line	57
	clrf	(21)	;volatile
	line	58
	
l4789:	
	movlw	08h
	movwf	(22)	;volatile
	line	59
	
l4791:	
	movlw	0FFh
	movwf	(23)	;volatile
	line	64
	
l4793:	
	movlw	0DFh
	movlb 62	; select bank62
	movwf	(7992)^01F00h	;volatile
	line	65
	
l4795:	
	movlw	060h
	movwf	(8003)^01F00h	;volatile
	line	66
	clrf	(8014)^01F00h	;volatile
	line	67
	clrf	(8025)^01F00h	;volatile
	line	68
	clrf	(8036)^01F00h	;volatile
	line	69
	movlb 60	; select bank60
	clrf	(7760)^01E00h	;volatile
	line	74
	
l4797:	
	movlw	020h
	movlb 62	; select bank62
	movwf	(7993)^01F00h	;volatile
	line	75
	clrf	(8004)^01F00h	;volatile
	line	76
	clrf	(8015)^01F00h	;volatile
	line	77
	clrf	(8026)^01F00h	;volatile
	line	78
	clrf	(8037)^01F00h	;volatile
	line	79
	movlb 60	; select bank60
	clrf	(7761)^01E00h	;volatile
	line	85
	movlb 62	; select bank62
	clrf	(7994)^01F00h	;volatile
	line	86
	clrf	(8005)^01F00h	;volatile
	line	87
	clrf	(8016)^01F00h	;volatile
	line	88
	clrf	(8027)^01F00h	;volatile
	line	89
	clrf	(8038)^01F00h	;volatile
	line	90
	movlb 60	; select bank60
	clrf	(7762)^01E00h	;volatile
	line	94
	
l4799:	
	movlw	0FFh
	movlb 62	; select bank62
	movwf	(7995)^01F00h	;volatile
	line	95
	
l4801:	
	movlw	0FFh
	movwf	(8006)^01F00h	;volatile
	line	96
	
l4803:	
	movlw	0FFh
	movwf	(8017)^01F00h	;volatile
	line	97
	
l4805:	
	movlw	0FFh
	movwf	(8028)^01F00h	;volatile
	line	98
	
l4807:	
	movlw	07h
	movwf	(8039)^01F00h	;volatile
	line	99
	
l4809:	
	movlw	0FFh
	movlb 60	; select bank60
	movwf	(7763)^01E00h	;volatile
	line	103
	
l4811:	
	movlw	0FFh
	movlb 62	; select bank62
	movwf	(7996)^01F00h	;volatile
	line	104
	
l4813:	
	movlw	0FFh
	movwf	(8007)^01F00h	;volatile
	line	105
	
l4815:	
	movlw	0FFh
	movwf	(8018)^01F00h	;volatile
	line	106
	
l4817:	
	movlw	0FFh
	movwf	(8029)^01F00h	;volatile
	line	107
	
l4819:	
	movlw	0Fh
	movwf	(8040)^01F00h	;volatile
	line	108
	
l4821:	
	movlw	0FFh
	movlb 60	; select bank60
	movwf	(7764)^01E00h	;volatile
	line	113
	
l4823:	
	movlw	09h
	movlb 61	; select bank61
	movwf	(7878)^01E80h	;volatile
	line	114
	
l4825:	
	movlw	0Fh
	movwf	(7885)^01E80h	;volatile
	line	115
	
l4827:	
	movlw	05h
	movwf	(7824)^01E80h	;volatile
	line	116
	
l4829:	
	movlw	016h
	movlb 62	; select bank62
	movwf	(7962)^01F00h	;volatile
	line	117
	
l4831:	
	movlw	011h
	movwf	(7965)^01F00h	;volatile
	line	118
	
l4833:	
	movlw	08h
	movlb 61	; select bank61
	movwf	(7877)^01E80h	;volatile
	line	119
	
l4835:	
	movlw	015h
	movlb 62	; select bank62
	movwf	(7960)^01F00h	;volatile
	line	120
	
l4837:	
	movlw	0Bh
	movlb 61	; select bank61
	movwf	(7880)^01E80h	;volatile
	line	121
	
l4839:	
	movlw	017h
	movlb 62	; select bank62
	movwf	(7963)^01F00h	;volatile
	line	122
	
l4841:	
	movlw	0Ch
	movlb 61	; select bank61
	movwf	(7881)^01E80h	;volatile
	line	123
	
l4843:	
	movlw	018h
	movlb 62	; select bank62
	movwf	(7964)^01F00h	;volatile
	line	132
	clrf	(7997)^01F00h	;volatile
	line	133
	
l4845:	
	movlw	020h
	movwf	(7998)^01F00h	;volatile
	line	134
	clrf	(7999)^01F00h	;volatile
	line	135
	clrf	(8008)^01F00h	;volatile
	line	136
	clrf	(8009)^01F00h	;volatile
	line	137
	clrf	(8010)^01F00h	;volatile
	line	138
	clrf	(8019)^01F00h	;volatile
	line	139
	clrf	(8020)^01F00h	;volatile
	line	140
	clrf	(8021)^01F00h	;volatile
	line	141
	clrf	(8041)^01F00h	;volatile
	line	142
	clrf	(8042)^01F00h	;volatile
	line	143
	clrf	(8043)^01F00h	;volatile
	line	145
	
l4847:	
	movlw	low(_IO_RA5_DefaultInterruptHandler)
	movlb 0	; select bank0
	movwf	(IO_RA5_SetInterruptHandler@InterruptHandler)
	movlw	high(_IO_RA5_DefaultInterruptHandler)
	movwf	((IO_RA5_SetInterruptHandler@InterruptHandler))+1
	fcall	_IO_RA5_SetInterruptHandler
	line	148
	
l4849:	
	movlb 14	; select bank14
	bsf	(1814)^0700h,4	;volatile
	line	149
	
l1170:	
	return
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,89
	global	_IO_RA5_SetInterruptHandler

;; *************** function _IO_RA5_SetInterruptHandler *****************
;; Defined at:
;;		line 178 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    2    0[BANK0 ] PTR FTN()void 
;;		 -> IO_RA5_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIN_MANAGER_Initialize
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	178
global __ptext12
__ptext12:	;psect for function _IO_RA5_SetInterruptHandler
psect	text12
	file	"mcc_generated_files/system/src/pins.c"
	line	178
	
_IO_RA5_SetInterruptHandler:	
;incstack = 0
	callstack 6
; Regs used in _IO_RA5_SetInterruptHandler: [wreg]
	line	179
	
l4627:	
	movlb 0	; select bank0
	movf	(IO_RA5_SetInterruptHandler@InterruptHandler+1),w
	movlb 1	; select bank1
	movwf	(_IO_RA5_InterruptHandler+1)^080h
	movlb 0	; select bank0
	movf	(IO_RA5_SetInterruptHandler@InterruptHandler),w
	movlb 1	; select bank1
	movwf	(_IO_RA5_InterruptHandler)^080h
	line	180
	
l1181:	
	return
	callstack 0
GLOBAL	__end_of_IO_RA5_SetInterruptHandler
	__end_of_IO_RA5_SetInterruptHandler:
	signat	_IO_RA5_SetInterruptHandler,4217
	global	_INTERRUPT_Initialize

;; *************** function _INTERRUPT_Initialize *****************
;; Defined at:
;;		line 40 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_INT_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/interrupt.c"
	line	40
global __ptext13
__ptext13:	;psect for function _INTERRUPT_Initialize
psect	text13
	file	"mcc_generated_files/system/src/interrupt.c"
	line	40
	
_INTERRUPT_Initialize:	
;incstack = 0
	callstack 6
; Regs used in _INTERRUPT_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l4851:	
	movlb 14	; select bank14
	bcf	(1804)^0700h,0	;volatile
	line	45
	
l4853:	
	movlw	low(_INT_DefaultInterruptHandler)
	movlb 0	; select bank0
	movwf	(INT_SetInterruptHandler@InterruptHandler)
	movlw	high(_INT_DefaultInterruptHandler)
	movwf	((INT_SetInterruptHandler@InterruptHandler))+1
	fcall	_INT_SetInterruptHandler
	line	46
	
l4855:	
	movlb 14	; select bank14
	bsf	(1814)^0700h,0	;volatile
	line	48
	
l991:	
	return
	callstack 0
GLOBAL	__end_of_INTERRUPT_Initialize
	__end_of_INTERRUPT_Initialize:
	signat	_INTERRUPT_Initialize,89
	global	_INT_SetInterruptHandler

;; *************** function _INT_SetInterruptHandler *****************
;; Defined at:
;;		line 119 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    2    0[BANK0 ] PTR FTN()void 
;;		 -> INT_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	119
global __ptext14
__ptext14:	;psect for function _INT_SetInterruptHandler
psect	text14
	file	"mcc_generated_files/system/src/interrupt.c"
	line	119
	
_INT_SetInterruptHandler:	
;incstack = 0
	callstack 6
; Regs used in _INT_SetInterruptHandler: [wreg]
	line	120
	
l4625:	
	movlb 0	; select bank0
	movf	(INT_SetInterruptHandler@InterruptHandler+1),w
	movwf	(_INT_InterruptHandler+1)
	movf	(INT_SetInterruptHandler@InterruptHandler),w
	movwf	(_INT_InterruptHandler)
	line	121
	
l1022:	
	return
	callstack 0
GLOBAL	__end_of_INT_SetInterruptHandler
	__end_of_INT_SetInterruptHandler:
	signat	_INT_SetInterruptHandler,4217
	global	_I2C2_Initialize

;; *************** function _I2C2_Initialize *****************
;; Defined at:
;;		line 114 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_I2C2_InterruptsEnable
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	114
global __ptext15
__ptext15:	;psect for function _I2C2_Initialize
psect	text15
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	114
	
_I2C2_Initialize:	
;incstack = 0
	callstack 6
; Regs used in _I2C2_Initialize: [status,2+status,0+pclath+cstack]
	line	117
	
l4727:	
	movlw	080h
	movlb 3	; select bank3
	movwf	(409)^0180h	;volatile
	line	119
	movlw	08h
	movwf	(410)^0180h	;volatile
	line	121
	
l4729:	
	clrf	(411)^0180h	;volatile
	line	123
	clrf	(412)^0180h	;volatile
	line	125
	
l4731:	
	movlw	04Fh
	movwf	(407)^0180h	;volatile
	line	126
	
l4733:	
	fcall	_I2C2_InterruptsEnable
	line	127
	
l4735:	
	movlb 3	; select bank3
	bsf	(410)^0180h,5	;volatile
	line	128
	
l565:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_Initialize
	__end_of_I2C2_Initialize:
	signat	_I2C2_Initialize,89
	global	_I2C2_InterruptsEnable

;; *************** function _I2C2_InterruptsEnable *****************
;; Defined at:
;;		line 474 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_Initialize
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,inline,group=0
	line	474
global __ptext16
__ptext16:	;psect for function _I2C2_InterruptsEnable
psect	text16
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	474
	
_I2C2_InterruptsEnable:	
;incstack = 0
	callstack 6
; Regs used in _I2C2_InterruptsEnable: []
	line	476
	
l4615:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,2	;volatile
	line	477
	bsf	(1817)^0700h,3	;volatile
	line	478
	
l698:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_InterruptsEnable
	__end_of_I2C2_InterruptsEnable:
	signat	_I2C2_InterruptsEnable,89
	global	_EUSART2_Initialize

;; *************** function _EUSART2_Initialize *****************
;; Defined at:
;;		line 131 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_EUSART2_FramingErrorCallbackRegister
;;		_EUSART2_OverrunErrorCallbackRegister
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	131
global __ptext17
__ptext17:	;psect for function _EUSART2_Initialize
psect	text17
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	131
	
_EUSART2_Initialize:	
;incstack = 0
	callstack 6
; Regs used in _EUSART2_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	133
	
l4737:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,7	;volatile
	line	134
	
l4739:	
	movlw	low(_EUSART2_ReceiveISR)
	movlb 1	; select bank1
	movwf	(_EUSART2_RxInterruptHandler)^080h
	movlw	high(_EUSART2_ReceiveISR)
	movwf	((_EUSART2_RxInterruptHandler)^080h)+1
	line	136
	
l4741:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,6	;volatile
	line	137
	movlw	low(_EUSART2_TransmitISR)
	movlb 1	; select bank1
	movwf	(_EUSART2_TxInterruptHandler)^080h
	movlw	high(_EUSART2_TransmitISR)
	movwf	((_EUSART2_TxInterruptHandler)^080h)+1
	line	142
	
l4743:	
	movlw	048h
	movlb 20	; select bank20
	movwf	(2591)^0A00h	;volatile
	line	144
	
l4745:	
	movlw	090h
	movwf	(2589)^0A00h	;volatile
	line	146
	
l4747:	
	movlw	026h
	movwf	(2590)^0A00h	;volatile
	line	148
	
l4749:	
	movlw	044h
	movwf	(2587)^0A00h	;volatile
	line	150
	
l4751:	
	clrf	(2588)^0A00h	;volatile
	line	152
	
l4753:	
	movlw	low(_EUSART2_DefaultFramingErrorCallback)
	movlb 0	; select bank0
	movwf	(EUSART2_FramingErrorCallbackRegister@callbackHandler)
	movlw	high(_EUSART2_DefaultFramingErrorCallback)
	movwf	((EUSART2_FramingErrorCallbackRegister@callbackHandler))+1
	fcall	_EUSART2_FramingErrorCallbackRegister
	line	153
	
l4755:	
	movlw	low(_EUSART2_DefaultOverrunErrorCallback)
	movlb 0	; select bank0
	movwf	(EUSART2_OverrunErrorCallbackRegister@callbackHandler)
	movlw	high(_EUSART2_DefaultOverrunErrorCallback)
	movwf	((EUSART2_OverrunErrorCallbackRegister@callbackHandler))+1
	fcall	_EUSART2_OverrunErrorCallbackRegister
	line	154
	
l4757:	
	movlb 1	; select bank1
	clrf	(_eusart2RxLastError)^080h	;volatile
	clrf	(_eusart2RxLastError+1)^080h	;volatile
	line	156
	
l4759:	
	movlb 0	; select bank0
	clrf	(_eusart2TxHead)	;volatile
	line	157
	
l4761:	
	clrf	(_eusart2TxTail)	;volatile
	line	158
	
l4763:	
	movlw	08h
	movwf	(_eusart2TxBufferRemaining)	;volatile
	line	160
	
l4765:	
	clrf	(_eusart2RxHead)	;volatile
	line	161
	
l4767:	
	clrf	(_eusart2RxTail)	;volatile
	line	162
	
l4769:	
	clrf	(_eusart2RxCount)	;volatile
	line	164
	
l4771:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,7	;volatile
	line	165
	
l809:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_Initialize
	__end_of_EUSART2_Initialize:
	signat	_EUSART2_Initialize,89
	global	_EUSART2_OverrunErrorCallbackRegister

;; *************** function _EUSART2_OverrunErrorCallbackRegister *****************
;; Defined at:
;;		line 420 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    2    0[BANK0 ] PTR FTN()void 
;;		 -> EUSART2_DefaultOverrunErrorCallback(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART2_Initialize
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	420
global __ptext18
__ptext18:	;psect for function _EUSART2_OverrunErrorCallbackRegister
psect	text18
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	420
	
_EUSART2_OverrunErrorCallbackRegister:	
;incstack = 0
	callstack 6
; Regs used in _EUSART2_OverrunErrorCallbackRegister: [wreg+status,2+status,0]
	line	422
	
l4621:	
	movlb 0	; select bank0
	movf	((EUSART2_OverrunErrorCallbackRegister@callbackHandler)),w
iorwf	((EUSART2_OverrunErrorCallbackRegister@callbackHandler+1)),w
	btfsc	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l915
u2810:
	line	424
	
l4623:	
	movf	(EUSART2_OverrunErrorCallbackRegister@callbackHandler+1),w
	movwf	(_EUSART2_OverrunErrorHandler+1)
	movf	(EUSART2_OverrunErrorCallbackRegister@callbackHandler),w
	movwf	(_EUSART2_OverrunErrorHandler)
	line	426
	
l915:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_OverrunErrorCallbackRegister
	__end_of_EUSART2_OverrunErrorCallbackRegister:
	signat	_EUSART2_OverrunErrorCallbackRegister,4217
	global	_EUSART2_FramingErrorCallbackRegister

;; *************** function _EUSART2_FramingErrorCallbackRegister *****************
;; Defined at:
;;		line 412 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    2    0[BANK0 ] PTR FTN()void 
;;		 -> EUSART2_DefaultFramingErrorCallback(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART2_Initialize
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	412
global __ptext19
__ptext19:	;psect for function _EUSART2_FramingErrorCallbackRegister
psect	text19
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	412
	
_EUSART2_FramingErrorCallbackRegister:	
;incstack = 0
	callstack 6
; Regs used in _EUSART2_FramingErrorCallbackRegister: [wreg+status,2+status,0]
	line	414
	
l4617:	
	movlb 0	; select bank0
	movf	((EUSART2_FramingErrorCallbackRegister@callbackHandler)),w
iorwf	((EUSART2_FramingErrorCallbackRegister@callbackHandler+1)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l911
u2800:
	line	416
	
l4619:	
	movf	(EUSART2_FramingErrorCallbackRegister@callbackHandler+1),w
	movwf	(_EUSART2_FramingErrorHandler+1)
	movf	(EUSART2_FramingErrorCallbackRegister@callbackHandler),w
	movwf	(_EUSART2_FramingErrorHandler)
	line	418
	
l911:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_FramingErrorCallbackRegister
	__end_of_EUSART2_FramingErrorCallbackRegister:
	signat	_EUSART2_FramingErrorCallbackRegister,4217
	global	_CLOCK_Initialize

;; *************** function _CLOCK_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/clock.c"
	line	39
global __ptext20
__ptext20:	;psect for function _CLOCK_Initialize
psect	text20
	file	"mcc_generated_files/system/src/clock.c"
	line	39
	
_CLOCK_Initialize:	
;incstack = 0
	callstack 7
; Regs used in _CLOCK_Initialize: [status,2]
	line	42
	
l4773:	
	movlw	010h
	movlb 17	; select bank17
	movwf	(2189)^0880h	;volatile
	line	44
	
l4775:	
	clrf	(2191)^0880h	;volatile
	line	46
	clrf	(2193)^0880h	;volatile
	line	52
	
l4777:	
	movlw	05h
	movwf	(2195)^0880h	;volatile
	line	53
	
l4779:	
	movlw	020h
	movwf	(2194)^0880h	;volatile
	line	58
	
l938:	
	line	56
	btfss	(2192)^0880h,0	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l938
u2960:
	line	59
	
l941:	
	return
	callstack 0
GLOBAL	__end_of_CLOCK_Initialize
	__end_of_CLOCK_Initialize:
	signat	_CLOCK_Initialize,89
	global	_SRAM_write_bytes

;; *************** function _SRAM_write_bytes *****************
;; Defined at:
;;		line 160 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            4    5[BANK0 ] unsigned long 
;;  len             2    9[BANK0 ] int 
;;  data            1   11[BANK0 ] PTR const unsigned char 
;;		 -> eeprom_sram_io_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  addri           2   15[BANK0 ] int 
;;  stop            2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_SRAM_deselect
;;		_SRAM_set_address
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"hardware.c"
	line	160
global __ptext21
__ptext21:	;psect for function _SRAM_write_bytes
psect	text21
	file	"hardware.c"
	line	160
	
_SRAM_write_bytes:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_write_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	162
	
l5089:	
	movlb 0	; select bank0
	bsf	(27),7	;volatile
	line	163
	bsf	(27),6	;volatile
	line	166
	
l5091:	
	clrf	(23)	;volatile
	line	168
	
l5093:	
	movf	(SRAM_write_bytes@addr),w
	addwf	(SRAM_write_bytes@len),w
	movwf	(SRAM_write_bytes@stop)
	movf	(SRAM_write_bytes@addr+1),w
	addwfc	(SRAM_write_bytes@len+1),w
	movwf	1+(SRAM_write_bytes@stop)
	line	169
	
l5095:	
	movf	(SRAM_write_bytes@addr+1),w
	movwf	(SRAM_write_bytes@addri+1)
	movf	(SRAM_write_bytes@addr),w
	movwf	(SRAM_write_bytes@addri)
	goto	l5129
	line	171
	
l5097:	
	movlb 0	; select bank0
	movf	(SRAM_write_bytes@addri+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_write_bytes@addri),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	172
	
l5099:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	175
	
l5101:	
	movlb 0	; select bank0
	bcf	(27),5	;volatile
	line	176
	
l5103:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	179
	
l5105:	
	movlb 0	; select bank0
	movf	(SRAM_write_bytes@data),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(29)	;volatile
	line	180
	
l5107:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	183
	
l5109:	
	movlb 0	; select bank0
	bcf	(27),6	;volatile
	line	184
	
l5111:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	185
	
l5113:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	186
	
l5115:	
	movlb 0	; select bank0
	bsf	(27),6	;volatile
	line	188
	
l5117:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	191
	
l5119:	
	movlb 0	; select bank0
	bsf	(27),5	;volatile
	line	193
	
l5121:	
	movlw	low(01h)
	addwf	(SRAM_write_bytes@data),f
	line	194
	
l5123:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	195
	
l5125:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	196
	
l5127:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(SRAM_write_bytes@addri),f
	movlw	0
	addwfc	(SRAM_write_bytes@addri+1),f
	
l5129:	
	movf	(SRAM_write_bytes@addri+1),w
	xorlw	80h
	movwf	(??_SRAM_write_bytes+0)+0
	movf	(SRAM_write_bytes@stop+1),w
	xorlw	80h
	subwf	(??_SRAM_write_bytes+0)+0,w
	skipz
	goto	u3095
	movf	(SRAM_write_bytes@stop),w
	subwf	(SRAM_write_bytes@addri),w
u3095:

	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l5097
u3090:
	
l131:	
	line	198
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	201
	
l5131:	
	movlw	0F3h
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	203
	
l5133:	
	fcall	_SRAM_deselect
	line	204
	movlb 0	; select bank0
	movf	(SRAM_write_bytes@len+1),w
	movwf	(?_SRAM_write_bytes+1)
	movf	(SRAM_write_bytes@len),w
	movwf	(?_SRAM_write_bytes)
	line	205
	
l132:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_write_bytes
	__end_of_SRAM_write_bytes:
	signat	_SRAM_write_bytes,12410
	global	_SRAM_write

;; *************** function _SRAM_write *****************
;; Defined at:
;;		line 119 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            2    5[BANK0 ] unsigned int 
;;  data            1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_SRAM_deselect
;;		_SRAM_set_address
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	119
global __ptext22
__ptext22:	;psect for function _SRAM_write
psect	text22
	file	"hardware.c"
	line	119
	
_SRAM_write:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_write: [wreg+status,2+status,0+pclath+cstack]
	line	121
	
l5055:	
	movlb 0	; select bank0
	bsf	(27),7	;volatile
	line	122
	bsf	(27),6	;volatile
	line	125
	
l5057:	
	movf	(SRAM_write@addr+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_write@addr),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	126
	
l5059:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	129
	
l5061:	
	movlb 0	; select bank0
	bcf	(27),5	;volatile
	line	130
	
l5063:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	133
	
l5065:	
	movlb 0	; select bank0
	clrf	(23)	;volatile
	line	136
	
l5067:	
	movf	(SRAM_write@data),w
	movwf	(29)	;volatile
	line	137
	
l5069:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	140
	
l5071:	
	movlb 0	; select bank0
	bcf	(27),6	;volatile
	line	141
	
l5073:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	142
	
l5075:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	143
	
l5077:	
	movlb 0	; select bank0
	bsf	(27),6	;volatile
	line	145
	
l5079:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	148
	
l5081:	
	movlb 0	; select bank0
	bsf	(27),5	;volatile
	line	151
	
l5083:	
	movlw	0FFh
	movwf	(23)	;volatile
	line	154
	
l5085:	
	movlw	0F3h
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	156
	
l5087:	
	fcall	_SRAM_deselect
	line	157
	
l126:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_write
	__end_of_SRAM_write:
	signat	_SRAM_write,8313
	global	_SRAM_read_bytes

;; *************** function _SRAM_read_bytes *****************
;; Defined at:
;;		line 208 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            4    5[BANK0 ] unsigned long 
;;  len             2    9[BANK0 ] int 
;;  data            1   11[BANK0 ] PTR unsigned char 
;;		 -> eeprom_sram_io_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  addri           2   15[BANK0 ] int 
;;  stop            2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_SRAM_deselect
;;		_SRAM_set_address
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	208
global __ptext23
__ptext23:	;psect for function _SRAM_read_bytes
psect	text23
	file	"hardware.c"
	line	208
	
_SRAM_read_bytes:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_read_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	210
	
l5137:	
	movlb 0	; select bank0
	bsf	(27),6	;volatile
	line	211
	bsf	(27),7	;volatile
	line	212
	bsf	(27),5	;volatile
	line	215
	
l5139:	
	movlb 60	; select bank60
	clrf	(7760)^01E00h	;volatile
	line	216
	movlb 0	; select bank0
	clrf	(29)	;volatile
	line	217
	
l5141:	
	movlw	0FFh
	movwf	(23)	;volatile
	line	218
	
l5143:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	221
	
l5145:	
	movlb 0	; select bank0
	bcf	(27),5	;volatile
	line	222
	
l5147:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	223
	
l5149:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	226
	
l5151:	
	movlb 0	; select bank0
	bcf	(27),7	;volatile
	line	228
	
l5153:	
	movf	(SRAM_read_bytes@addr),w
	addwf	(SRAM_read_bytes@len),w
	movwf	(SRAM_read_bytes@stop)
	movf	(SRAM_read_bytes@addr+1),w
	addwfc	(SRAM_read_bytes@len+1),w
	movwf	1+(SRAM_read_bytes@stop)
	line	229
	
l5155:	
	movf	(SRAM_read_bytes@addr+1),w
	movwf	(SRAM_read_bytes@addri+1)
	movf	(SRAM_read_bytes@addr),w
	movwf	(SRAM_read_bytes@addri)
	goto	l5169
	line	231
	
l5157:	
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@addri+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_read_bytes@addri),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	232
	
l5159:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	233
	
l5161:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	236
	
l5163:	
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@data),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(17),w	;volatile
	movwf	indf1
	line	237
	
l5165:	
	movlw	low(01h)
	addwf	(SRAM_read_bytes@data),f
	line	238
	
l5167:	
	movlw	01h
	addwf	(SRAM_read_bytes@addri),f
	movlw	0
	addwfc	(SRAM_read_bytes@addri+1),f
	
l5169:	
	movf	(SRAM_read_bytes@addri+1),w
	xorlw	80h
	movwf	(??_SRAM_read_bytes+0)+0
	movf	(SRAM_read_bytes@stop+1),w
	xorlw	80h
	subwf	(??_SRAM_read_bytes+0)+0,w
	skipz
	goto	u3105
	movf	(SRAM_read_bytes@stop),w
	subwf	(SRAM_read_bytes@addri),w
u3105:

	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l5157
u3100:
	
l137:	
	line	241
	movlb 0	; select bank0
	bsf	(27),7	;volatile
	line	242
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	245
	
l5171:	
	movlw	0F3h
	movlb 0	; select bank0
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	247
	
l5173:	
	fcall	_SRAM_deselect
	line	248
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@len+1),w
	movwf	(?_SRAM_read_bytes+1)
	movf	(SRAM_read_bytes@len),w
	movwf	(?_SRAM_read_bytes)
	line	249
	
l138:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_read_bytes
	__end_of_SRAM_read_bytes:
	signat	_SRAM_read_bytes,12410
	global	_SRAM_read

;; *************** function _SRAM_read *****************
;; Defined at:
;;		line 71 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  data            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_SRAM_deselect
;;		_SRAM_set_address
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	71
global __ptext24
__ptext24:	;psect for function _SRAM_read
psect	text24
	file	"hardware.c"
	line	71
	
_SRAM_read:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_read: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l5019:	
	movlb 0	; select bank0
	bsf	(27),6	;volatile
	line	76
	bsf	(27),7	;volatile
	line	77
	bsf	(27),5	;volatile
	line	80
	
l5021:	
	movlb 60	; select bank60
	clrf	(7760)^01E00h	;volatile
	line	81
	movlb 0	; select bank0
	clrf	(29)	;volatile
	line	82
	
l5023:	
	movlw	0FFh
	movwf	(23)	;volatile
	line	83
	
l5025:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	86
	
l5027:	
	movlb 0	; select bank0
	movf	(SRAM_read@addr+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_read@addr),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	89
	
l5029:	
	movlb 0	; select bank0
	bcf	(27),5	;volatile
	line	90
	
l5031:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	91
	
l5033:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	94
	
l5035:	
	movlb 0	; select bank0
	bcf	(27),7	;volatile
	line	97
	
l5037:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	98
	
l5039:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	101
	
l5041:	
	movlb 0	; select bank0
	movf	(17),w	;volatile
	movwf	(SRAM_read@data)
	line	104
	
l5043:	
	bsf	(27),7	;volatile
	line	105
	
l5045:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	108
	
l5047:	
	movlw	0F3h
	movlb 0	; select bank0
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	110
	
l5049:	
	fcall	_SRAM_deselect
	line	111
	
l5051:	
	movlb 0	; select bank0
	movf	(SRAM_read@data),w
	line	112
	
l123:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_read
	__end_of_SRAM_read:
	signat	_SRAM_read,4217
	global	_SRAM_set_address

;; *************** function _SRAM_set_address *****************
;; Defined at:
;;		line 54 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SRAM_read
;;		_SRAM_write
;;		_SRAM_write_bytes
;;		_SRAM_read_bytes
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	54
global __ptext25
__ptext25:	;psect for function _SRAM_set_address
psect	text25
	file	"hardware.c"
	line	54
	
_SRAM_set_address:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_set_address: [wreg+status,2+status,0]
	line	56
	
l4691:	
	movlw	0FFh
	movlb 0	; select bank0
	andwf	(SRAM_set_address@addr),f
	movlw	07h
	andwf	(SRAM_set_address@addr+1),f
	line	59
	movf	(SRAM_set_address@addr),w
	movwf	(26)	;volatile
	line	62
	
l4693:	
	movf	(SRAM_set_address@addr+1),w
	movwf	(??_SRAM_set_address+0)+0+1
	movf	(SRAM_set_address@addr),w
	movwf	(??_SRAM_set_address+0)+0
	movf	(??_SRAM_set_address+0)+1,w
	movwf	(??_SRAM_set_address+0)+0
	clrf	(??_SRAM_set_address+0)+1
	movlw	low(07h)
	andwf	0+(??_SRAM_set_address+0)+0,w
	movwf	(??_SRAM_set_address+2)+0
	movf	(28),w	;volatile
	andlw	0F8h
	iorwf	0+(??_SRAM_set_address+2)+0,w
	movwf	(28)	;volatile
	line	63
	
l4695:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	64
	
l120:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_set_address
	__end_of_SRAM_set_address:
	signat	_SRAM_set_address,4217
	global	_SRAM_deselect

;; *************** function _SRAM_deselect *****************
;; Defined at:
;;		line 254 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SRAM_read
;;		_SRAM_write
;;		_SRAM_write_bytes
;;		_SRAM_read_bytes
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	254
global __ptext26
__ptext26:	;psect for function _SRAM_deselect
psect	text26
	file	"hardware.c"
	line	254
	
_SRAM_deselect:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_deselect: []
	line	255
	
l4697:	
	movlb 0	; select bank0
	bsf	(27),5	;volatile
	line	258
	movlw	0FFh
	movwf	(23)	;volatile
	line	261
	bsf	(27),7	;volatile
	line	262
	bsf	(27),6	;volatile
	line	263
	
l141:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_deselect
	__end_of_SRAM_deselect:
	signat	_SRAM_deselect,89
	global	_SRAM_init

;; *************** function _SRAM_init *****************
;; Defined at:
;;		line 12 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext27
__ptext27:	;psect for function _SRAM_init
psect	text27
	file	"hardware.c"
	line	12
	
_SRAM_init:	
;incstack = 0
	callstack 8
; Regs used in _SRAM_init: [wreg+status,2+status,0]
	line	14
	
l4983:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	16
	
l4985:	
	movlb 60	; select bank60
	clrf	(7760)^01E00h	;volatile
	line	18
	
l4987:	
	movlb 0	; select bank0
	bsf	(27),7	;volatile
	line	19
	
l4989:	
	bsf	(27),6	;volatile
	line	20
	
l4991:	
	bsf	(27),5	;volatile
	line	21
	
l4993:	
	bsf	(27),4	;volatile
	line	24
	clrf	(26)	;volatile
	line	25
	
l4995:	
	movlw	low(0F8h)
	andwf	(28),f	;volatile
	line	26
	
l4997:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	27
	
l4999:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	30
	
l5001:	
	movlb 0	; select bank0
	clrf	(20)	;volatile
	line	31
	movlw	low(0F8h)
	andwf	(22),f	;volatile
	line	34
	
l5003:	
	bcf	(21),7	;volatile
	line	35
	
l5005:	
	bcf	(21),6	;volatile
	line	36
	
l5007:	
	bcf	(21),5	;volatile
	line	37
	
l5009:	
	bcf	(21),4	;volatile
	line	41
	movlw	low(0FCh)
	movlb 62	; select bank62
	andwf	(7992)^01F00h,f	;volatile
	line	44
	
l5011:	
	movlb 0	; select bank0
	bsf	(24),0	;volatile
	line	45
	
l5013:	
	bcf	(24),1	;volatile
	line	46
	
l5015:	
	bcf	(18),0	;volatile
	line	47
	
l5017:	
	bcf	(18),1	;volatile
	line	48
	
l117:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_init
	__end_of_SRAM_init:
	signat	_SRAM_init,89
	global	_M95_write_bytes

;; *************** function _M95_write_bytes *****************
;; Defined at:
;;		line 90 in file "m95_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            2    2[BANK0 ] int 
;;  num_bytes       2    4[BANK0 ] int 
;;  buf             1    6[BANK0 ] PTR void 
;;		 -> eeprom_sram_io_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  i               2   14[BANK0 ] int 
;;  to_write        2   20[BANK0 ] int 
;;  space_in_pag    2   12[BANK0 ] int 
;;  page_offset     2    8[BANK0 ] int 
;;  status          1   10[BANK0 ] unsigned char 
;;  current_addr    2   18[BANK0 ] int 
;;  remaining       2   16[BANK0 ] int 
;;  data            1   11[BANK0 ] PTR unsigned char 
;;		 -> eeprom_sram_io_buffer(64), 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      14       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      20       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_spi1_byte_exchange_hw
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"m95_eeprom.c"
	line	90
global __ptext28
__ptext28:	;psect for function _M95_write_bytes
psect	text28
	file	"m95_eeprom.c"
	line	90
	
_M95_write_bytes:	
;incstack = 0
	callstack 7
; Regs used in _M95_write_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	92
	
l4921:	
	movlb 0	; select bank0
	movf	((M95_write_bytes@buf)),w
	btfsc	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l4927
u3020:
	
l4923:	
	btfsc	(M95_write_bytes@addr+1),7
	goto	u3031
	goto	u3030
u3031:
	goto	l4927
u3030:
	
l4925:	
	movf	(M95_write_bytes@num_bytes+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movlw	(0)^80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u3045
	movlw	01h
	subwf	(M95_write_bytes@num_bytes),w
u3045:

	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l4931
u3040:
	
l4927:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(?_M95_write_bytes)
	movlw	0FFh
	movwf	((?_M95_write_bytes))+1
	goto	l60
	line	94
	
l4931:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@buf),w
	movwf	(M95_write_bytes@data)
	line	95
	movf	(M95_write_bytes@num_bytes+1),w
	movwf	(M95_write_bytes@remaining+1)
	movf	(M95_write_bytes@num_bytes),w
	movwf	(M95_write_bytes@remaining)
	line	96
	movf	(M95_write_bytes@addr+1),w
	movwf	(M95_write_bytes@current_addr+1)
	movf	(M95_write_bytes@addr),w
	movwf	(M95_write_bytes@current_addr)
	line	98
	goto	l4977
	
l62:	
	line	100
	movlb 0	; select bank0
	bcf	(24),4	;volatile
	line	101
	
l4933:	
	movlw	low(06h)
	fcall	_spi1_byte_exchange_hw
	line	102
	
l4935:	
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	105
	
l4937:	
	movlw	03Fh
	andwf	(M95_write_bytes@current_addr),w
	movwf	(M95_write_bytes@page_offset)
	movlw	0
	andwf	(M95_write_bytes@current_addr+1),w
	movwf	1+(M95_write_bytes@page_offset)
	line	106
	
l4939:	
	movlw	040h
	movwf	(??_M95_write_bytes+0)+0
	movf	(M95_write_bytes@page_offset),w
	subwf	(??_M95_write_bytes+0)+0,w
	movwf	(M95_write_bytes@space_in_page)
	comf	(M95_write_bytes@page_offset+1),w
	skipnc
	incf	wreg,f
	movwf	((M95_write_bytes@space_in_page))+1
	line	107
	
l4941:	
	movf	(M95_write_bytes@remaining+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movf	(M95_write_bytes@space_in_page+1),w
	xorlw	80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u3055
	movf	(M95_write_bytes@space_in_page),w
	subwf	(M95_write_bytes@remaining),w
u3055:

	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l4945
u3050:
	
l4943:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@space_in_page+1),w
	movwf	(M95_write_bytes@to_write+1)
	movf	(M95_write_bytes@space_in_page),w
	movwf	(M95_write_bytes@to_write)
	goto	l4947
	
l4945:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@remaining+1),w
	movwf	(M95_write_bytes@to_write+1)
	movf	(M95_write_bytes@remaining),w
	movwf	(M95_write_bytes@to_write)
	line	110
	
l4947:	
	bcf	(24),4	;volatile
	line	111
	
l4949:	
	movlw	low(02h)
	fcall	_spi1_byte_exchange_hw
	line	112
	
l4951:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@current_addr+1),w
	fcall	_spi1_byte_exchange_hw
	line	113
	
l4953:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@current_addr),w
	fcall	_spi1_byte_exchange_hw
	line	116
	
l4955:	
	movlb 0	; select bank0
	clrf	(M95_write_bytes@i)
	clrf	(M95_write_bytes@i+1)
	goto	l4961
	line	117
	
l4957:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@data),w
	addwf	(M95_write_bytes@i),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_spi1_byte_exchange_hw
	
l4959:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(M95_write_bytes@i),f
	movlw	0
	addwfc	(M95_write_bytes@i+1),f
	
l4961:	
	movf	(M95_write_bytes@i+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movf	(M95_write_bytes@to_write+1),w
	xorlw	80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u3065
	movf	(M95_write_bytes@to_write),w
	subwf	(M95_write_bytes@i),w
u3065:

	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l4957
u3060:
	
l69:	
	line	119
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	123
	
l70:	
	line	124
	bcf	(24),4	;volatile
	line	125
	
l4963:	
	movlw	low(05h)
	fcall	_spi1_byte_exchange_hw
	line	126
	
l4965:	
	movlw	low(0FFh)
	fcall	_spi1_byte_exchange_hw
	movlb 0	; select bank0
	movwf	(M95_write_bytes@status)
	line	127
	
l4967:	
	bsf	(24),4	;volatile
	line	128
	
l4969:	
	btfsc	(M95_write_bytes@status),(0)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l70
u3070:
	line	130
	
l4971:	
	movf	(M95_write_bytes@to_write),w
	addwf	(M95_write_bytes@current_addr),f
	movf	(M95_write_bytes@to_write+1),w
	addwfc	(M95_write_bytes@current_addr+1),f
	line	131
	
l4973:	
	movf	(M95_write_bytes@to_write),w
	addwf	(M95_write_bytes@data),f
	line	132
	
l4975:	
	movf	(M95_write_bytes@to_write),w
	subwf	(M95_write_bytes@remaining),f
	movf	(M95_write_bytes@to_write+1),w
	subwfb	(M95_write_bytes@remaining+1),f
	line	98
	
l4977:	
	movf	(M95_write_bytes@remaining+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movlw	(0)^80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u3085
	movlw	01h
	subwf	(M95_write_bytes@remaining),w
u3085:

	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l62
u3080:
	line	135
	
l4979:	
	movlb 0	; select bank0
	clrf	(?_M95_write_bytes)
	clrf	(?_M95_write_bytes+1)
	line	136
	
l60:	
	return
	callstack 0
GLOBAL	__end_of_M95_write_bytes
	__end_of_M95_write_bytes:
	signat	_M95_write_bytes,12410
	global	_M95_read_bytes

;; *************** function _M95_read_bytes *****************
;; Defined at:
;;		line 73 in file "m95_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            2    2[BANK0 ] int 
;;  num_bytes       2    4[BANK0 ] int 
;;  buf             1    6[BANK0 ] PTR void 
;;		 -> eeprom_sram_io_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  i               2    9[BANK0 ] int 
;;  data            1    8[BANK0 ] PTR unsigned char 
;;		 -> eeprom_sram_io_buffer(64), 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_spi1_byte_exchange_hw
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext29
__ptext29:	;psect for function _M95_read_bytes
psect	text29
	file	"m95_eeprom.c"
	line	73
	
_M95_read_bytes:	
;incstack = 0
	callstack 7
; Regs used in _M95_read_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	75
	
l4895:	
	movlb 0	; select bank0
	movf	((M95_read_bytes@buf)),w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l4901
u2980:
	
l4897:	
	btfsc	(M95_read_bytes@addr+1),7
	goto	u2991
	goto	u2990
u2991:
	goto	l4901
u2990:
	
l4899:	
	movf	(M95_read_bytes@num_bytes+1),w
	xorlw	80h
	movwf	(??_M95_read_bytes+0)+0
	movlw	(0)^80h
	subwf	(??_M95_read_bytes+0)+0,w
	skipz
	goto	u3005
	movlw	01h
	subwf	(M95_read_bytes@num_bytes),w
u3005:

	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l48
u3000:
	
l4901:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(?_M95_read_bytes)
	movlw	0FFh
	movwf	((?_M95_read_bytes))+1
	goto	l51
	
l48:	
	line	77
	movlb 0	; select bank0
	bcf	(24),4	;volatile
	line	78
	
l4905:	
	movlw	low(03h)
	fcall	_spi1_byte_exchange_hw
	line	79
	movlb 0	; select bank0
	movf	(M95_read_bytes@addr+1),w
	fcall	_spi1_byte_exchange_hw
	line	80
	movlb 0	; select bank0
	movf	(M95_read_bytes@addr),w
	fcall	_spi1_byte_exchange_hw
	line	82
	
l4907:	
	movlb 0	; select bank0
	movf	(M95_read_bytes@buf),w
	movwf	(M95_read_bytes@data)
	line	83
	
l4909:	
	clrf	(M95_read_bytes@i)
	clrf	(M95_read_bytes@i+1)
	goto	l4915
	line	84
	
l4911:	
	movlb 0	; select bank0
	movf	(M95_read_bytes@data),w
	addwf	(M95_read_bytes@i),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(0FFh)
	fcall	_spi1_byte_exchange_hw
	movwf	indf1
	
l4913:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(M95_read_bytes@i),f
	movlw	0
	addwfc	(M95_read_bytes@i+1),f
	
l4915:	
	movf	(M95_read_bytes@i+1),w
	xorlw	80h
	movwf	(??_M95_read_bytes+0)+0
	movf	(M95_read_bytes@num_bytes+1),w
	xorlw	80h
	subwf	(??_M95_read_bytes+0)+0,w
	skipz
	goto	u3015
	movf	(M95_read_bytes@num_bytes),w
	subwf	(M95_read_bytes@i),w
u3015:

	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l4911
u3010:
	
l54:	
	line	86
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	87
	
l4917:	
	clrf	(?_M95_read_bytes)
	clrf	(?_M95_read_bytes+1)
	line	88
	
l51:	
	return
	callstack 0
GLOBAL	__end_of_M95_read_bytes
	__end_of_M95_read_bytes:
	signat	_M95_read_bytes,12410
	global	_M95_init

;; *************** function _M95_init *****************
;; Defined at:
;;		line 43 in file "m95_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          2   14[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_SPI1_Initialize
;;		_SPI1_Open
;;		_putch_hex
;;		_spi1_byte_exchange_hw
;;		_uart_putc
;;		_uart_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	43
global __ptext30
__ptext30:	;psect for function _M95_init
psect	text30
	file	"m95_eeprom.c"
	line	43
	
_M95_init:	
;incstack = 0
	callstack 5
; Regs used in _M95_init: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	45
	
l4857:	
	fcall	_SPI1_Initialize
	line	47
	
l4859:	
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	48
	
l4861:	
	bcf	(18),4	;volatile
	line	49
	
l4863:	
	bsf	(19),1	;volatile
	line	52
	
l4865:	
	movlw	low(04h)
	movwf	(SPI1_Open@spiConfigIndex)
	fcall	_SPI1_Open
	xorlw	low(0)&0ffh
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l4873
u2970:
	line	53
	
l4867:	
	movlw	low(((STR_1)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_1)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	54
	
l4869:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(?_M95_init)
	movlw	0FFh
	movwf	((?_M95_init))+1
	goto	l45
	line	57
	
l4873:	
	movlw	low(((STR_2)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_2)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	60
	
l4875:	
	movlb 0	; select bank0
	bcf	(24),4	;volatile
	line	61
	
l4877:	
	movlw	low(05h)
	fcall	_spi1_byte_exchange_hw
	line	62
	
l4879:	
	movlw	low(02Eh)
	fcall	_uart_putc
	line	63
	
l4881:	
	movlw	low(0FFh)
	fcall	_spi1_byte_exchange_hw
	movlb 0	; select bank0
	movwf	(??_M95_init+0)+0
	clrf	(??_M95_init+0)+0+1
	movf	0+(??_M95_init+0)+0,w
	movwf	(M95_init@status)
	movf	1+(??_M95_init+0)+0,w
	movwf	(M95_init@status+1)
	line	64
	
l4883:	
	bsf	(24),4	;volatile
	line	66
	
l4885:	
	movlw	low(((STR_3)|8000h))
	movwf	(uart_puts@s)
	movlw	high(((STR_3)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	67
	
l4887:	
	movlb 0	; select bank0
	movf	(M95_init@status),w
	fcall	_putch_hex
	line	68
	
l4889:	
	movlw	low(((STR_4)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_4)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	70
	
l4891:	
	movlb 0	; select bank0
	movf	(M95_init@status+1),w
	movwf	(?_M95_init+1)
	movf	(M95_init@status),w
	movwf	(?_M95_init)
	line	71
	
l45:	
	return
	callstack 0
GLOBAL	__end_of_M95_init
	__end_of_M95_init:
	signat	_M95_init,90
	global	_uart_puts

;; *************** function _uart_puts *****************
;; Defined at:
;;		line 10 in file "conio.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[BANK0 ] PTR unsigned char 
;;		 -> STR_43(18), STR_42(3), STR_41(4), STR_40(12), 
;;		 -> STR_39(19), STR_38(13), STR_37(15), STR_36(17), 
;;		 -> STR_35(3), STR_34(14), STR_33(16), STR_32(14), 
;;		 -> STR_31(3), STR_30(15), STR_29(17), STR_28(14), 
;;		 -> STR_27(15), STR_26(14), STR_25(14), STR_24(3), 
;;		 -> STR_23(16), STR_22(18), STR_21(14), STR_20(3), 
;;		 -> STR_19(17), STR_18(3), STR_17(18), STR_16(14), 
;;		 -> STR_15(14), STR_14(10), STR_13(4), STR_12(12), 
;;		 -> STR_11(77), STR_10(31), STR_9(31), STR_8(31), 
;;		 -> STR_7(31), STR_6(32), STR_5(81), STR_4(3), 
;;		 -> STR_3(20), STR_2(24), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_uart_putc
;; This function is called by:
;;		_M95_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	file	"conio.c"
	line	10
global __ptext31
__ptext31:	;psect for function _uart_puts
psect	text31
	file	"conio.c"
	line	10
	
_uart_puts:	
;incstack = 0
	callstack 6
; Regs used in _uart_puts: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	11
	
l4681:	
	goto	l4687
	line	12
	
l4683:	
	movf	(uart_puts@s),w
	movwf	fsr0l
	movf	((uart_puts@s+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_uart_putc
	
l4685:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(uart_puts@s),f
	movlw	0
	addwfc	(uart_puts@s+1),f
	line	11
	
l4687:	
	movlb 0	; select bank0
	movf	(uart_puts@s),w
	movwf	fsr0l
	movf	((uart_puts@s+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l4683
u2880:
	line	13
	
l1204:	
	return
	callstack 0
GLOBAL	__end_of_uart_puts
	__end_of_uart_puts:
	signat	_uart_puts,4217
	global	_spi1_byte_exchange_hw

;; *************** function _spi1_byte_exchange_hw *****************
;; Defined at:
;;		line 22 in file "m95_eeprom.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
;;  received        1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_M95_init
;;		_M95_read_bytes
;;		_M95_write_bytes
;;		_M95_read_id
;;		_M95_write_id
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	file	"m95_eeprom.c"
	line	22
global __ptext32
__ptext32:	;psect for function _spi1_byte_exchange_hw
psect	text32
	file	"m95_eeprom.c"
	line	22
	
_spi1_byte_exchange_hw:	
;incstack = 0
	callstack 7
; Regs used in _spi1_byte_exchange_hw: [wreg]
	movlb 0	; select bank0
	movwf	(spi1_byte_exchange_hw@data)
	line	25
	
l4643:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	27
	
l4645:	
	movlb 0	; select bank0
	movf	(spi1_byte_exchange_hw@data),w
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	29
	
l35:	
	movlb 14	; select bank14
	btfss	(1807)^0700h,0	;volatile
	goto	u2861
	goto	u2860
u2861:
	goto	l35
u2860:
	line	31
	
l4647:	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(spi1_byte_exchange_hw@received)
	line	33
	
l4649:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	34
	movlb 0	; select bank0
	movf	(spi1_byte_exchange_hw@received),w
	line	35
	
l38:	
	return
	callstack 0
GLOBAL	__end_of_spi1_byte_exchange_hw
	__end_of_spi1_byte_exchange_hw:
	signat	_spi1_byte_exchange_hw,4217
	global	_putch_hex

;; *************** function _putch_hex *****************
;; Defined at:
;;		line 15 in file "conio.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_uart_putc
;; This function is called by:
;;		_M95_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"conio.c"
	line	15
global __ptext33
__ptext33:	;psect for function _putch_hex
psect	text33
	file	"conio.c"
	line	15
	
_putch_hex:	
;incstack = 0
	callstack 6
; Regs used in _putch_hex: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(putch_hex@byte)
	line	16
	
l4689:	
	movf	(putch_hex@byte),w
	movwf	(??_putch_hex+0)+0
	movlw	04h
u2895:
	lsrf	(??_putch_hex+0)+0,f
	decfsz	wreg,f
	goto	u2895
	movf	(??_putch_hex+0)+0,w
	andlw	0Fh
	addlw	low(((_hex_char)|8000h))
	movwf	fsr0l
	movlw	high(((_hex_char)|8000h))
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_uart_putc
	line	17
	movlb 0	; select bank0
	movf	(putch_hex@byte),w
	andlw	0Fh
	addlw	low(((_hex_char)|8000h))
	movwf	fsr0l
	movlw	high(((_hex_char)|8000h))
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_uart_putc
	line	18
	
l1207:	
	return
	callstack 0
GLOBAL	__end_of_putch_hex
	__end_of_putch_hex:
	signat	_putch_hex,4217
	global	_uart_putc

;; *************** function _uart_putc *****************
;; Defined at:
;;		line 5 in file "conio.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_EUSART2_IsTxReady
;;		_EUSART2_Write
;; This function is called by:
;;		_M95_init
;;		_uart_puts
;;		_putch_hex
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext34
__ptext34:	;psect for function _uart_putc
psect	text34
	file	"conio.c"
	line	5
	
_uart_putc:	
;incstack = 0
	callstack 6
; Regs used in _uart_putc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(uart_putc@c)
	line	6
	
l4607:	
	
l4609:	
	fcall	_EUSART2_IsTxReady
	xorlw	low(0)&0ffh
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l4609
u2790:
	line	7
	
l4611:	
	movlb 0	; select bank0
	movf	(uart_putc@c),w
	movwf	(EUSART2_Write@txData)
	fcall	_EUSART2_Write
	line	8
	
l1198:	
	return
	callstack 0
GLOBAL	__end_of_uart_putc
	__end_of_uart_putc:
	signat	_uart_putc,4217
	global	_EUSART2_Write

;; *************** function _EUSART2_Write *****************
;; Defined at:
;;		line 353 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;  txData          1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  tempTxHead      1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_putc
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	353
global __ptext35
__ptext35:	;psect for function _EUSART2_Write
psect	text35
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	353
	
_EUSART2_Write:	
;incstack = 0
	callstack 6
; Regs used in _EUSART2_Write: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	357
	
l4591:	
	movlb 14	; select bank14
	btfsc	(1817)^0700h,6	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l4595
u2770:
	line	359
	
l4593:	
	movlb 0	; select bank0
	movf	(EUSART2_Write@txData),w
	movlb 20	; select bank20
	movwf	(2586)^0A00h	;volatile
	line	360
	goto	l892
	line	361
	
l4595:	
	movlb 0	; select bank0
	movf	((_eusart2TxBufferRemaining)),w	;volatile
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l892
u2780:
	line	363
	
l4597:	
	movf	(_eusart2TxHead),w
	addlw	low(_eusart2TxBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(EUSART2_Write@txData),w
	movwf	indf1
	line	364
	
l4599:	
	movf	(_eusart2TxHead),w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_Write@tempTxHead)
	line	366
	
l4601:	
	movf	(EUSART2_Write@tempTxHead),w
	movwf	(_eusart2TxHead)	;volatile
	line	367
	
l4603:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,6	;volatile
	line	368
	
l4605:	
	movlw	01h
	movlb 0	; select bank0
	subwf	(_eusart2TxBufferRemaining),f	;volatile
	line	373
	
l892:	
	line	374
	movlb 14	; select bank14
	bsf	(1817)^0700h,6	;volatile
	line	375
	
l895:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_Write
	__end_of_EUSART2_Write:
	signat	_EUSART2_Write,4217
	global	_EUSART2_IsTxReady

;; *************** function _EUSART2_IsTxReady *****************
;; Defined at:
;;		line 272 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_putc
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext36
__ptext36:	;psect for function _EUSART2_IsTxReady
psect	text36
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	272
	
_EUSART2_IsTxReady:	
;incstack = 0
	callstack 6
; Regs used in _EUSART2_IsTxReady: [wreg+status,2+status,0]
	line	274
	
l4587:	
	movlb 0	; select bank0
	movf	((_eusart2TxBufferRemaining)),w	;volatile
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	movlw	1
	goto	u2760
u2750:
	movlw	0
u2760:
	line	275
	
l868:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_IsTxReady
	__end_of_EUSART2_IsTxReady:
	signat	_EUSART2_IsTxReady,89
	global	_SPI1_Open

;; *************** function _SPI1_Open *****************
;; Defined at:
;;		line 99 in file "mcc_generated_files/spi/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;  spiConfigInd    1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  returnValue     1    9[BANK0 ] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_M95_init
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	99
global __ptext37
__ptext37:	;psect for function _SPI1_Open
psect	text37
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	99
	
_SPI1_Open:	
;incstack = 0
	callstack 6
; Regs used in _SPI1_Open: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	101
	
l4661:	
	line	102
	
l4663:	
	movlb 3	; select bank3
	btfsc	(400)^0180h,5	;volatile
	goto	u2871
	goto	u2870
u2871:
	goto	l4675
u2870:
	line	104
	
l4665:	
	movlw	081h
	movwf	0+(_spi1_descriptor)+04h	;volatile
	line	106
	
l4667:	
	movlb 0	; select bank0
	movf	(SPI1_Open@spiConfigIndex),w
	movwf	(??_SPI1_Open+0)+0
	clrf	(??_SPI1_Open+0)+0+1
	movf	0+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	05h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movlw	low(_spi1_configuration)
	movlb 0	; select bank0
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(_spi1_configuration)
	addwfc	(1+(?___wmul)),w
	iorlw	0x80
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 3	; select bank3
	movwf	(399)^0180h	;volatile
	line	107
	movlb 0	; select bank0
	movf	(SPI1_Open@spiConfigIndex),w
	movwf	(??_SPI1_Open+0)+0
	clrf	(??_SPI1_Open+0)+0+1
	movf	0+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	05h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movlw	low(_spi1_configuration+01h)
	movlb 0	; select bank0
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(_spi1_configuration+01h)
	addwfc	(1+(?___wmul)),w
	iorlw	0x80
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 3	; select bank3
	movwf	(400)^0180h	;volatile
	line	108
	movlb 0	; select bank0
	movf	(SPI1_Open@spiConfigIndex),w
	movwf	(??_SPI1_Open+0)+0
	clrf	(??_SPI1_Open+0)+0+1
	movf	0+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	05h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movlw	low(_spi1_configuration+02h)
	movlb 0	; select bank0
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(_spi1_configuration+02h)
	addwfc	(1+(?___wmul)),w
	iorlw	0x80
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	109
	movlb 0	; select bank0
	movf	(SPI1_Open@spiConfigIndex),w
	movwf	(??_SPI1_Open+0)+0
	clrf	(??_SPI1_Open+0)+0+1
	movf	0+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_SPI1_Open+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	05h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movlw	low(_spi1_configuration+03h)
	movlb 0	; select bank0
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(_spi1_configuration+03h)
	addwfc	(1+(?___wmul)),w
	iorlw	0x80
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 3	; select bank3
	movwf	(397)^0180h	;volatile
	line	111
	
l4669:	
	bsf	(400)^0180h,5	;volatile
	line	112
	
l4671:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,0	;volatile
	line	114
	
l4673:	
	movlw	01h
	movlb 0	; select bank0
	movwf	(SPI1_Open@returnValue)
	line	115
	goto	l4677
	line	118
	
l4675:	
	movlb 0	; select bank0
	clrf	(SPI1_Open@returnValue)
	line	120
	
l4677:	
	movf	(SPI1_Open@returnValue),w
	line	121
	
l389:	
	return
	callstack 0
GLOBAL	__end_of_SPI1_Open
	__end_of_SPI1_Open:
	signat	_SPI1_Open,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v3.00/pic/sources/c99/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPI1_Open
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v3.00/pic/sources/c99/common/Umul16.c"
	line	15
global __ptext38
__ptext38:	;psect for function ___wmul
psect	text38
	file	"/opt/microchip/xc8/v3.00/pic/sources/c99/common/Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l4629:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l4631:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l1275
u2820:
	line	46
	
l4633:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l1275:	
	line	47
	movlw	01h
	
u2835:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u2835
	line	48
	
l4635:	
	movlw	01h
	
u2845:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u2845
	line	49
	
l4637:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l4631
u2850:
	line	52
	
l4639:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l1277:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_SPI1_Initialize

;; *************** function _SPI1_Initialize *****************
;; Defined at:
;;		line 71 in file "mcc_generated_files/spi/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_SPI1_RxCompleteCallbackRegister
;; This function is called by:
;;		_M95_init
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	71
global __ptext39
__ptext39:	;psect for function _SPI1_Initialize
psect	text39
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	71
	
_SPI1_Initialize:	
;incstack = 0
	callstack 6
; Regs used in _SPI1_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
l4653:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,0	;volatile
	line	75
	bcf	(1807)^0700h,0	;volatile
	line	77
	
l4655:	
	movlb 3	; select bank3
	clrf	(399)^0180h	;volatile
	line	78
	clrf	(400)^0180h	;volatile
	line	79
	clrf	(402)^0180h	;volatile
	line	80
	clrf	(397)^0180h	;volatile
	line	83
	
l4657:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SPI1_RxCompleteCallbackRegister@CallbackHandler)
	movwf	(SPI1_RxCompleteCallbackRegister@CallbackHandler+1)
	fcall	_SPI1_RxCompleteCallbackRegister
	line	85
	
l4659:	
	clrf	0+(_spi1_descriptor)+04h	;volatile
	line	86
	
l381:	
	return
	callstack 0
GLOBAL	__end_of_SPI1_Initialize
	__end_of_SPI1_Initialize:
	signat	_SPI1_Initialize,89
	global	_SPI1_RxCompleteCallbackRegister

;; *************** function _SPI1_RxCompleteCallbackRegister *****************
;; Defined at:
;;		line 319 in file "mcc_generated_files/spi/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;  CallbackHand    2    0[BANK0 ] PTR FTN()void 
;;		 -> NULL(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPI1_Initialize
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	line	319
global __ptext40
__ptext40:	;psect for function _SPI1_RxCompleteCallbackRegister
psect	text40
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	319
	
_SPI1_RxCompleteCallbackRegister:	
;incstack = 0
	callstack 6
; Regs used in _SPI1_RxCompleteCallbackRegister: [wreg]
	line	321
	
l4613:	
	movlb 0	; select bank0
	movf	(SPI1_RxCompleteCallbackRegister@CallbackHandler+1),w
	movlb 1	; select bank1
	movwf	(_SPI1_RxCompleteCallback+1)^080h
	movlb 0	; select bank0
	movf	(SPI1_RxCompleteCallbackRegister@CallbackHandler),w
	movlb 1	; select bank1
	movwf	(_SPI1_RxCompleteCallback)^080h
	line	322
	
l452:	
	return
	callstack 0
GLOBAL	__end_of_SPI1_RxCompleteCallbackRegister
	__end_of_SPI1_RxCompleteCallbackRegister:
	signat	_SPI1_RxCompleteCallbackRegister,4217
	global	_EUSART2_RxCompleteCallbackRegister

;; *************** function _EUSART2_RxCompleteCallbackRegister *****************
;; Defined at:
;;		line 428 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    2    0[BANK0 ] PTR FTN()void 
;;		 -> onUartInput(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	428
global __ptext41
__ptext41:	;psect for function _EUSART2_RxCompleteCallbackRegister
psect	text41
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	428
	
_EUSART2_RxCompleteCallbackRegister:	
;incstack = 0
	callstack 8
; Regs used in _EUSART2_RxCompleteCallbackRegister: [wreg+status,2+status,0]
	line	430
	
l5237:	
	movlb 0	; select bank0
	movf	((EUSART2_RxCompleteCallbackRegister@callbackHandler)),w
iorwf	((EUSART2_RxCompleteCallbackRegister@callbackHandler+1)),w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l919
u3190:
	line	432
	
l5239:	
	movf	(EUSART2_RxCompleteCallbackRegister@callbackHandler+1),w
	movwf	(_EUSART2_RxCompleteInterruptHandler+1)
	movf	(EUSART2_RxCompleteCallbackRegister@callbackHandler),w
	movwf	(_EUSART2_RxCompleteInterruptHandler)
	line	434
	
l919:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_RxCompleteCallbackRegister
	__end_of_EUSART2_RxCompleteCallbackRegister:
	signat	_EUSART2_RxCompleteCallbackRegister,4217
	global	_EUSART2_ReceiveInterruptEnable

;; *************** function _EUSART2_ReceiveInterruptEnable *****************
;; Defined at:
;;		line 258 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=0
	line	258
global __ptext42
__ptext42:	;psect for function _EUSART2_ReceiveInterruptEnable
psect	text42
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	258
	
_EUSART2_ReceiveInterruptEnable:	
;incstack = 0
	callstack 8
; Regs used in _EUSART2_ReceiveInterruptEnable: []
	line	260
	
l5241:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,7	;volatile
	line	261
	
l859:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_ReceiveInterruptEnable
	__end_of_EUSART2_ReceiveInterruptEnable:
	signat	_EUSART2_ReceiveInterruptEnable,89
	global	_INTERRUPT_InterruptManager

;; *************** function _INTERRUPT_InterruptManager *****************
;; Defined at:
;;		line 57 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		NULL
;;		_EUSART2_ReceiveISR
;;		_EUSART2_TransmitISR
;;		_I2C2_ERROR_ISR
;;		_I2C2_ISR
;;		_INT_ISR
;;		_PIN_MANAGER_IOC
;;		_SPI1_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"mcc_generated_files/system/src/interrupt.c"
	line	57
	
_INTERRUPT_InterruptManager:	
;incstack = 0
	callstack 5
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _INTERRUPT_InterruptManager: [wreg-fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	60
	
i1l4555:	
	movlb 14	; select bank14
	btfss	(1814)^0700h,0	;volatile
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l996
u260_20:
	
i1l4557:	
	btfss	(1804)^0700h,0	;volatile
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l996
u261_20:
	line	62
	
i1l4559:	
	fcall	_INT_ISR
	line	63
	goto	i1l1012
	line	64
	
i1l996:	
	btfss	(1814)^0700h,4	;volatile
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l998
u262_20:
	
i1l4561:	
	btfss	(1804)^0700h,4	;volatile
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l998
u263_20:
	line	66
	
i1l4563:	
	fcall	_PIN_MANAGER_IOC
	line	67
	goto	i1l1012
	line	68
	
i1l998:	
	btfss	(11),6	;volatile
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l1006
u264_20:
	line	70
	
i1l4565:	
	btfss	(1817)^0700h,6	;volatile
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l1001
u265_20:
	
i1l4567:	
	btfss	(1807)^0700h,6	;volatile
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l1001
u266_20:
	line	72
	
i1l4569:	
	movlb 1	; select bank1
	movf	(_EUSART2_TxInterruptHandler+1)^080h,w
	movwf	pclath
	movf	(_EUSART2_TxInterruptHandler)^080h,w
	callw
	pagesel	$
	line	73
	goto	i1l1012
	line	74
	
i1l1001:	
	btfss	(1817)^0700h,7	;volatile
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l1003
u267_20:
	
i1l4571:	
	btfss	(1807)^0700h,7	;volatile
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l1003
u268_20:
	line	76
	
i1l4573:	
	movlb 1	; select bank1
	movf	(_EUSART2_RxInterruptHandler+1)^080h,w
	movwf	pclath
	movf	(_EUSART2_RxInterruptHandler)^080h,w
	callw
	pagesel	$
	line	77
	goto	i1l1012
	line	78
	
i1l1003:	
	btfss	(1817)^0700h,3	;volatile
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l1005
u269_20:
	
i1l4575:	
	btfss	(1807)^0700h,3	;volatile
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l1005
u270_20:
	line	80
	
i1l4577:	
	fcall	_I2C2_ERROR_ISR
	line	81
	goto	i1l1012
	line	82
	
i1l1005:	
	btfss	(1817)^0700h,2	;volatile
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l1007
u271_20:
	
i1l4579:	
	btfss	(1807)^0700h,2	;volatile
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l1007
u272_20:
	line	84
	
i1l4581:	
	fcall	_I2C2_ISR
	line	85
	goto	i1l1012
	line	86
	
i1l1007:	
	btfss	(1817)^0700h,0	;volatile
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l1006
u273_20:
	
i1l4583:	
	btfss	(1807)^0700h,0	;volatile
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l1006
u274_20:
	line	88
	
i1l4585:	
	fcall	_SPI1_ISR
	line	89
	goto	i1l1012
	line	93
	
i1l1006:	
	line	99
	
i1l1012:	
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	callstack 0
GLOBAL	__end_of_INTERRUPT_InterruptManager
	__end_of_INTERRUPT_InterruptManager:
	signat	_INTERRUPT_InterruptManager,89
	global	_SPI1_ISR

;; *************** function _SPI1_ISR *****************
;; Defined at:
;;		line 264 in file "mcc_generated_files/spi/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dataToWrite     1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	264
global __ptext44
__ptext44:	;psect for function _SPI1_ISR
psect	text44
	file	"mcc_generated_files/spi/src/mssp1.c"
	line	264
	
_SPI1_ISR:	
;incstack = 0
	callstack 10
; Regs used in _SPI1_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	266
	
i1l4153:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	268
	
i1l4155:	
	clrf	(SPI1_ISR@dataToWrite)
	line	270
	
i1l4157:	
	movf	(0+(_spi1_descriptor)+01h),w	;volatile
iorwf	(1+(_spi1_descriptor)+01h),w	;volatile
	btfsc	status,2
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l4169
u210_20:
	line	272
	
i1l4159:	
		movlw	129
	xorwf	(0+(_spi1_descriptor)+03h),w	;volatile
	btfsc	status,2
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l4163
u211_20:
	line	274
	
i1l4161:	
	movf	(_spi1_descriptor),w	;volatile
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movwf	indf1
	line	281
	
i1l4163:	
	movlw	low(01h)
	addwf	(_spi1_descriptor),f	;volatile
	line	283
	movf	(0+(_spi1_descriptor)+03h),w	;volatile
	btfsc	status,2
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l4167
u212_20:
	line	285
	
i1l4165:	
	movf	(_spi1_descriptor),w	;volatile
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(SPI1_ISR@dataToWrite)
	line	291
	
i1l4167:	
	movlw	01h
	subwf	0+(_spi1_descriptor)+01h,f	;volatile
	movlw	0
	subwfb	1+(_spi1_descriptor)+01h,f	;volatile
	line	292
	movf	(SPI1_ISR@dataToWrite),w
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	293
	goto	i1l449
	line	296
	
i1l4169:	
		movlw	129
	xorwf	(0+(_spi1_descriptor)+03h),w	;volatile
	btfsc	status,2
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l446
u213_20:
	
i1l4171:	
		movlw	129
	xorwf	(0+(_spi1_descriptor)+04h),w	;volatile
	btfsc	status,2
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l446
u214_20:
	line	298
	
i1l4173:	
	movf	(_spi1_descriptor),w	;volatile
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movwf	indf1
	line	303
	
i1l446:	
	line	305
	movlw	081h
	movwf	0+(_spi1_descriptor)+04h	;volatile
	line	306
	movlb 14	; select bank14
	bcf	(1817)^0700h,0	;volatile
	line	317
	
i1l449:	
	return
	callstack 0
GLOBAL	__end_of_SPI1_ISR
	__end_of_SPI1_ISR:
	signat	_SPI1_ISR,89
	global	_PIN_MANAGER_IOC

;; *************** function _PIN_MANAGER_IOC *****************
;; Defined at:
;;		line 151 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_IO_RA5_ISR
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/pins.c"
	line	151
global __ptext45
__ptext45:	;psect for function _PIN_MANAGER_IOC
psect	text45
	file	"mcc_generated_files/system/src/pins.c"
	line	151
	
_PIN_MANAGER_IOC:	
;incstack = 0
	callstack 8
; Regs used in _PIN_MANAGER_IOC: [wreg+status,2+status,0+pclath+cstack]
	line	154
	
i1l4235:	
	movlb 62	; select bank62
	btfss	(7999)^01F00h,5	;volatile
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l1174
u222_20:
	line	156
	
i1l4237:	
	fcall	_IO_RA5_ISR
	line	158
	
i1l1174:	
	return
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_IOC
	__end_of_PIN_MANAGER_IOC:
	signat	_PIN_MANAGER_IOC,89
	global	_IO_RA5_ISR

;; *************** function _IO_RA5_ISR *****************
;; Defined at:
;;		line 163 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		NULL
;;		_IO_RA5_DefaultInterruptHandler
;; This function is called by:
;;		_PIN_MANAGER_IOC
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=0
	line	163
global __ptext46
__ptext46:	;psect for function _IO_RA5_ISR
psect	text46
	file	"mcc_generated_files/system/src/pins.c"
	line	163
	
_IO_RA5_ISR:	
;incstack = 0
	callstack 8
; Regs used in _IO_RA5_ISR: [wreg+status,2+status,0+pclath+cstack]
	line	168
	
i1l3747:	
	movlb 1	; select bank1
	movf	((_IO_RA5_InterruptHandler)^080h),w
iorwf	((_IO_RA5_InterruptHandler+1)^080h),w
	btfsc	status,2
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l3751
u184_20:
	line	170
	
i1l3749:	
	movf	(_IO_RA5_InterruptHandler+1)^080h,w
	movwf	pclath
	movf	(_IO_RA5_InterruptHandler)^080h,w
	callw
	pagesel	$
	line	172
	
i1l3751:	
	movlb 62	; select bank62
	bcf	(7999)^01F00h,5	;volatile
	line	173
	
i1l1178:	
	return
	callstack 0
GLOBAL	__end_of_IO_RA5_ISR
	__end_of_IO_RA5_ISR:
	signat	_IO_RA5_ISR,89
	global	_IO_RA5_DefaultInterruptHandler

;; *************** function _IO_RA5_DefaultInterruptHandler *****************
;; Defined at:
;;		line 185 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIN_MANAGER_Initialize
;;		_IO_RA5_ISR
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=0
	line	185
global __ptext47
__ptext47:	;psect for function _IO_RA5_DefaultInterruptHandler
psect	text47
	file	"mcc_generated_files/system/src/pins.c"
	line	185
	
_IO_RA5_DefaultInterruptHandler:	
;incstack = 0
	callstack 8
; Regs used in _IO_RA5_DefaultInterruptHandler: []
	line	188
	
i1l1184:	
	return
	callstack 0
GLOBAL	__end_of_IO_RA5_DefaultInterruptHandler
	__end_of_IO_RA5_DefaultInterruptHandler:
	signat	_IO_RA5_DefaultInterruptHandler,89
	global	_INT_ISR

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 101 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_INT_CallBack
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/interrupt.c"
	line	101
global __ptext48
__ptext48:	;psect for function _INT_ISR
psect	text48
	file	"mcc_generated_files/system/src/interrupt.c"
	line	101
	
_INT_ISR:	
;incstack = 0
	callstack 8
; Regs used in _INT_ISR: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
i1l4231:	
	movlb 14	; select bank14
	bcf	(1804)^0700h,0	;volatile
	line	106
	
i1l4233:	
	fcall	_INT_CallBack
	line	107
	
i1l1015:	
	return
	callstack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
	signat	_INT_ISR,89
	global	_INT_CallBack

;; *************** function _INT_CallBack *****************
;; Defined at:
;;		line 110 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		NULL
;;		_INT_DefaultInterruptHandler
;; This function is called by:
;;		_INT_ISR
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=0
	line	110
global __ptext49
__ptext49:	;psect for function _INT_CallBack
psect	text49
	file	"mcc_generated_files/system/src/interrupt.c"
	line	110
	
_INT_CallBack:	
;incstack = 0
	callstack 8
; Regs used in _INT_CallBack: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
i1l3743:	
	movlb 0	; select bank0
	movf	((_INT_InterruptHandler)),w
iorwf	((_INT_InterruptHandler+1)),w
	btfsc	status,2
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l1019
u183_20:
	line	115
	
i1l3745:	
	movf	(_INT_InterruptHandler+1),w
	movwf	pclath
	movf	(_INT_InterruptHandler),w
	callw
	pagesel	$
	line	117
	
i1l1019:	
	return
	callstack 0
GLOBAL	__end_of_INT_CallBack
	__end_of_INT_CallBack:
	signat	_INT_CallBack,89
	global	_INT_DefaultInterruptHandler

;; *************** function _INT_DefaultInterruptHandler *****************
;; Defined at:
;;		line 123 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;;		_INT_CallBack
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1,group=0
	line	123
global __ptext50
__ptext50:	;psect for function _INT_DefaultInterruptHandler
psect	text50
	file	"mcc_generated_files/system/src/interrupt.c"
	line	123
	
_INT_DefaultInterruptHandler:	
;incstack = 0
	callstack 8
; Regs used in _INT_DefaultInterruptHandler: []
	line	126
	
i1l1025:	
	return
	callstack 0
GLOBAL	__end_of_INT_DefaultInterruptHandler
	__end_of_INT_DefaultInterruptHandler:
	signat	_INT_DefaultInterruptHandler,89
	global	_I2C2_ISR

;; *************** function _I2C2_ISR *****************
;; Defined at:
;;		line 217 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_I2C2_EventHandler
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	217
global __ptext51
__ptext51:	;psect for function _I2C2_ISR
psect	text51
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	217
	
_I2C2_ISR:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	219
	
i1l4179:	
	fcall	_I2C2_EventHandler
	line	220
	
i1l593:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_ISR
	__end_of_I2C2_ISR:
	signat	_I2C2_ISR,89
	global	_I2C2_EventHandler

;; *************** function _I2C2_EventHandler *****************
;; Defined at:
;;		line 254 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_I2C2_Close
;;		_I2C2_EVENT_ERROR
;;		_I2C2_EVENT_IDLE
;;		_I2C2_EVENT_NACK
;;		_I2C2_EVENT_RESET
;;		_I2C2_EVENT_RX
;;		_I2C2_EVENT_SEND_RD_ADDR
;;		_I2C2_EVENT_SEND_WR_ADDR
;;		_I2C2_EVENT_STOP
;;		_I2C2_EVENT_TX
;;		_I2C2_InterruptClear
;;		_I2C2_IsAddr
;;		_I2C2_IsData
;;		_I2C2_IsNack
;; This function is called by:
;;		_I2C2_ISR
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=0
	line	254
global __ptext52
__ptext52:	;psect for function _I2C2_EventHandler
psect	text52
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	254
	
_I2C2_EventHandler:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_EventHandler: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	256
	
i1l3595:	
	fcall	_I2C2_InterruptClear
	line	257
	
i1l3597:	
	movlb 3	; select bank3
	btfss	(409)^0180h,4	;volatile
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l3601
u177_20:
	line	259
	
i1l3599:	
	fcall	_I2C2_Close
	line	260
	goto	i1l3613
	line	263
	
i1l3601:	
	fcall	_I2C2_IsAddr
	xorlw	low(0)&0ffh
	skipnz
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l3607
u178_20:
	
i1l3603:	
	fcall	_I2C2_IsNack
	xorlw	low(0)&0ffh
	skipnz
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l3607
u179_20:
	line	265
	
i1l3605:	
	movlw	05h
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	266
	movlw	01h
	movwf	0+(_i2c2Status)+0Ch	;volatile
	line	267
	goto	i1l3613
	line	268
	
i1l3607:	
	fcall	_I2C2_IsData
	xorlw	low(0)&0ffh
	skipnz
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l611
u180_20:
	
i1l3609:	
	fcall	_I2C2_IsNack
	xorlw	low(0)&0ffh
	skipnz
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l611
u181_20:
	line	270
	
i1l3611:	
	movlw	05h
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	271
	movlw	02h
	movwf	0+(_i2c2Status)+0Ch	;volatile
	line	272
	goto	i1l3613
	line	276
	
i1l611:	
	line	279
	
i1l3613:	
	movlb 0	; select bank0
	movf	0+(_i2c2Status)+0Dh,w	;volatile
	movwf	(??_I2C2_EventHandler+0)+0
	clrf	(??_I2C2_EventHandler+0)+0+1
	lslf	(??_I2C2_EventHandler+0)+0,f
	rlf	(??_I2C2_EventHandler+0)+1,f
	movlw	low(_i2c2_eventTable)
	addwf	0+(??_I2C2_EventHandler+0)+0,w
	movwf	fsr0l
	movlw	high(_i2c2_eventTable)
	addwfc	1+(??_I2C2_EventHandler+0)+0,w
	iorlw	0x80
	movwf	fsr0h
	moviw	[1]fsr0
	movwf	pclath
	moviw	[0]fsr0
	callw
	pagesel	$
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	280
	
i1l614:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EventHandler
	__end_of_I2C2_EventHandler:
	signat	_I2C2_EventHandler,89
	global	_I2C2_IsNack

;; *************** function _I2C2_IsNack *****************
;; Defined at:
;;		line 454 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EventHandler
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1,group=0
	line	454
global __ptext53
__ptext53:	;psect for function _I2C2_IsNack
psect	text53
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	454
	
_I2C2_IsNack:	
;incstack = 0
	callstack 8
; Regs used in _I2C2_IsNack: [wreg+status,2+status,0]
	line	456
	
i1l3359:	
	movlb 3	; select bank3
	swapf	(411)^0180h,w	;volatile
	rrf	wreg,f
	rrf	wreg,f
	andlw	(1<<1)-1
	line	457
	
i1l686:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_IsNack
	__end_of_I2C2_IsNack:
	signat	_I2C2_IsNack,89
	global	_I2C2_IsData

;; *************** function _I2C2_IsData *****************
;; Defined at:
;;		line 459 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EventHandler
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1,group=0
	line	459
global __ptext54
__ptext54:	;psect for function _I2C2_IsData
psect	text54
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	459
	
_I2C2_IsData:	
;incstack = 0
	callstack 8
; Regs used in _I2C2_IsData: [wreg+status,2+status,0]
	line	461
	
i1l3363:	
	movlb 3	; select bank3
	swapf	(409)^0180h,w	;volatile
	rrf	wreg,f
	andlw	(1<<1)-1
	line	462
	
i1l689:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_IsData
	__end_of_I2C2_IsData:
	signat	_I2C2_IsData,89
	global	_I2C2_IsAddr

;; *************** function _I2C2_IsAddr *****************
;; Defined at:
;;		line 464 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EventHandler
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1,group=0
	line	464
global __ptext55
__ptext55:	;psect for function _I2C2_IsAddr
psect	text55
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	464
	
_I2C2_IsAddr:	
;incstack = 0
	callstack 8
; Regs used in _I2C2_IsAddr: [wreg+status,0]
	line	466
	
i1l3355:	
	clrc
	movlb 3	; select bank3
	btfss	(409)^0180h,5	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	line	467
	
i1l692:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_IsAddr
	__end_of_I2C2_IsAddr:
	signat	_I2C2_IsAddr,89
	global	_I2C2_ERROR_ISR

;; *************** function _I2C2_ERROR_ISR *****************
;; Defined at:
;;		line 222 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_I2C2_ErrorEventHandler
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1,group=0
	line	222
global __ptext56
__ptext56:	;psect for function _I2C2_ERROR_ISR
psect	text56
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	222
	
_I2C2_ERROR_ISR:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_ERROR_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	224
	
i1l4181:	
	fcall	_I2C2_ErrorEventHandler
	line	225
	
i1l596:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_ERROR_ISR
	__end_of_I2C2_ERROR_ISR:
	signat	_I2C2_ERROR_ISR,89
	global	_I2C2_ErrorEventHandler

;; *************** function _I2C2_ErrorEventHandler *****************
;; Defined at:
;;		line 282 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_I2C2_EVENT_ERROR
;;		_I2C2_EVENT_IDLE
;;		_I2C2_EVENT_NACK
;;		_I2C2_EVENT_RESET
;;		_I2C2_EVENT_RX
;;		_I2C2_EVENT_SEND_RD_ADDR
;;		_I2C2_EVENT_SEND_WR_ADDR
;;		_I2C2_EVENT_STOP
;;		_I2C2_EVENT_TX
;;		_I2C2_ErrorInterruptClear
;; This function is called by:
;;		_I2C2_ERROR_ISR
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1,group=0
	line	282
global __ptext57
__ptext57:	;psect for function _I2C2_ErrorEventHandler
psect	text57
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	282
	
_I2C2_ErrorEventHandler:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_ErrorEventHandler: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	284
	
i1l3615:	
	movlw	06h
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	285
	movlw	03h
	movwf	0+(_i2c2Status)+0Ch	;volatile
	line	286
	
i1l3617:	
	fcall	_I2C2_ErrorInterruptClear
	line	287
	
i1l3619:	
	movlb 0	; select bank0
	movf	0+(_i2c2Status)+0Dh,w	;volatile
	movwf	(??_I2C2_ErrorEventHandler+0)+0
	clrf	(??_I2C2_ErrorEventHandler+0)+0+1
	lslf	(??_I2C2_ErrorEventHandler+0)+0,f
	rlf	(??_I2C2_ErrorEventHandler+0)+1,f
	movlw	low(_i2c2_eventTable)
	addwf	0+(??_I2C2_ErrorEventHandler+0)+0,w
	movwf	fsr0l
	movlw	high(_i2c2_eventTable)
	addwfc	1+(??_I2C2_ErrorEventHandler+0)+0,w
	iorlw	0x80
	movwf	fsr0h
	moviw	[1]fsr0
	movwf	pclath
	moviw	[0]fsr0
	callw
	pagesel	$
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	289
	
i1l617:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_ErrorEventHandler
	__end_of_I2C2_ErrorEventHandler:
	signat	_I2C2_ErrorEventHandler,89
	global	_I2C2_EVENT_TX
	global	_I2C2_EVENT_IDLE
	global	_I2C2_EVENT_SEND_RD_ADDR
	global	_I2C2_EVENT_SEND_WR_ADDR
	global	_I2C2_EVENT_RX
	global	_I2C2_EVENT_NACK
	global	_I2C2_EVENT_ERROR
	global	_I2C2_EVENT_STOP
	global	_I2C2_EVENT_RESET

;; *************** function _I2C2_EVENT_RESET *****************
;; Defined at:
;;		line 391 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_I2C2_BusReset
;; This function is called by:
;;		_I2C2_EVENT_ERROR
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1,group=0
	line	391
global __ptext58
__ptext58:	;psect for function _I2C2_EVENT_RESET
psect	text58
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	391
	
_I2C2_EVENT_RESET:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_EVENT_RESET: [wreg+status,2+status,0+pclath+cstack]
	line	393
	
i1l3293:	
	fcall	_I2C2_BusReset
	line	394
	
i1l3295:	
	movlb 0	; select bank0
	clrf	(_i2c2Status)	;volatile
	line	395
	
i1l3297:	
	movlw	low(0)
	line	396
	
i1l653:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_RESET
	__end_of_I2C2_EVENT_RESET:
	signat	_I2C2_EVENT_RESET,89

;; *************** function _I2C2_EVENT_STOP *****************
;; Defined at:
;;		line 384 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_I2C2_Close
;;		_I2C2_StopSend
;; This function is called by:
;;		_I2C2_EVENT_TX
;;		_I2C2_EVENT_NACK
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text59,local,class=CODE,delta=2,merge=1,group=0
	line	384
global __ptext59
__ptext59:	;psect for function _I2C2_EVENT_STOP
psect	text59
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	384
	
_I2C2_EVENT_STOP:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_EVENT_STOP: [wreg+status,2+status,0+pclath+cstack]
	line	386
	
i1l3271:	
	fcall	_I2C2_StopSend
	line	387
	fcall	_I2C2_Close
	line	388
	
i1l3273:	
	movlw	low(0)
	line	389
	
i1l650:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_STOP
	__end_of_I2C2_EVENT_STOP:
	signat	_I2C2_EVENT_STOP,89

;; *************** function _I2C2_EVENT_ERROR *****************
;; Defined at:
;;		line 377 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E8056
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_I2C2_EVENT_RESET
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1,group=0
	line	377
global __ptext60
__ptext60:	;psect for function _I2C2_EVENT_ERROR
psect	text60
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	377
	
_I2C2_EVENT_ERROR:	
;incstack = 0
	callstack 6
; Regs used in _I2C2_EVENT_ERROR: [wreg+status,2+status,0+pclath+cstack]
	line	379
	
i1l3445:	
	line	380
	
i1l3447:	
	fcall	_I2C2_EVENT_RESET
	movwf	(I2C2_EVENT_ERROR@retEventState)
	line	381
	
i1l3449:	
	movf	(I2C2_EVENT_ERROR@retEventState),w
	line	382
	
i1l647:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_ERROR
	__end_of_I2C2_EVENT_ERROR:
	signat	_I2C2_EVENT_ERROR,89

;; *************** function _I2C2_EVENT_NACK *****************
;; Defined at:
;;		line 370 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E8056
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_I2C2_EVENT_STOP
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1,group=0
	line	370
global __ptext61
__ptext61:	;psect for function _I2C2_EVENT_NACK
psect	text61
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	370
	
_I2C2_EVENT_NACK:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_EVENT_NACK: [wreg+status,2+status,0+pclath+cstack]
	line	372
	
i1l3437:	
	line	373
	
i1l3439:	
	fcall	_I2C2_EVENT_STOP
	movwf	(I2C2_EVENT_NACK@retEventState)
	line	374
	
i1l3441:	
	movf	(I2C2_EVENT_NACK@retEventState),w
	line	375
	
i1l644:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_NACK
	__end_of_I2C2_EVENT_NACK:
	signat	_I2C2_EVENT_NACK,89

;; *************** function _I2C2_EVENT_RX *****************
;; Defined at:
;;		line 337 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E8056
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_I2C2_AckSend
;;		_I2C2_DataReceive
;;		_I2C2_IsRxBufFull
;;		_I2C2_NackSend
;;		_I2C2_ReceiveEnable
;;		_I2C2_RestartDisable
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1,group=0
	line	337
global __ptext62
__ptext62:	;psect for function _I2C2_EVENT_RX
psect	text62
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	337
	
_I2C2_EVENT_RX:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_EVENT_RX: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	339
	
i1l3411:	
	movlw	04h
	movwf	(I2C2_EVENT_RX@retEventState)
	line	341
	
i1l3413:	
	fcall	_I2C2_IsRxBufFull
	xorlw	low(0)&0ffh
	skipnz
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l3431
u154_20:
	line	343
	
i1l3415:	
	movlb 0	; select bank0
	movf	(0+(_i2c2Status)+09h),w	;volatile
iorwf	(1+(_i2c2Status)+09h),w	;volatile
	btfsc	status,2
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l3423
u155_20:
	line	345
	
i1l3417:	
	movf	0+(_i2c2Status)+07h,w	;volatile
	movwf	fsr1l
	movf	1+(_i2c2Status)+07h,w	;volatile
	movwf	fsr1h

	fcall	_I2C2_DataReceive
	movwf	indf1
	line	346
	
i1l3419:	
	movlw	01h
	movlb 0	; select bank0
	addwf	0+(_i2c2Status)+07h,f	;volatile
	movlw	0
	addwfc	1+(_i2c2Status)+07h,f	;volatile
	line	347
	
i1l3421:	
	movlw	01h
	subwf	0+(_i2c2Status)+09h,f	;volatile
	movlw	0
	subwfb	1+(_i2c2Status)+09h,f	;volatile
	line	351
	
i1l3423:	
	movf	(0+(_i2c2Status)+09h),w	;volatile
iorwf	(1+(_i2c2Status)+09h),w	;volatile
	btfsc	status,2
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l3427
u156_20:
	line	353
	
i1l3425:	
	fcall	_I2C2_AckSend
	line	354
	goto	i1l3433
	line	357
	
i1l3427:	
	fcall	_I2C2_RestartDisable
	line	358
	fcall	_I2C2_NackSend
	line	359
	
i1l3429:	
	movlw	07h
	movwf	(I2C2_EVENT_RX@retEventState)
	goto	i1l3433
	line	365
	
i1l3431:	
	fcall	_I2C2_ReceiveEnable
	line	367
	
i1l3433:	
	movf	(I2C2_EVENT_RX@retEventState),w
	line	368
	
i1l641:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_RX
	__end_of_I2C2_EVENT_RX:
	signat	_I2C2_EVENT_RX,89

;; *************** function _I2C2_EVENT_SEND_WR_ADDR *****************
;; Defined at:
;;		line 304 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_I2C2_DataTransmit
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1,group=0
	line	304
global __ptext63
__ptext63:	;psect for function _I2C2_EVENT_SEND_WR_ADDR
psect	text63
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	304
	
_I2C2_EVENT_SEND_WR_ADDR:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_EVENT_SEND_WR_ADDR: [wreg+status,2+status,0+pclath+cstack]
	line	306
	
i1l3379:	
	movlb 0	; select bank0
	lslf	0+(_i2c2Status)+01h,w	;volatile
	fcall	_I2C2_DataTransmit
	line	307
	
i1l3381:	
	movlw	low(03h)
	line	308
	
i1l626:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_SEND_WR_ADDR
	__end_of_I2C2_EVENT_SEND_WR_ADDR:
	signat	_I2C2_EVENT_SEND_WR_ADDR,89

;; *************** function _I2C2_EVENT_SEND_RD_ADDR *****************
;; Defined at:
;;		line 298 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_I2C2_DataTransmit
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1,group=0
	line	298
global __ptext64
__ptext64:	;psect for function _I2C2_EVENT_SEND_RD_ADDR
psect	text64
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	298
	
_I2C2_EVENT_SEND_RD_ADDR:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_EVENT_SEND_RD_ADDR: [wreg+status,2+status,0+pclath+cstack]
	line	300
	
i1l3373:	
	setc
	movlb 0	; select bank0
	rlf	0+(_i2c2Status)+01h,w	;volatile
	fcall	_I2C2_DataTransmit
	line	301
	
i1l3375:	
	movlw	low(04h)
	line	302
	
i1l623:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_SEND_RD_ADDR
	__end_of_I2C2_EVENT_SEND_RD_ADDR:
	signat	_I2C2_EVENT_SEND_RD_ADDR,89

;; *************** function _I2C2_EVENT_IDLE *****************
;; Defined at:
;;		line 292 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text65,local,class=CODE,delta=2,merge=1,group=0
	line	292
global __ptext65
__ptext65:	;psect for function _I2C2_EVENT_IDLE
psect	text65
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	292
	
_I2C2_EVENT_IDLE:	
;incstack = 0
	callstack 8
; Regs used in _I2C2_EVENT_IDLE: [wreg+status,2]
	line	294
	
i1l3367:	
	movlb 0	; select bank0
	clrf	(_i2c2Status)	;volatile
	line	295
	
i1l3369:	
	movlw	low(08h)
	line	296
	
i1l620:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_IDLE
	__end_of_I2C2_EVENT_IDLE:
	signat	_I2C2_EVENT_IDLE,89

;; *************** function _I2C2_EVENT_TX *****************
;; Defined at:
;;		line 310 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    1[COMMON] enum E8056
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8056
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_I2C2_DataTransmit
;;		_I2C2_EVENT_STOP
;;		_I2C2_RestartEnable
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1,group=0
	line	310
global __ptext66
__ptext66:	;psect for function _I2C2_EVENT_TX
psect	text66
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	310
	
_I2C2_EVENT_TX:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_EVENT_TX: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	312
	
i1l3385:	
	line	313
	
i1l3387:	
	movlb 0	; select bank0
	movf	(0+(_i2c2Status)+05h),w	;volatile
iorwf	(1+(_i2c2Status)+05h),w	;volatile
	btfsc	status,2
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l3397
u152_20:
	line	315
	
i1l3389:	
	movlw	01h
	subwf	0+(_i2c2Status)+05h,f	;volatile
	movlw	0
	subwfb	1+(_i2c2Status)+05h,f	;volatile
	line	316
	
i1l3391:	
	movf	0+(_i2c2Status)+03h,w	;volatile
	movwf	fsr1l
	movf	1+(_i2c2Status)+03h,w	;volatile
	movwf	fsr1h

	movf	indf1,w
	fcall	_I2C2_DataTransmit
	line	317
	
i1l3393:	
	movlw	01h
	movlb 0	; select bank0
	addwf	0+(_i2c2Status)+03h,f	;volatile
	movlw	0
	addwfc	1+(_i2c2Status)+03h,f	;volatile
	line	318
	
i1l3395:	
	movlw	03h
	movwf	(I2C2_EVENT_TX@retEventState)
	line	319
	goto	i1l3407
	line	322
	
i1l3397:	
	movf	(0+(_i2c2Status)+0Bh),w	;volatile
	btfsc	status,2
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l3405
u153_20:
	line	324
	
i1l3399:	
	clrf	0+(_i2c2Status)+0Bh	;volatile
	line	325
	
i1l3401:	
	fcall	_I2C2_RestartEnable
	line	326
	
i1l3403:	
	movlw	01h
	movwf	(I2C2_EVENT_TX@retEventState)
	line	327
	goto	i1l3407
	line	330
	
i1l3405:	
	fcall	_I2C2_EVENT_STOP
	movwf	(I2C2_EVENT_TX@retEventState)
	line	334
	
i1l3407:	
	movf	(I2C2_EVENT_TX@retEventState),w
	line	335
	
i1l633:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_EVENT_TX
	__end_of_I2C2_EVENT_TX:
	signat	_I2C2_EVENT_TX,89
	global	_I2C2_RestartEnable

;; *************** function _I2C2_RestartEnable *****************
;; Defined at:
;;		line 422 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_TX
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1,inline,group=0
	line	422
global __ptext67
__ptext67:	;psect for function _I2C2_RestartEnable
psect	text67
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	422
	
_I2C2_RestartEnable:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_RestartEnable: []
	line	424
	
i1l3269:	
	movlb 3	; select bank3
	bsf	(411)^0180h,1	;volatile
	line	425
	
i1l668:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_RestartEnable
	__end_of_I2C2_RestartEnable:
	signat	_I2C2_RestartEnable,89
	global	_I2C2_DataTransmit

;; *************** function _I2C2_DataTransmit *****************
;; Defined at:
;;		line 406 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_SEND_RD_ADDR
;;		_I2C2_EVENT_SEND_WR_ADDR
;;		_I2C2_EVENT_TX
;; This function uses a non-reentrant model
;;
psect	text68,local,class=CODE,delta=2,merge=1,group=0
	line	406
global __ptext68
__ptext68:	;psect for function _I2C2_DataTransmit
psect	text68
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	406
	
_I2C2_DataTransmit:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_DataTransmit: [wreg]
	movwf	(I2C2_DataTransmit@data)
	line	408
	
i1l3267:	
	movf	(I2C2_DataTransmit@data),w
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	409
	
i1l659:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_DataTransmit
	__end_of_I2C2_DataTransmit:
	signat	_I2C2_DataTransmit,4217
	global	_I2C2_RestartDisable

;; *************** function _I2C2_RestartDisable *****************
;; Defined at:
;;		line 427 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RX
;; This function uses a non-reentrant model
;;
psect	text69,local,class=CODE,delta=2,merge=1,inline,group=0
	line	427
global __ptext69
__ptext69:	;psect for function _I2C2_RestartDisable
psect	text69
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	427
	
_I2C2_RestartDisable:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_RestartDisable: []
	line	429
	
i1l3287:	
	movlb 3	; select bank3
	bcf	(411)^0180h,1	;volatile
	line	430
	
i1l671:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_RestartDisable
	__end_of_I2C2_RestartDisable:
	signat	_I2C2_RestartDisable,89
	global	_I2C2_ReceiveEnable

;; *************** function _I2C2_ReceiveEnable *****************
;; Defined at:
;;		line 417 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RX
;; This function uses a non-reentrant model
;;
psect	text70,local,class=CODE,delta=2,merge=1,inline,group=0
	line	417
global __ptext70
__ptext70:	;psect for function _I2C2_ReceiveEnable
psect	text70
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	417
	
_I2C2_ReceiveEnable:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_ReceiveEnable: []
	line	419
	
i1l3291:	
	movlb 3	; select bank3
	bsf	(411)^0180h,3	;volatile
	line	420
	
i1l665:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_ReceiveEnable
	__end_of_I2C2_ReceiveEnable:
	signat	_I2C2_ReceiveEnable,89
	global	_I2C2_NackSend

;; *************** function _I2C2_NackSend *****************
;; Defined at:
;;		line 448 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RX
;; This function uses a non-reentrant model
;;
psect	text71,local,class=CODE,delta=2,merge=1,inline,group=0
	line	448
global __ptext71
__ptext71:	;psect for function _I2C2_NackSend
psect	text71
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	448
	
_I2C2_NackSend:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_NackSend: []
	line	450
	
i1l3289:	
	movlb 3	; select bank3
	bsf	(411)^0180h,5	;volatile
	line	451
	bsf	(411)^0180h,4	;volatile
	line	452
	
i1l683:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_NackSend
	__end_of_I2C2_NackSend:
	signat	_I2C2_NackSend,89
	global	_I2C2_IsRxBufFull

;; *************** function _I2C2_IsRxBufFull *****************
;; Defined at:
;;		line 469 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RX
;; This function uses a non-reentrant model
;;
psect	text72,local,class=CODE,delta=2,merge=1,group=0
	line	469
global __ptext72
__ptext72:	;psect for function _I2C2_IsRxBufFull
psect	text72
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	469
	
_I2C2_IsRxBufFull:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_IsRxBufFull: [wreg+status,2+status,0]
	line	471
	
i1l3277:	
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	andlw	(1<<1)-1
	line	472
	
i1l695:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_IsRxBufFull
	__end_of_I2C2_IsRxBufFull:
	signat	_I2C2_IsRxBufFull,89
	global	_I2C2_DataReceive

;; *************** function _I2C2_DataReceive *****************
;; Defined at:
;;		line 401 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RX
;; This function uses a non-reentrant model
;;
psect	text73,local,class=CODE,delta=2,merge=1,group=0
	line	401
global __ptext73
__ptext73:	;psect for function _I2C2_DataReceive
psect	text73
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	401
	
_I2C2_DataReceive:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_DataReceive: [wreg]
	line	403
	
i1l3281:	
	movlb 3	; select bank3
	movf	(406)^0180h,w	;volatile
	line	404
	
i1l656:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_DataReceive
	__end_of_I2C2_DataReceive:
	signat	_I2C2_DataReceive,89
	global	_I2C2_AckSend

;; *************** function _I2C2_AckSend *****************
;; Defined at:
;;		line 442 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RX
;; This function uses a non-reentrant model
;;
psect	text74,local,class=CODE,delta=2,merge=1,inline,group=0
	line	442
global __ptext74
__ptext74:	;psect for function _I2C2_AckSend
psect	text74
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	442
	
_I2C2_AckSend:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_AckSend: []
	line	444
	
i1l3285:	
	movlb 3	; select bank3
	bcf	(411)^0180h,5	;volatile
	line	445
	bsf	(411)^0180h,4	;volatile
	line	446
	
i1l680:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_AckSend
	__end_of_I2C2_AckSend:
	signat	_I2C2_AckSend,89
	global	_I2C2_StopSend

;; *************** function _I2C2_StopSend *****************
;; Defined at:
;;		line 437 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_STOP
;; This function uses a non-reentrant model
;;
psect	text75,local,class=CODE,delta=2,merge=1,inline,group=0
	line	437
global __ptext75
__ptext75:	;psect for function _I2C2_StopSend
psect	text75
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	437
	
_I2C2_StopSend:	
;incstack = 0
	callstack 6
; Regs used in _I2C2_StopSend: []
	line	439
	
i1l3263:	
	movlb 3	; select bank3
	bsf	(411)^0180h,2	;volatile
	line	440
	
i1l677:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_StopSend
	__end_of_I2C2_StopSend:
	signat	_I2C2_StopSend,89
	global	_I2C2_Close

;; *************** function _I2C2_Close *****************
;; Defined at:
;;		line 242 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_I2C2_ErrorInterruptClear
;;		_I2C2_InterruptClear
;;		_I2C2_StatusFlagsClear
;; This function is called by:
;;		_I2C2_EventHandler
;;		_I2C2_EVENT_STOP
;; This function uses a non-reentrant model
;;
psect	text76,local,class=CODE,delta=2,merge=1,group=0
	line	242
global __ptext76
__ptext76:	;psect for function _I2C2_Close
psect	text76
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	242
	
_I2C2_Close:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_Close: [status,2+status,0+pclath+cstack]
	line	244
	
i1l3253:	
	movlb 0	; select bank0
	clrf	(_i2c2Status)	;volatile
	line	245
	
i1l3255:	
	movlw	0
	movwf	1+(_i2c2Status)+01h	;volatile
	movlw	0FFh
	movwf	0+(_i2c2Status)+01h	;volatile
	line	246
	clrf	0+(_i2c2Status)+03h	;volatile
	clrf	1+(_i2c2Status)+03h	;volatile
	line	247
	clrf	0+(_i2c2Status)+07h	;volatile
	clrf	1+(_i2c2Status)+07h	;volatile
	line	248
	clrf	0+(_i2c2Status)+0Dh	;volatile
	line	249
	
i1l3257:	
	fcall	_I2C2_InterruptClear
	line	250
	
i1l3259:	
	fcall	_I2C2_ErrorInterruptClear
	line	251
	
i1l3261:	
	fcall	_I2C2_StatusFlagsClear
	line	252
	
i1l605:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_Close
	__end_of_I2C2_Close:
	signat	_I2C2_Close,89
	global	_I2C2_StatusFlagsClear

;; *************** function _I2C2_StatusFlagsClear *****************
;; Defined at:
;;		line 496 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_Close
;; This function uses a non-reentrant model
;;
psect	text77,local,class=CODE,delta=2,merge=1,inline,group=0
	line	496
global __ptext77
__ptext77:	;psect for function _I2C2_StatusFlagsClear
psect	text77
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	496
	
_I2C2_StatusFlagsClear:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_StatusFlagsClear: []
	line	498
	
i1l3251:	
	movlb 3	; select bank3
	bcf	(410)^0180h,7	;volatile
	line	499
	bcf	(410)^0180h,6	;volatile
	line	500
	
i1l710:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_StatusFlagsClear
	__end_of_I2C2_StatusFlagsClear:
	signat	_I2C2_StatusFlagsClear,89
	global	_I2C2_InterruptClear

;; *************** function _I2C2_InterruptClear *****************
;; Defined at:
;;		line 486 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_Close
;;		_I2C2_EventHandler
;; This function uses a non-reentrant model
;;
psect	text78,local,class=CODE,delta=2,merge=1,inline,group=0
	line	486
global __ptext78
__ptext78:	;psect for function _I2C2_InterruptClear
psect	text78
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	486
	
_I2C2_InterruptClear:	
;incstack = 0
	callstack 8
; Regs used in _I2C2_InterruptClear: []
	line	488
	
i1l3247:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,2	;volatile
	line	489
	
i1l704:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_InterruptClear
	__end_of_I2C2_InterruptClear:
	signat	_I2C2_InterruptClear,89
	global	_I2C2_ErrorInterruptClear

;; *************** function _I2C2_ErrorInterruptClear *****************
;; Defined at:
;;		line 491 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_Close
;;		_I2C2_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text79,local,class=CODE,delta=2,merge=1,inline,group=0
	line	491
global __ptext79
__ptext79:	;psect for function _I2C2_ErrorInterruptClear
psect	text79
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	491
	
_I2C2_ErrorInterruptClear:	
;incstack = 0
	callstack 5
; Regs used in _I2C2_ErrorInterruptClear: []
	line	493
	
i1l3249:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,3	;volatile
	line	494
	
i1l707:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_ErrorInterruptClear
	__end_of_I2C2_ErrorInterruptClear:
	signat	_I2C2_ErrorInterruptClear,89
	global	_I2C2_BusReset

;; *************** function _I2C2_BusReset *****************
;; Defined at:
;;		line 411 in file "mcc_generated_files/i2c_host/src/mssp2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C2_EVENT_RESET
;; This function uses a non-reentrant model
;;
psect	text80,local,class=CODE,delta=2,merge=1,inline,group=0
	line	411
global __ptext80
__ptext80:	;psect for function _I2C2_BusReset
psect	text80
	file	"mcc_generated_files/i2c_host/src/mssp2.c"
	line	411
	
_I2C2_BusReset:	
;incstack = 0
	callstack 7
; Regs used in _I2C2_BusReset: []
	line	413
	
i1l3265:	
	movlb 3	; select bank3
	bcf	(410)^0180h,5	;volatile
	line	414
	bsf	(410)^0180h,5	;volatile
	line	415
	
i1l662:	
	return
	callstack 0
GLOBAL	__end_of_I2C2_BusReset
	__end_of_I2C2_BusReset:
	signat	_I2C2_BusReset,89
	global	_EUSART2_TransmitISR

;; *************** function _EUSART2_TransmitISR *****************
;; Defined at:
;;		line 377 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempTxTail      1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART2_Initialize
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text81,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	377
global __ptext81
__ptext81:	;psect for function _EUSART2_TransmitISR
psect	text81
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	377
	
_EUSART2_TransmitISR:	
;incstack = 0
	callstack 10
; Regs used in _EUSART2_TransmitISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	381
	
i1l4219:	
	movlw	low(08h)
	movlb 0	; select bank0
	subwf	(_eusart2TxBufferRemaining),w	;volatile
	skipnc
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l898
u221_20:
	line	383
	
i1l4221:	
	movf	(_eusart2TxTail),w
	addlw	low(_eusart2TxBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 20	; select bank20
	movwf	(2586)^0A00h	;volatile
	line	384
	
i1l4223:	
	movlb 0	; select bank0
	movf	(_eusart2TxTail),w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_TransmitISR@tempTxTail)
	line	386
	
i1l4225:	
	movf	(EUSART2_TransmitISR@tempTxTail),w
	movwf	(_eusart2TxTail)	;volatile
	line	387
	
i1l4227:	
	movlw	low(01h)
	addwf	(_eusart2TxBufferRemaining),f	;volatile
	line	388
	goto	i1l901
	line	389
	
i1l898:	
	line	391
	movlb 14	; select bank14
	bcf	(1817)^0700h,6	;volatile
	line	398
	
i1l901:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_TransmitISR
	__end_of_EUSART2_TransmitISR:
	signat	_EUSART2_TransmitISR,89
	global	_EUSART2_ReceiveISR

;; *************** function _EUSART2_ReceiveISR *****************
;; Defined at:
;;		line 308 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempRxHead      1    4[COMMON] unsigned char 
;;  regValue        1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		NULL
;;		_EUSART2_DefaultFramingErrorCallback
;;		_EUSART2_DefaultOverrunErrorCallback
;;		_onUartInput
;; This function is called by:
;;		_EUSART2_Initialize
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text82,local,class=CODE,delta=2,merge=1,group=0
	line	308
global __ptext82
__ptext82:	;psect for function _EUSART2_ReceiveISR
psect	text82
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	308
	
_EUSART2_ReceiveISR:	
;incstack = 0
	callstack 8
; Regs used in _EUSART2_ReceiveISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	314
	
i1l4183:	
	movlb 0	; select bank0
	lslf	(_eusart2RxHead),w	;volatile
	addlw	low(_eusart2RxStatusBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	316
	
i1l4185:	
	movlb 20	; select bank20
	btfss	(2589)^0A00h,1	;volatile
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l4193
u215_20:
	line	318
	
i1l4187:	
	movlb 0	; select bank0
	lslf	(_eusart2RxHead),w	;volatile
	addlw	low(_eusart2RxStatusBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	319
	
i1l4189:	
	movf	((_EUSART2_OverrunErrorHandler)),w
iorwf	((_EUSART2_OverrunErrorHandler+1)),w
	btfsc	status,2
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l4193
u216_20:
	line	321
	
i1l4191:	
	movf	(_EUSART2_OverrunErrorHandler+1),w
	movwf	pclath
	movf	(_EUSART2_OverrunErrorHandler),w
	callw
	pagesel	$
	line	324
	
i1l4193:	
	movlb 20	; select bank20
	btfss	(2589)^0A00h,2	;volatile
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l4201
u217_20:
	line	326
	
i1l4195:	
	movlb 0	; select bank0
	lslf	(_eusart2RxHead),w	;volatile
	addlw	low(_eusart2RxStatusBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	line	327
	
i1l4197:	
	movf	((_EUSART2_FramingErrorHandler)),w
iorwf	((_EUSART2_FramingErrorHandler+1)),w
	btfsc	status,2
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l4201
u218_20:
	line	329
	
i1l4199:	
	movf	(_EUSART2_FramingErrorHandler+1),w
	movwf	pclath
	movf	(_EUSART2_FramingErrorHandler),w
	callw
	pagesel	$
	line	333
	
i1l4201:	
	movlb 20	; select bank20
	movf	(2585)^0A00h,w	;volatile
	movwf	(EUSART2_ReceiveISR@regValue)
	line	335
	
i1l4203:	
	movlb 0	; select bank0
	movf	(_eusart2RxHead),w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_ReceiveISR@tempRxHead)
	line	336
	
i1l4205:	
	movf	(EUSART2_ReceiveISR@tempRxHead),w
	xorwf	(_eusart2RxTail),w	;volatile
	skipz
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l4209
u219_20:
	goto	i1l4215
	line	342
	
i1l4209:	
	movf	(_eusart2RxHead),w
	addlw	low(_eusart2RxBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(EUSART2_ReceiveISR@regValue),w
	movwf	indf1
	line	343
	
i1l4211:	
	movf	(EUSART2_ReceiveISR@tempRxHead),w
	movwf	(_eusart2RxHead)	;volatile
	line	344
	
i1l4213:	
	movlw	low(01h)
	addwf	(_eusart2RxCount),f	;volatile
	line	347
	
i1l4215:	
	movf	((_EUSART2_RxCompleteInterruptHandler)),w
iorwf	((_EUSART2_RxCompleteInterruptHandler+1)),w
	btfsc	status,2
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l888
u220_20:
	line	349
	
i1l4217:	
	movf	(_EUSART2_RxCompleteInterruptHandler+1),w
	movwf	pclath
	movf	(_EUSART2_RxCompleteInterruptHandler),w
	callw
	pagesel	$
	line	351
	
i1l888:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_ReceiveISR
	__end_of_EUSART2_ReceiveISR:
	signat	_EUSART2_ReceiveISR,89
	global	_onUartInput

;; *************** function _onUartInput *****************
;; Defined at:
;;		line 65 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  received        1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_EUSART2_IsRxReady
;;		_EUSART2_Read
;; This function is called by:
;;		_main
;;		_EUSART2_ReceiveISR
;; This function uses a non-reentrant model
;;
psect	text83,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	65
global __ptext83
__ptext83:	;psect for function _onUartInput
psect	text83
	file	"main.c"
	line	65
	
_onUartInput:	
;incstack = 0
	callstack 8
; Regs used in _onUartInput: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	66
	
i1l3563:	
	fcall	_EUSART2_IsRxReady
	xorlw	low(0)&0ffh
	skipnz
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l250
u173_20:
	line	67
	
i1l3565:	
	fcall	_EUSART2_Read
	movwf	(onUartInput@received)
	line	70
	
i1l3567:	
	movlw	low(045h)
	movlb 0	; select bank0
	subwf	(_rx_index),w	;volatile
	skipnc
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l3581
u174_20:
	line	71
	
i1l3569:	
	movf	(_rx_index),w
	addlw	low(_rx_buffer|((0x2)<<8))&0ffh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(onUartInput@received),w
	movwf	indf1
	
i1l3571:	
	movlw	low(01h)
	addwf	(_rx_index),f	;volatile
	line	74
	
i1l3573:	
		movlw	10
	xorwf	((onUartInput@received)),w
	btfsc	status,2
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l3577
u175_20:
	
i1l3575:	
		movlw	13
	xorwf	((onUartInput@received)),w
	btfss	status,2
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l250
u176_20:
	line	75
	
i1l3577:	
	movf	(_rx_index),w
	addlw	low(_rx_buffer|((0x2)<<8))&0ffh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	76
	
i1l3579:	
	movlw	01h
	movwf	(_message_ready)	;volatile
	line	77
	
i1l3581:	
	clrf	(_rx_index)	;volatile
	line	84
	
i1l250:	
	return
	callstack 0
GLOBAL	__end_of_onUartInput
	__end_of_onUartInput:
	signat	_onUartInput,89
	global	_EUSART2_Read

;; *************** function _EUSART2_Read *****************
;; Defined at:
;;		line 288 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  readValue       1    1[COMMON] unsigned char 
;;  tempRxTail      1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_onUartInput
;; This function uses a non-reentrant model
;;
psect	text84,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	288
global __ptext84
__ptext84:	;psect for function _EUSART2_Read
psect	text84
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	288
	
_EUSART2_Read:	
;incstack = 0
	callstack 8
; Regs used in _EUSART2_Read: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	290
	
i1l3331:	
	line	293
	
i1l3333:	
	movlb 0	; select bank0
	movf	(_eusart2RxTail),w
	addlw	low(_eusart2RxBuffer|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(EUSART2_Read@readValue)
	line	295
	
i1l3335:	
	movf	(_eusart2RxTail),w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_Read@tempRxTail)
	line	297
	
i1l3337:	
	movf	(EUSART2_Read@tempRxTail),w
	movwf	(_eusart2RxTail)	;volatile
	line	299
	
i1l3339:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,7	;volatile
	line	300
	
i1l3341:	
	movlb 0	; select bank0
	movf	((_eusart2RxCount)),w	;volatile
	btfsc	status,2
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l3345
u151_20:
	line	302
	
i1l3343:	
	movlw	01h
	subwf	(_eusart2RxCount),f	;volatile
	line	304
	
i1l3345:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,7	;volatile
	line	305
	
i1l3347:	
	movf	(EUSART2_Read@readValue),w
	line	306
	
i1l878:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_Read
	__end_of_EUSART2_Read:
	signat	_EUSART2_Read,89
	global	_EUSART2_IsRxReady

;; *************** function _EUSART2_IsRxReady *****************
;; Defined at:
;;		line 267 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_onUartInput
;; This function uses a non-reentrant model
;;
psect	text85,local,class=CODE,delta=2,merge=1,group=0
	line	267
global __ptext85
__ptext85:	;psect for function _EUSART2_IsRxReady
psect	text85
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	267
	
_EUSART2_IsRxReady:	
;incstack = 0
	callstack 8
; Regs used in _EUSART2_IsRxReady: [wreg+status,2+status,0]
	line	269
	
i1l3327:	
	movlb 0	; select bank0
	movf	((_eusart2RxCount)),w	;volatile
	btfss	status,2
	goto	u149_21
	goto	u149_20
u149_21:
	movlw	1
	goto	u150_20
u149_20:
	movlw	0
u150_20:
	line	270
	
i1l865:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_IsRxReady
	__end_of_EUSART2_IsRxReady:
	signat	_EUSART2_IsRxReady,89
	global	_EUSART2_DefaultOverrunErrorCallback

;; *************** function _EUSART2_DefaultOverrunErrorCallback *****************
;; Defined at:
;;		line 405 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART2_Initialize
;;		_EUSART2_ReceiveISR
;; This function uses a non-reentrant model
;;
psect	text86,local,class=CODE,delta=2,merge=1,group=0
	line	405
global __ptext86
__ptext86:	;psect for function _EUSART2_DefaultOverrunErrorCallback
psect	text86
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	405
	
_EUSART2_DefaultOverrunErrorCallback:	
;incstack = 0
	callstack 9
; Regs used in _EUSART2_DefaultOverrunErrorCallback: []
	line	408
	
i1l3657:	
	movlb 20	; select bank20
	bcf	(2589)^0A00h,4	;volatile
	line	409
	bsf	(2589)^0A00h,4	;volatile
	line	410
	
i1l907:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_DefaultOverrunErrorCallback
	__end_of_EUSART2_DefaultOverrunErrorCallback:
	signat	_EUSART2_DefaultOverrunErrorCallback,89
	global	_EUSART2_DefaultFramingErrorCallback

;; *************** function _EUSART2_DefaultFramingErrorCallback *****************
;; Defined at:
;;		line 400 in file "mcc_generated_files/uart/src/eusart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART2_Initialize
;;		_EUSART2_ReceiveISR
;; This function uses a non-reentrant model
;;
psect	text87,local,class=CODE,delta=2,merge=1,group=0
	line	400
global __ptext87
__ptext87:	;psect for function _EUSART2_DefaultFramingErrorCallback
psect	text87
	file	"mcc_generated_files/uart/src/eusart2.c"
	line	400
	
_EUSART2_DefaultFramingErrorCallback:	
;incstack = 0
	callstack 9
; Regs used in _EUSART2_DefaultFramingErrorCallback: []
	line	403
	
i1l904:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_DefaultFramingErrorCallback
	__end_of_EUSART2_DefaultFramingErrorCallback:
	signat	_EUSART2_DefaultFramingErrorCallback,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
