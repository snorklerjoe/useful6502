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
	FNCALL	_main,_uart_putc
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
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
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
	global	_rx_buffer
	global	_eeprom_read_buffer
	global	_TRISD
_TRISD	set	0x15
	global	_TRISB
_TRISB	set	0x13
	global	_TRISA
_TRISA	set	0x12
	global	_LATF
_LATF	set	0x1D
	global	_LATE
_LATE	set	0x1C
	global	_LATD
_LATD	set	0x1B
	global	_LATC
_LATC	set	0x1A
	global	_LATB
_LATB	set	0x19
	global	_LATA
_LATA	set	0x18
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PORTAbits
_PORTAbits	set	0xC
	global	_PORTF
_PORTF	set	0x11
	global	_TRISDbits
_TRISDbits	set	0x15
	global	_TRISE
_TRISE	set	0x16
	global	_TRISC
_TRISC	set	0x14
	global	_PORTE
_PORTE	set	0x10
	global	_PORTC
_PORTC	set	0xE
	global	_PORTDbits
_PORTDbits	set	0xF
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
	
STR_22:	
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
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	
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
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
STR_13:	
	retlw	10
	retlw	10
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	45	;'-'
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	93	;']'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	65	;'A'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
STR_12:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	45	;'-'
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	93	;']'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	115	;'s'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
STR_8:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	44	;','
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	93	;']'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
STR_28:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	10
	retlw	13
	retlw	77	;'M'
	retlw	57	;'9'
	retlw	53	;'5'
	retlw	95	;'_'
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	95	;'_'
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
	
STR_7:	
	retlw	83	;'S'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	58	;':'
	retlw	41	;')'
	retlw	10
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	45	;'-'
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	93	;']'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext13,class=STRCODE,delta=2,noexec
global __pstringtext13
__pstringtext13:
	
STR_9:	
	retlw	10
	retlw	13
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	10
	retlw	13
	retlw	0
psect	stringtext14,class=STRCODE,delta=2,noexec
global __pstringtext14
__pstringtext14:
	
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
psect	stringtext15,class=STRCODE,delta=2,noexec
global __pstringtext15
__pstringtext15:
	
STR_14:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	45	;'-'
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	93	;']'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext16,class=STRCODE,delta=2,noexec
global __pstringtext16
__pstringtext16:
	
STR_18:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	93	;']'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext17,class=STRCODE,delta=2,noexec
global __pstringtext17
__pstringtext17:
	
STR_27:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext18,class=STRCODE,delta=2,noexec
global __pstringtext18
__pstringtext18:
	
STR_38:	
	retlw	79	;'O'
	retlw	100	;'d'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext19,class=STRCODE,delta=2,noexec
global __pstringtext19
__pstringtext19:
	
STR_36:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext20,class=STRCODE,delta=2,noexec
global __pstringtext20
__pstringtext20:
	
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
psect	stringtext21,class=STRCODE,delta=2,noexec
global __pstringtext21
__pstringtext21:
	
STR_37:	
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext22,class=STRCODE,delta=2,noexec
global __pstringtext22
__pstringtext22:
	
STR_19:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	93	;']'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext23,class=STRCODE,delta=2,noexec
global __pstringtext23
__pstringtext23:
	
STR_48:	
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	45	;'-'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	117	;'u'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext24,class=STRCODE,delta=2,noexec
global __pstringtext24
__pstringtext24:
	
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
psect	stringtext25,class=STRCODE,delta=2,noexec
global __pstringtext25
__pstringtext25:
	
STR_43:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext26,class=STRCODE,delta=2,noexec
global __pstringtext26
__pstringtext26:
	
STR_10:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext27,class=STRCODE,delta=2,noexec
global __pstringtext27
__pstringtext27:
	
STR_40:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext28,class=STRCODE,delta=2,noexec
global __pstringtext28
__pstringtext28:
	
STR_26:	
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext29,class=STRCODE,delta=2,noexec
global __pstringtext29
__pstringtext29:
	
STR_34:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext30,class=STRCODE,delta=2,noexec
global __pstringtext30
__pstringtext30:
	
STR_32:	
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext31,class=STRCODE,delta=2,noexec
global __pstringtext31
__pstringtext31:
	
STR_30:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext32,class=STRCODE,delta=2,noexec
global __pstringtext32
__pstringtext32:
	
STR_39:	
	retlw	65	;'A'
	retlw	98	;'b'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext33,class=STRCODE,delta=2,noexec
global __pstringtext33
__pstringtext33:
	
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
psect	stringtext34,class=STRCODE,delta=2,noexec
global __pstringtext34
__pstringtext34:
	
STR_35:	
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext35,class=STRCODE,delta=2,noexec
global __pstringtext35
__pstringtext35:
	
STR_47:	
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	117	;'u'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext36,class=STRCODE,delta=2,noexec
global __pstringtext36
__pstringtext36:
	
STR_42:	
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext37,class=STRCODE,delta=2,noexec
global __pstringtext37
__pstringtext37:
	
STR_41:	
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	107	;'k'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext38,class=STRCODE,delta=2,noexec
global __pstringtext38
__pstringtext38:
	
STR_45:	
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	45	;'-'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext39,class=STRCODE,delta=2,noexec
global __pstringtext39
__pstringtext39:
	
STR_11:	
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	45	;'-'
	retlw	48	;'0'
	retlw	120	;'x'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	93	;']'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext40,class=STRCODE,delta=2,noexec
global __pstringtext40
__pstringtext40:
	
STR_33:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext41,class=STRCODE,delta=2,noexec
global __pstringtext41
__pstringtext41:
	
STR_46:	
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext42,class=STRCODE,delta=2,noexec
global __pstringtext42
__pstringtext42:
	
STR_23:	
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
psect	stringtext43,class=STRCODE,delta=2,noexec
global __pstringtext43
__pstringtext43:
	
STR_20:	
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	91	;'['
	retlw	48	;'0'
	retlw	93	;']'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	0
psect	stringtext44,class=STRCODE,delta=2,noexec
global __pstringtext44
__pstringtext44:
	
STR_31:	
	retlw	32	;' '
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	46	;'.'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext45,class=STRCODE,delta=2,noexec
global __pstringtext45
__pstringtext45:
	
STR_44:	
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext46,class=STRCODE,delta=2,noexec
global __pstringtext46
__pstringtext46:
	
STR_24:	
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	0
psect	stringtext47,class=STRCODE,delta=2,noexec
global __pstringtext47
__pstringtext47:
STR_16	equ	STR_11+0
STR_15	equ	STR_10+0
STR_17	equ	STR_12+0
STR_21	equ	STR_12+0
STR_29	equ	STR_18+24
STR_25	equ	STR_9+30
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

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
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

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
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

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"m95_eeprom.c"
	line	19
_buf:
       ds      2

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_cmd_buffer:
       ds      64

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_rx_buffer:
       ds      64

psect	bssBANK5,class=BANK5,space=1,noexec
global __pbssBANK5
__pbssBANK5:
_eeprom_read_buffer:
       ds      64

	file	"main.s"
	line	#
; Initialize objects allocated to BANK2
	global __pidataBANK2,__pdataBANK2
psect cinit,class=CODE,delta=2,merge=1
	movlb 2	; select bank2
	fcall	__pidataBANK2+0		;fetch initializer
	movwf	__pdataBANK2+0&07fh		
	fcall	__pidataBANK2+1		;fetch initializer
	movwf	__pdataBANK2+1&07fh		
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
	movlw	0Eh
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	010h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	02Eh
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
	movlw	040h
	fcall	clear_ram0
; Clear objects allocated to BANK5
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK5
	movlw	low(__pbssBANK5)
	movwf	fsr0l
	movlw	high(__pbssBANK5)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	global	main@sram_buf
main@sram_buf:	; 16 bytes @ 0x0
	ds	16
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@data_541
main@data_541:	; 32 bytes @ 0x0
	ds	32
	global	main@sram_buf_551
main@sram_buf_551:	; 32 bytes @ 0x20
	ds	32
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
	global	M95_write_bytes@data
M95_write_bytes@data:	; 1 bytes @ 0xA
	global	hexstr_to_uint@val
hexstr_to_uint@val:	; 2 bytes @ 0xA
	ds	1
	global	SRAM_write_bytes@data
SRAM_write_bytes@data:	; 1 bytes @ 0xB
	global	M95_write_bytes@space_in_page
M95_write_bytes@space_in_page:	; 2 bytes @ 0xB
	global	SRAM_read_bytes@data
SRAM_read_bytes@data:	; 2 bytes @ 0xB
	ds	1
	global	hexstr_to_bytes@hi
hexstr_to_bytes@hi:	; 2 bytes @ 0xC
	global	hexstr_to_uint@i
hexstr_to_uint@i:	; 2 bytes @ 0xC
??_M95_init:	; 1 bytes @ 0xC
??_SRAM_write_bytes:	; 1 bytes @ 0xC
	ds	1
	global	M95_write_bytes@i
M95_write_bytes@i:	; 2 bytes @ 0xD
	global	SRAM_write_bytes@stop
SRAM_write_bytes@stop:	; 2 bytes @ 0xD
??_SRAM_read_bytes:	; 1 bytes @ 0xD
	ds	1
	global	M95_init@status
M95_init@status:	; 2 bytes @ 0xE
	global	SRAM_read_bytes@stop
SRAM_read_bytes@stop:	; 2 bytes @ 0xE
	global	hexstr_to_bytes@lo
hexstr_to_bytes@lo:	; 2 bytes @ 0xE
	ds	1
	global	M95_write_bytes@remaining
M95_write_bytes@remaining:	; 2 bytes @ 0xF
	global	SRAM_write_bytes@addri
SRAM_write_bytes@addri:	; 2 bytes @ 0xF
	ds	1
	global	SRAM_read_bytes@addri
SRAM_read_bytes@addri:	; 2 bytes @ 0x10
	global	hexstr_to_bytes@bytes
hexstr_to_bytes@bytes:	; 2 bytes @ 0x10
	ds	1
	global	M95_write_bytes@current_addr
M95_write_bytes@current_addr:	; 2 bytes @ 0x11
	ds	1
	global	hexstr_to_bytes@i
hexstr_to_bytes@i:	; 2 bytes @ 0x12
	ds	1
	global	M95_write_bytes@to_write
M95_write_bytes@to_write:	; 2 bytes @ 0x13
	ds	2
	global	main@data
main@data:	; 32 bytes @ 0x15
??_main:	; 1 bytes @ 0x15
	ds	32
;!
;!Data Sizes:
;!    Strings     1021
;!    Constant    156
;!    Data        2
;!    BSS         273
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80     53      67
;!    BANK1            80     64      80
;!    BANK2            80     16      64
;!    BANK3            80      0      64
;!    BANK4            80      0      64
;!    BANK5            80      0      64
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
;!    hexstr_to_bytes@out	PTR unsigned char  size(1) Largest target is 32
;!		 -> main@data(BANK0[32]), main@data_541(BANK1[32]), 
;!
;!    hexstr_to_bytes@str	PTR const unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
;!
;!    hexstr_to_uint@str	PTR const unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
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
;!		 -> eeprom_read_buffer(BANK5[64]), 
;!
;!    M95_read_bytes@data	PTR unsigned char  size(1) Largest target is 64
;!		 -> eeprom_read_buffer(BANK5[64]), 
;!
;!    M95_write_bytes@buf	PTR void  size(1) Largest target is 32
;!		 -> main@data(BANK0[32]), 
;!
;!    M95_write_bytes@data	PTR unsigned char  size(1) Largest target is 32
;!		 -> main@data(BANK0[32]), 
;!
;!    NULL$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S1636$17$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S1636$18$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> onUartInput(), 
;!
;!    S1636$20$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultFramingErrorCallback(), 
;!
;!    S1636$21$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_DefaultOverrunErrorCallback(), 
;!
;!    S1636$AutoBaudEventEnableGet	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$AutoBaudQuery	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_AutoBaudQuery(), 
;!
;!    S1636$AutoBaudSet	PTR FTN(_Bool ,)void  size(2) Largest target is 1
;!		 -> EUSART2_AutoBaudSet(), 
;!
;!    S1636$BaudRateGet	PTR FTN()unsigned long  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$BaudRateSet	PTR FTN(unsigned long ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$BRGCountGet	PTR FTN()unsigned long  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$BRGCountSet	PTR FTN(unsigned long ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_Deinitialize(), 
;!
;!    S1636$ErrorGet	PTR FTN()unsigned int  size(2) Largest target is 2
;!		 -> EUSART2_ErrorGet(), 
;!
;!    S1636$EventCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$FramingErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_FramingErrorCallbackRegister(), 
;!
;!    S1636$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_Initialize(), 
;!
;!    S1636$IsRxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsRxReady(), 
;!
;!    S1636$IsTxDone	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsTxDone(), 
;!
;!    S1636$IsTxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> EUSART2_IsTxReady(), 
;!
;!    S1636$OverrunErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_OverrunErrorCallbackRegister(), 
;!
;!    S1636$ParityErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$Read	PTR FTN()unsigned char  size(2) Largest target is 1
;!		 -> EUSART2_Read(), 
;!
;!    S1636$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_RxCompleteCallbackRegister(), 
;!
;!    S1636$TransmitDisable	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitDisable(), 
;!
;!    S1636$TransmitEnable	PTR FTN()void  size(2) Largest target is 1
;!		 -> EUSART2_TransmitEnable(), 
;!
;!    S1636$TxCollisionCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S1636$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> EUSART2_TxCompleteCallbackRegister(), 
;!
;!    S1636$Write	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> EUSART2_Write(), 
;!
;!    S585$12$0	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S585$4$0	PTR void  size(2) Largest target is 0
;!
;!    S585$5$0	PTR void  size(2) Largest target is 0
;!
;!    S585$6$0	PTR void  size(2) Largest target is 0
;!
;!    S585SPI_INTERFACE$BufferExchange	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferExchange(), 
;!
;!    S585SPI_INTERFACE$BufferRead	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferRead(), 
;!
;!    S585SPI_INTERFACE$BufferWrite	PTR FTN(PTR void ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> SPI1_BufferWrite(), 
;!
;!    S585SPI_INTERFACE$ByteExchange	PTR FTN(unsigned char ,)unsigned char  size(2) Largest target is 1
;!		 -> SPI1_ByteExchange(), 
;!
;!    S585SPI_INTERFACE$ByteRead	PTR FTN()unsigned char  size(2) Largest target is 1
;!		 -> SPI1_ByteRead(), 
;!
;!    S585SPI_INTERFACE$ByteWrite	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> SPI1_ByteWrite(), 
;!
;!    S585SPI_INTERFACE$Close	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Close(), 
;!
;!    S585SPI_INTERFACE$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Deinitialize(), 
;!
;!    S585SPI_INTERFACE$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> SPI1_Initialize(), 
;!
;!    S585SPI_INTERFACE$IsRxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> SPI1_IsRxReady(), 
;!
;!    S585SPI_INTERFACE$IsTxReady	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> SPI1_IsTxReady(), 
;!
;!    S585SPI_INTERFACE$Open	PTR FTN(unsigned char ,)_Bool  size(2) Largest target is 1
;!		 -> SPI1_Open(), 
;!
;!    S585SPI_INTERFACE$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> SPI1_RxCompleteCallbackRegister(), 
;!
;!    S585SPI_INTERFACE$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S684$buffer	PTR unsigned char  size(1) Largest target is 1
;!		 -> SPI1_ByteExchange@byteData(COMMON[1]), NULL(NULL[0]), 
;!
;!    S878$2$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S878$3$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S878$4$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S878$4$3	PTR unsigned char  size(2) Largest target is 0
;!
;!    S878$8$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S878$CallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> I2C2_CallbackRegister(), 
;!
;!    S878$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C2_Deinitialize(), 
;!
;!    S878$ErrorGet	PTR FTN()enum E8047 size(2) Largest target is 1
;!		 -> I2C2_ErrorGet(), 
;!
;!    S878$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C2_Initialize(), 
;!
;!    S878$IsBusy	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> I2C2_IsBusy(), 
;!
;!    S878$Read	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_Read(), 
;!
;!    S878$Tasks	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S878$TransferSetup	PTR FTN(PTR struct i2c_transfer_setup,unsigned long ,)_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S878$Write	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_Write(), 
;!
;!    S878$WriteRead	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C2_WriteRead(), 
;!
;!    S977$readPtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S977$writePtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
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
;!    SRAM_read_bytes@data	PTR unsigned char  size(2) Largest target is 32
;!		 -> main@sram_buf(BANK2[16]), main@sram_buf_551(BANK1[32]), 
;!
;!    SRAM_write_bytes@data	PTR const unsigned char  size(1) Largest target is 32
;!		 -> main@data_541(BANK1[32]), 
;!
;!    strcpy@d	PTR unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
;!
;!    strcpy@dest	PTR unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
;!
;!    strcpy@src	PTR const unsigned char  size(1) Largest target is 64
;!		 -> rx_buffer(BANK4[64]), 
;!
;!    strlen@a	PTR const unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 64
;!		 -> cmd_buffer(BANK3[64]), 
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
;!    uart_puts@s	PTR unsigned char  size(2) Largest target is 77
;!		 -> rx_buffer(BANK4[64]), STR_1(CODE[18]), STR_10(CODE[19]), STR_11(CODE[15]), 
;!		 -> STR_12(CODE[48]), STR_13(CODE[62]), STR_14(CODE[32]), STR_15(CODE[19]), 
;!		 -> STR_16(CODE[15]), STR_17(CODE[48]), STR_18(CODE[28]), STR_19(CODE[21]), 
;!		 -> STR_2(CODE[24]), STR_20(CODE[11]), STR_21(CODE[48]), STR_22(CODE[77]), 
;!		 -> STR_23(CODE[12]), STR_24(CODE[4]), STR_25(CODE[4]), STR_26(CODE[19]), 
;!		 -> STR_27(CODE[27]), STR_28(CODE[39]), STR_29(CODE[4]), STR_3(CODE[20]), 
;!		 -> STR_30(CODE[18]), STR_31(CODE[10]), STR_32(CODE[18]), STR_33(CODE[14]), 
;!		 -> STR_34(CODE[18]), STR_35(CODE[17]), STR_36(CODE[25]), STR_37(CODE[22]), 
;!		 -> STR_38(CODE[27]), STR_39(CODE[18]), STR_4(CODE[3]), STR_40(CODE[19]), 
;!		 -> STR_41(CODE[16]), STR_42(CODE[16]), STR_43(CODE[19]), STR_44(CODE[7]), 
;!		 -> STR_45(CODE[16]), STR_46(CODE[13]), STR_47(CODE[17]), STR_48(CODE[20]), 
;!		 -> STR_5(CODE[71]), STR_6(CODE[32]), STR_7(CODE[37]), STR_8(CODE[41]), 
;!		 -> STR_9(CODE[34]), 
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               158   158      0    8757
;!                                             21 BANK0     32    32      0
;!                                              0 BANK1     64    64      0
;!                                              0 BANK2     16    16      0
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
;!                          _uart_putc
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
;! (1) _SRAM_write_bytes                                    12     5      7     364
;!                                              5 BANK0     12     5      7
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_write                                           3     0      3     175
;!                                              5 BANK0      3     0      3
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_read_bytes                                     13     5      8     413
;!                                              5 BANK0     13     5      8
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_read                                            3     1      2     175
;!                                              5 BANK0      3     1      2
;!                      _SRAM_deselect
;!                   _SRAM_set_address
;! ---------------------------------------------------------------------------------
;! (2) _SRAM_set_address                                     5     3      2      95
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _SRAM_deselect                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SRAM_init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _M95_write_bytes                                     19    14      5     808
;!                                              2 BANK0     19    14      5
;!              _spi1_byte_exchange_hw
;! ---------------------------------------------------------------------------------
;! (1) _M95_read_bytes                                       9     4      5     409
;!                                              2 BANK0      9     4      5
;!              _spi1_byte_exchange_hw
;! ---------------------------------------------------------------------------------
;! (1) _M95_init                                             6     4      2    1251
;!                                             10 BANK0      6     4      2
;!                    _SPI1_Initialize
;!                          _SPI1_Open
;!                          _putch_hex
;!              _spi1_byte_exchange_hw
;!                          _uart_putc
;!                          _uart_puts
;! ---------------------------------------------------------------------------------
;! (1) _uart_puts                                            3     1      2     358
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
;!   _uart_putc
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
;!BANK0               80     53      67     83.8%
;!BANK1               80     64      80    100.0%
;!BANK2               80     16      64     80.0%
;!BANK3               80      0      64     80.0%
;!BANK4               80      0      64     80.0%
;!BANK5               80      0      64     80.0%
;!BANK6               80      0       0      0.0%
;!BANK7               80      0       0      0.0%
;!BANK8               80      0       0      0.0%
;!BANK9               80      0       0      0.0%
;!BANK10              80      0       0      0.0%
;!BANK11              80      0       0      0.0%
;!BANK12              48      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     414      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 88 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
;;  i               2    0        int 
;;  sram_buf       32   32[BANK1 ] unsigned char [32]
;;  nbytes          2    0        unsigned int 
;;  addr            2    0        unsigned int 
;;  data           32    0[BANK1 ] unsigned char [32]
;;  datalen         2    0        int 
;;  retval          2    0        int 
;;  bytes           2    0        int 
;;  addr            2    0        unsigned int 
;;  nbytes          2    0        unsigned int 
;;  addr            2    0        unsigned int 
;;  data           32   21[BANK0 ] unsigned char [32]
;;  datalen         2    0        int 
;;  bytes           2    0        int 
;;  addr            2    0        unsigned int 
;;  retval          1    0        unsigned char 
;;  len             2    0        int 
;;  val             1    0        unsigned char 
;;  val             1    0        unsigned char 
;;  i               2    0        int 
;;  val             1    0        unsigned char 
;;  i               2    0        int 
;;  i               2    0        int 
;;  i               2    0        int 
;;  i               2    0        int 
;;  i               2    0        int 
;;  sram_buf       16    0[BANK2 ] unsigned char [16]
;;  val             1    0        unsigned char 
;;  status          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2  249[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      32      64      16       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      32      64      16       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:      112 bytes
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
;;		_uart_putc
;;		_uart_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"main.c"
	line	88
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	88
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	92
	
l5323:	
	fcall	_SYSTEM_Initialize
	line	93
	fcall	_SRAM_init
	line	94
	
l5325:	
	bsf	(11),7	;volatile
	line	95
	
l5327:	
	bsf	(11),6	;volatile
	line	96
	
l5329:	
	fcall	_cpu6502_reset
	line	97
	
l5331:	
	fcall	_cpu6502_uninterrupt
	line	99
	movlw	low(_onUartInput)
	movlb 0	; select bank0
	movwf	(EUSART2_RxCompleteCallbackRegister@callbackHandler)
	movlw	high(_onUartInput)
	movwf	((EUSART2_RxCompleteCallbackRegister@callbackHandler))+1
	fcall	_EUSART2_RxCompleteCallbackRegister
	line	100
	
l5333:	
	fcall	_EUSART2_ReceiveInterruptEnable
	line	102
	
l5335:	
	movlw	low(((STR_5)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_5)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	105
	
l5337:	
	movlb 0	; select bank0
	bcf	(18),3	;volatile
	line	106
	
l5339:	
	bsf	(24),3	;volatile
	line	108
	
l5341:	
	fcall	_M95_init
	line	115
	
l5345:	
	movlw	low(((STR_7)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_7)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	118
	movlw	low(((STR_8)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_8)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	119
	
l5347:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_write@addr)
	movwf	(SRAM_write@addr+1)
	movlw	low(012h)
	movwf	(SRAM_write@data)
	fcall	_SRAM_write
	line	120
	
l5349:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SRAM_read@addr)
	movwf	(SRAM_read@addr+1)
	fcall	_SRAM_read
	fcall	_putch_hex
	line	121
	
l5351:	
	movlw	low(((STR_9)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_9)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	124
	
l254:	
	
l255:	
	goto	l254
	global	start
	ljmp	start
	callstack 0
	line	295
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v3.00/pic/sources/c99/common/strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    0[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(64), 
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
	
l5285:	
	movlb 0	; select bank0
	movf	(strlen@s),w
	movwf	(strlen@a)
	line	8
	goto	l5289
	line	9
	
l5287:	
	movlw	low(01h)
	addwf	(strlen@s),f
	line	8
	
l5289:	
	movf	(strlen@s),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l5287
u2650:
	line	11
	
l5291:	
	movf	(strlen@a),w
	subwf	(strlen@s),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	12
	
l1741:	
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
;;		 -> cmd_buffer(64), 
;;  src             1    1[BANK0 ] PTR const unsigned char 
;;		 -> rx_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  d               1    2[BANK0 ] PTR unsigned char 
;;		 -> cmd_buffer(64), 
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
	
l5281:	
	movlb 0	; select bank0
	movf	(strcpy@dest),w
	movwf	(strcpy@d)
	line	6
	
l5283:	
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
	goto	u2641
	goto	u2640
u2641:
	goto	l5283
u2640:
	line	8
	
l1735:	
	return
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8314
	global	_hexstr_to_uint

;; *************** function _hexstr_to_uint *****************
;; Defined at:
;;		line 52 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str             1    3[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(64), 
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
	line	52
global __ptext3
__ptext3:	;psect for function _hexstr_to_uint
psect	text3
	file	"main.c"
	line	52
	
_hexstr_to_uint:	
;incstack = 0
	callstack 7
; Regs used in _hexstr_to_uint: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	53
	
l5251:	
	movlb 0	; select bank0
	clrf	(hexstr_to_uint@val)
	clrf	(hexstr_to_uint@val+1)
	line	54
	clrf	(hexstr_to_uint@i)
	clrf	(hexstr_to_uint@i+1)
	goto	l232
	line	55
	
l5253:	
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
	line	56
	
l5255:	
	btfss	(hexstr_to_uint@v+1),7
	goto	u2611
	goto	u2610
u2611:
	goto	l5259
u2610:
	goto	l5261
	line	57
	
l5259:	
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
	line	58
	movlw	01h
	addwf	(hexstr_to_uint@i),f
	movlw	0
	addwfc	(hexstr_to_uint@i+1),f
	
l232:	
	movf	(hexstr_to_uint@i+1),w
	xorlw	80h
	movwf	(??_hexstr_to_uint+0)+0
	movf	(hexstr_to_uint@digits+1),w
	xorlw	80h
	subwf	(??_hexstr_to_uint+0)+0,w
	skipz
	goto	u2625
	movf	(hexstr_to_uint@digits),w
	subwf	(hexstr_to_uint@i),w
u2625:

	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l5253
u2620:
	line	59
	
l5261:	
	movlb 0	; select bank0
	movf	(hexstr_to_uint@val+1),w
	movwf	(?_hexstr_to_uint+1)
	movf	(hexstr_to_uint@val),w
	movwf	(?_hexstr_to_uint)
	line	60
	
l236:	
	return
	callstack 0
GLOBAL	__end_of_hexstr_to_uint
	__end_of_hexstr_to_uint:
	signat	_hexstr_to_uint,8314
	global	_hexstr_to_bytes

;; *************** function _hexstr_to_bytes *****************
;; Defined at:
;;		line 40 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str             1    3[BANK0 ] PTR const unsigned char 
;;		 -> cmd_buffer(64), 
;;  len             2    4[BANK0 ] int 
;;  out             1    6[BANK0 ] PTR unsigned char 
;;		 -> main@data_541(32), main@data(32), 
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
	line	40
global __ptext4
__ptext4:	;psect for function _hexstr_to_bytes
psect	text4
	file	"main.c"
	line	40
	
_hexstr_to_bytes:	
;incstack = 0
	callstack 7
; Regs used in _hexstr_to_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	41
	
l5223:	
	movlb 0	; select bank0
	clrf	(hexstr_to_bytes@bytes)
	clrf	(hexstr_to_bytes@bytes+1)
	line	42
	clrf	(hexstr_to_bytes@i)
	clrf	(hexstr_to_bytes@i+1)
	goto	l5243
	line	43
	
l5225:	
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
	line	44
	
l5227:	
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
	goto	u2555
	movf	(hexstr_to_bytes@len),w
	subwf	0+(??_hexstr_to_bytes+0)+0,w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l5231
u2550:
	
l5229:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(hexstr_to_bytes@lo)
	movlw	0FFh
	movwf	((hexstr_to_bytes@lo))+1
	goto	l5233
	
l5231:	
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
	line	45
	
l5233:	
	btfsc	(hexstr_to_bytes@hi+1),7
	goto	u2561
	goto	u2560
u2561:
	goto	l5247
u2560:
	
l5235:	
	btfss	(hexstr_to_bytes@lo+1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l5237
u2570:
	goto	l5247
	line	46
	
l5237:	
	movf	(hexstr_to_bytes@out),w
	addwf	(hexstr_to_bytes@bytes),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(hexstr_to_bytes@hi),w
	movwf	(??_hexstr_to_bytes+0)+0
	movlw	04h
u2585:
	lslf	(??_hexstr_to_bytes+0)+0,f
	decfsz	wreg,f
	goto	u2585
	movf	(??_hexstr_to_bytes+0)+0,w
	iorwf	(hexstr_to_bytes@lo),w
	movwf	indf1
	
l5239:	
	movlw	01h
	addwf	(hexstr_to_bytes@bytes),f
	movlw	0
	addwfc	(hexstr_to_bytes@bytes+1),f
	line	47
	
l5241:	
	movlw	02h
	addwf	(hexstr_to_bytes@i),f
	movlw	0
	addwfc	(hexstr_to_bytes@i+1),f
	
l5243:	
	movf	(hexstr_to_bytes@i+1),w
	xorlw	80h
	movwf	(??_hexstr_to_bytes+0)+0
	movf	(hexstr_to_bytes@len+1),w
	xorlw	80h
	subwf	(??_hexstr_to_bytes+0)+0,w
	skipz
	goto	u2595
	movf	(hexstr_to_bytes@len),w
	subwf	(hexstr_to_bytes@i),w
u2595:

	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l5247
u2590:
	
l5245:	
	movlb 0	; select bank0
	movf	(hexstr_to_bytes@bytes+1),w
	xorlw	80h
	movwf	(??_hexstr_to_bytes+0)+0
	movf	(hexstr_to_bytes@maxout+1),w
	xorlw	80h
	subwf	(??_hexstr_to_bytes+0)+0,w
	skipz
	goto	u2605
	movf	(hexstr_to_bytes@maxout),w
	subwf	(hexstr_to_bytes@bytes),w
u2605:

	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l5225
u2600:
	line	48
	
l5247:	
	movlb 0	; select bank0
	movf	(hexstr_to_bytes@bytes+1),w
	movwf	(?_hexstr_to_bytes+1)
	movf	(hexstr_to_bytes@bytes),w
	movwf	(?_hexstr_to_bytes)
	line	49
	
l229:	
	return
	callstack 0
GLOBAL	__end_of_hexstr_to_bytes
	__end_of_hexstr_to_bytes:
	signat	_hexstr_to_bytes,16506
	global	_hex2val

;; *************** function _hex2val *****************
;; Defined at:
;;		line 32 in file "main.c"
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
	line	32
global __ptext5
__ptext5:	;psect for function _hex2val
psect	text5
	file	"main.c"
	line	32
	
_hex2val:	
;incstack = 0
	callstack 7
; Regs used in _hex2val: [wreg]
	movlb 0	; select bank0
	movwf	(hex2val@c)
	line	33
	
l4803:	
	movlw	low(030h)
	subwf	(hex2val@c),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l4811
u2340:
	
l4805:	
	movlw	low(03Ah)
	subwf	(hex2val@c),w
	skipnc
	goto	u2351
	goto	u2350
u2351:
	goto	l4811
u2350:
	
l4807:	
	movf	(hex2val@c),w
	addlw	low(0FFD0h)
	movwf	(?_hex2val)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((?_hex2val))+1
	goto	l212
	line	34
	
l4811:	
	movlw	low(041h)
	subwf	(hex2val@c),w
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l4819
u2360:
	
l4813:	
	movlw	low(047h)
	subwf	(hex2val@c),w
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l4819
u2370:
	
l4815:	
	movf	(hex2val@c),w
	addlw	low(0FFC9h)
	movwf	(?_hex2val)
	movlw	high(0FFC9h)
	skipnc
	movlw	(high(0FFC9h)+1)&0ffh
	movwf	((?_hex2val))+1
	goto	l212
	line	35
	
l4819:	
	movlw	low(061h)
	subwf	(hex2val@c),w
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l4827
u2380:
	
l4821:	
	movlw	low(067h)
	subwf	(hex2val@c),w
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l4827
u2390:
	
l4823:	
	movf	(hex2val@c),w
	addlw	low(0FFA9h)
	movwf	(?_hex2val)
	movlw	high(0FFA9h)
	skipnc
	movlw	(high(0FFA9h)+1)&0ffh
	movwf	((?_hex2val))+1
	goto	l212
	line	36
	
l4827:	
	movlw	0FFh
	movwf	(?_hex2val)
	movlw	0FFh
	movwf	((?_hex2val))+1
	line	37
	
l212:	
	return
	callstack 0
GLOBAL	__end_of_hex2val
	__end_of_hex2val:
	signat	_hex2val,4218
	global	_cpu6502_unreset

;; *************** function _cpu6502_unreset *****************
;; Defined at:
;;		line 233 in file "hardware.c"
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
	line	233
global __ptext6
__ptext6:	;psect for function _cpu6502_unreset
psect	text6
	file	"hardware.c"
	line	233
	
_cpu6502_unreset:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_unreset: []
	line	234
	
l5217:	
	movlb 0	; select bank0
	bsf	(12),1	;volatile
	line	235
	
l140:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_unreset
	__end_of_cpu6502_unreset:
	signat	_cpu6502_unreset,89
	global	_cpu6502_uninterrupt

;; *************** function _cpu6502_uninterrupt *****************
;; Defined at:
;;		line 247 in file "hardware.c"
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
	line	247
global __ptext7
__ptext7:	;psect for function _cpu6502_uninterrupt
psect	text7
	file	"hardware.c"
	line	247
	
_cpu6502_uninterrupt:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_uninterrupt: []
	line	248
	
l5221:	
	movlb 0	; select bank0
	bsf	(12),0	;volatile
	line	249
	
l146:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_uninterrupt
	__end_of_cpu6502_uninterrupt:
	signat	_cpu6502_uninterrupt,89
	global	_cpu6502_reset

;; *************** function _cpu6502_reset *****************
;; Defined at:
;;		line 226 in file "hardware.c"
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
	line	226
global __ptext8
__ptext8:	;psect for function _cpu6502_reset
psect	text8
	file	"hardware.c"
	line	226
	
_cpu6502_reset:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_reset: []
	line	227
	
l5215:	
	movlb 0	; select bank0
	bcf	(12),1	;volatile
	line	228
	
l137:	
	return
	callstack 0
GLOBAL	__end_of_cpu6502_reset
	__end_of_cpu6502_reset:
	signat	_cpu6502_reset,89
	global	_cpu6502_interrupt

;; *************** function _cpu6502_interrupt *****************
;; Defined at:
;;		line 240 in file "hardware.c"
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
	line	240
global __ptext9
__ptext9:	;psect for function _cpu6502_interrupt
psect	text9
	file	"hardware.c"
	line	240
	
_cpu6502_interrupt:	
;incstack = 0
	callstack 8
; Regs used in _cpu6502_interrupt: []
	line	241
	
l5219:	
	movlb 0	; select bank0
	bcf	(12),0	;volatile
	line	242
	
l143:	
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
	
l5265:	
	fcall	_CLOCK_Initialize
	line	42
	
l5267:	
	fcall	_PIN_MANAGER_Initialize
	line	43
	
l5269:	
	fcall	_EUSART2_Initialize
	line	44
	fcall	_I2C2_Initialize
	line	45
	
l5271:	
	fcall	_SPI1_Initialize
	line	46
	
l5273:	
	fcall	_INTERRUPT_Initialize
	line	47
	
l954:	
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
	
l4885:	
	movlb 0	; select bank0
	clrf	(24)	;volatile
	line	45
	
l4887:	
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
	
l4889:	
	movlw	0FFh
	movwf	(18)	;volatile
	line	55
	
l4891:	
	movlw	0DAh
	movwf	(19)	;volatile
	line	56
	clrf	(20)	;volatile
	line	57
	clrf	(21)	;volatile
	line	58
	
l4893:	
	movlw	08h
	movwf	(22)	;volatile
	line	59
	
l4895:	
	movlw	0FFh
	movwf	(23)	;volatile
	line	64
	
l4897:	
	movlw	0DFh
	movlb 62	; select bank62
	movwf	(7992)^01F00h	;volatile
	line	65
	
l4899:	
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
	
l4901:	
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
	
l4903:	
	movlw	0FFh
	movlb 62	; select bank62
	movwf	(7995)^01F00h	;volatile
	line	95
	
l4905:	
	movlw	0FFh
	movwf	(8006)^01F00h	;volatile
	line	96
	
l4907:	
	movlw	0FFh
	movwf	(8017)^01F00h	;volatile
	line	97
	
l4909:	
	movlw	0FFh
	movwf	(8028)^01F00h	;volatile
	line	98
	
l4911:	
	movlw	07h
	movwf	(8039)^01F00h	;volatile
	line	99
	
l4913:	
	movlw	0FFh
	movlb 60	; select bank60
	movwf	(7763)^01E00h	;volatile
	line	103
	
l4915:	
	movlw	0FFh
	movlb 62	; select bank62
	movwf	(7996)^01F00h	;volatile
	line	104
	
l4917:	
	movlw	0FFh
	movwf	(8007)^01F00h	;volatile
	line	105
	
l4919:	
	movlw	0FFh
	movwf	(8018)^01F00h	;volatile
	line	106
	
l4921:	
	movlw	0FFh
	movwf	(8029)^01F00h	;volatile
	line	107
	
l4923:	
	movlw	0Fh
	movwf	(8040)^01F00h	;volatile
	line	108
	
l4925:	
	movlw	0FFh
	movlb 60	; select bank60
	movwf	(7764)^01E00h	;volatile
	line	113
	
l4927:	
	movlw	09h
	movlb 61	; select bank61
	movwf	(7878)^01E80h	;volatile
	line	114
	
l4929:	
	movlw	0Fh
	movwf	(7885)^01E80h	;volatile
	line	115
	
l4931:	
	movlw	05h
	movwf	(7824)^01E80h	;volatile
	line	116
	
l4933:	
	movlw	016h
	movlb 62	; select bank62
	movwf	(7962)^01F00h	;volatile
	line	117
	
l4935:	
	movlw	011h
	movwf	(7965)^01F00h	;volatile
	line	118
	
l4937:	
	movlw	08h
	movlb 61	; select bank61
	movwf	(7877)^01E80h	;volatile
	line	119
	
l4939:	
	movlw	015h
	movlb 62	; select bank62
	movwf	(7960)^01F00h	;volatile
	line	120
	
l4941:	
	movlw	0Bh
	movlb 61	; select bank61
	movwf	(7880)^01E80h	;volatile
	line	121
	
l4943:	
	movlw	017h
	movlb 62	; select bank62
	movwf	(7963)^01F00h	;volatile
	line	122
	
l4945:	
	movlw	0Ch
	movlb 61	; select bank61
	movwf	(7881)^01E80h	;volatile
	line	123
	
l4947:	
	movlw	018h
	movlb 62	; select bank62
	movwf	(7964)^01F00h	;volatile
	line	132
	clrf	(7997)^01F00h	;volatile
	line	133
	
l4949:	
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
	
l4951:	
	movlw	low(_IO_RA5_DefaultInterruptHandler)
	movlb 0	; select bank0
	movwf	(IO_RA5_SetInterruptHandler@InterruptHandler)
	movlw	high(_IO_RA5_DefaultInterruptHandler)
	movwf	((IO_RA5_SetInterruptHandler@InterruptHandler))+1
	fcall	_IO_RA5_SetInterruptHandler
	line	148
	
l4953:	
	movlb 14	; select bank14
	bsf	(1814)^0700h,4	;volatile
	line	149
	
l1168:	
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
	
l4733:	
	movlb 0	; select bank0
	movf	(IO_RA5_SetInterruptHandler@InterruptHandler+1),w
	movlb 2	; select bank2
	movwf	(_IO_RA5_InterruptHandler+1)^0100h
	movlb 0	; select bank0
	movf	(IO_RA5_SetInterruptHandler@InterruptHandler),w
	movlb 2	; select bank2
	movwf	(_IO_RA5_InterruptHandler)^0100h
	line	180
	
l1179:	
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
	
l4955:	
	movlb 14	; select bank14
	bcf	(1804)^0700h,0	;volatile
	line	45
	
l4957:	
	movlw	low(_INT_DefaultInterruptHandler)
	movlb 0	; select bank0
	movwf	(INT_SetInterruptHandler@InterruptHandler)
	movlw	high(_INT_DefaultInterruptHandler)
	movwf	((INT_SetInterruptHandler@InterruptHandler))+1
	fcall	_INT_SetInterruptHandler
	line	46
	
l4959:	
	movlb 14	; select bank14
	bsf	(1814)^0700h,0	;volatile
	line	48
	
l989:	
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
	
l4731:	
	movlb 0	; select bank0
	movf	(INT_SetInterruptHandler@InterruptHandler+1),w
	movlb 1	; select bank1
	movwf	(_INT_InterruptHandler+1)^080h
	movlb 0	; select bank0
	movf	(INT_SetInterruptHandler@InterruptHandler),w
	movlb 1	; select bank1
	movwf	(_INT_InterruptHandler)^080h
	line	121
	
l1020:	
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
	
l4831:	
	movlw	080h
	movlb 3	; select bank3
	movwf	(409)^0180h	;volatile
	line	119
	movlw	08h
	movwf	(410)^0180h	;volatile
	line	121
	
l4833:	
	clrf	(411)^0180h	;volatile
	line	123
	clrf	(412)^0180h	;volatile
	line	125
	
l4835:	
	movlw	04Fh
	movwf	(407)^0180h	;volatile
	line	126
	
l4837:	
	fcall	_I2C2_InterruptsEnable
	line	127
	
l4839:	
	movlb 3	; select bank3
	bsf	(410)^0180h,5	;volatile
	line	128
	
l563:	
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
	
l4721:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,2	;volatile
	line	477
	bsf	(1817)^0700h,3	;volatile
	line	478
	
l696:	
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
	
l4841:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,7	;volatile
	line	134
	
l4843:	
	movlw	low(_EUSART2_ReceiveISR)
	movlb 2	; select bank2
	movwf	(_EUSART2_RxInterruptHandler)^0100h
	movlw	high(_EUSART2_ReceiveISR)
	movwf	((_EUSART2_RxInterruptHandler)^0100h)+1
	line	136
	
l4845:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,6	;volatile
	line	137
	movlw	low(_EUSART2_TransmitISR)
	movlb 2	; select bank2
	movwf	(_EUSART2_TxInterruptHandler)^0100h
	movlw	high(_EUSART2_TransmitISR)
	movwf	((_EUSART2_TxInterruptHandler)^0100h)+1
	line	142
	
l4847:	
	movlw	048h
	movlb 20	; select bank20
	movwf	(2591)^0A00h	;volatile
	line	144
	
l4849:	
	movlw	090h
	movwf	(2589)^0A00h	;volatile
	line	146
	
l4851:	
	movlw	026h
	movwf	(2590)^0A00h	;volatile
	line	148
	
l4853:	
	movlw	040h
	movwf	(2587)^0A00h	;volatile
	line	150
	
l4855:	
	movlw	03h
	movwf	(2588)^0A00h	;volatile
	line	152
	
l4857:	
	movlw	low(_EUSART2_DefaultFramingErrorCallback)
	movlb 0	; select bank0
	movwf	(EUSART2_FramingErrorCallbackRegister@callbackHandler)
	movlw	high(_EUSART2_DefaultFramingErrorCallback)
	movwf	((EUSART2_FramingErrorCallbackRegister@callbackHandler))+1
	fcall	_EUSART2_FramingErrorCallbackRegister
	line	153
	
l4859:	
	movlw	low(_EUSART2_DefaultOverrunErrorCallback)
	movlb 0	; select bank0
	movwf	(EUSART2_OverrunErrorCallbackRegister@callbackHandler)
	movlw	high(_EUSART2_DefaultOverrunErrorCallback)
	movwf	((EUSART2_OverrunErrorCallbackRegister@callbackHandler))+1
	fcall	_EUSART2_OverrunErrorCallbackRegister
	line	154
	
l4861:	
	movlb 2	; select bank2
	clrf	(_eusart2RxLastError)^0100h	;volatile
	clrf	(_eusart2RxLastError+1)^0100h	;volatile
	line	156
	
l4863:	
	movlb 1	; select bank1
	clrf	(_eusart2TxHead)^080h	;volatile
	line	157
	
l4865:	
	clrf	(_eusart2TxTail)^080h	;volatile
	line	158
	
l4867:	
	movlw	08h
	movwf	(_eusart2TxBufferRemaining)^080h	;volatile
	line	160
	
l4869:	
	clrf	(_eusart2RxHead)^080h	;volatile
	line	161
	
l4871:	
	clrf	(_eusart2RxTail)^080h	;volatile
	line	162
	
l4873:	
	clrf	(_eusart2RxCount)^080h	;volatile
	line	164
	
l4875:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,7	;volatile
	line	165
	
l807:	
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
	
l4727:	
	movlb 0	; select bank0
	movf	((EUSART2_OverrunErrorCallbackRegister@callbackHandler)),w
iorwf	((EUSART2_OverrunErrorCallbackRegister@callbackHandler+1)),w
	btfsc	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l913
u2250:
	line	424
	
l4729:	
	movf	(EUSART2_OverrunErrorCallbackRegister@callbackHandler+1),w
	movlb 1	; select bank1
	movwf	(_EUSART2_OverrunErrorHandler+1)^080h
	movlb 0	; select bank0
	movf	(EUSART2_OverrunErrorCallbackRegister@callbackHandler),w
	movlb 1	; select bank1
	movwf	(_EUSART2_OverrunErrorHandler)^080h
	line	426
	
l913:	
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
	
l4723:	
	movlb 0	; select bank0
	movf	((EUSART2_FramingErrorCallbackRegister@callbackHandler)),w
iorwf	((EUSART2_FramingErrorCallbackRegister@callbackHandler+1)),w
	btfsc	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l909
u2240:
	line	416
	
l4725:	
	movf	(EUSART2_FramingErrorCallbackRegister@callbackHandler+1),w
	movlb 1	; select bank1
	movwf	(_EUSART2_FramingErrorHandler+1)^080h
	movlb 0	; select bank0
	movf	(EUSART2_FramingErrorCallbackRegister@callbackHandler),w
	movlb 1	; select bank1
	movwf	(_EUSART2_FramingErrorHandler)^080h
	line	418
	
l909:	
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
	
l4877:	
	movlw	010h
	movlb 17	; select bank17
	movwf	(2189)^0880h	;volatile
	line	44
	
l4879:	
	clrf	(2191)^0880h	;volatile
	line	46
	clrf	(2193)^0880h	;volatile
	line	52
	
l4881:	
	movlw	05h
	movwf	(2195)^0880h	;volatile
	line	53
	
l4883:	
	movlw	020h
	movwf	(2194)^0880h	;volatile
	line	58
	
l936:	
	line	56
	btfss	(2192)^0880h,0	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l936
u2400:
	line	59
	
l939:	
	return
	callstack 0
GLOBAL	__end_of_CLOCK_Initialize
	__end_of_CLOCK_Initialize:
	signat	_CLOCK_Initialize,89
	global	_SRAM_write_bytes

;; *************** function _SRAM_write_bytes *****************
;; Defined at:
;;		line 135 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            4    5[BANK0 ] unsigned long 
;;  len             2    9[BANK0 ] int 
;;  data            1   11[BANK0 ] PTR const unsigned char 
;;		 -> main@data_541(32), 
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
;;		_SRAM_set_address
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"hardware.c"
	line	135
global __ptext21
__ptext21:	;psect for function _SRAM_write_bytes
psect	text21
	file	"hardware.c"
	line	135
	
_SRAM_write_bytes:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_write_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	137
	
l5153:	
	movlb 0	; select bank0
	movf	(SRAM_write_bytes@addr+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_write_bytes@addr),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	140
	
l5155:	
	movlb 0	; select bank0
	bsf	(15),7	;volatile
	line	143
	
l5157:	
	clrf	(23)	;volatile
	line	146
	
l5159:	
	bcf	(15),6	;volatile
	line	149
	
l5161:	
	bcf	(15),5	;volatile
	line	151
	
l5163:	
	movf	(SRAM_write_bytes@addr),w
	addwf	(SRAM_write_bytes@len),w
	movwf	(SRAM_write_bytes@stop)
	movf	(SRAM_write_bytes@addr+1),w
	addwfc	(SRAM_write_bytes@len+1),w
	movwf	1+(SRAM_write_bytes@stop)
	line	152
	
l5165:	
	movf	(SRAM_write_bytes@addr+1),w
	movwf	(SRAM_write_bytes@addri+1)
	movf	(SRAM_write_bytes@addr),w
	movwf	(SRAM_write_bytes@addri)
	goto	l5181
	
l123:	
	line	153
	movlb 0	; select bank0
	bcf	(15),5	;volatile
	line	154
	
l5167:	
	movf	(SRAM_write_bytes@addri+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_write_bytes@addri),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	156
	
l5169:	
	movlb 0	; select bank0
	movf	(SRAM_write_bytes@data),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(17)	;volatile
	line	157
	
l5171:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	159
	
l5173:	
	movlb 0	; select bank0
	bsf	(15),5	;volatile
	line	161
	
l5175:	
	movlw	low(01h)
	addwf	(SRAM_write_bytes@data),f
	line	162
	
l5177:	
	asmopt push
asmopt off
	movlw	26
u2707:
decfsz	wreg
	goto	u2707
	nop2
asmopt pop

	line	163
	
l5179:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(SRAM_write_bytes@addri),f
	movlw	0
	addwfc	(SRAM_write_bytes@addri+1),f
	
l5181:	
	movf	(SRAM_write_bytes@addri+1),w
	xorlw	80h
	movwf	(??_SRAM_write_bytes+0)+0
	movf	(SRAM_write_bytes@stop+1),w
	xorlw	80h
	subwf	(??_SRAM_write_bytes+0)+0,w
	skipz
	goto	u2535
	movf	(SRAM_write_bytes@stop),w
	subwf	(SRAM_write_bytes@addri),w
u2535:

	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l123
u2530:
	
l124:	
	line	165
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	168
	
l5183:	
	movlw	0F3h
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	169
	
l125:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_write_bytes
	__end_of_SRAM_write_bytes:
	signat	_SRAM_write_bytes,12410
	global	_SRAM_write

;; *************** function _SRAM_write *****************
;; Defined at:
;;		line 98 in file "hardware.c"
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
	line	98
global __ptext22
__ptext22:	;psect for function _SRAM_write
psect	text22
	file	"hardware.c"
	line	98
	
_SRAM_write:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_write: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l5127:	
	movlb 0	; select bank0
	bsf	(15),7	;volatile
	line	103
	
l5129:	
	movf	(SRAM_write@addr+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_write@addr),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	106
	
l5131:	
	movlb 0	; select bank0
	clrf	(23)	;volatile
	line	109
	
l5133:	
	movf	(SRAM_write@data),w
	movwf	(17)	;volatile
	line	112
	
l5135:	
	bcf	(15),5	;volatile
	line	113
	
l5137:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	116
	
l5139:	
	movlb 0	; select bank0
	bcf	(15),6	;volatile
	line	119
	
l5141:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	122
	
l5143:	
	movlb 0	; select bank0
	bsf	(15),6	;volatile
	line	123
	
l5145:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	126
	
l5147:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	129
	
l5149:	
	movlw	0F3h
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	131
	
l5151:	
	fcall	_SRAM_deselect
	line	132
	
l119:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_write
	__end_of_SRAM_write:
	signat	_SRAM_write,8313
	global	_SRAM_read_bytes

;; *************** function _SRAM_read_bytes *****************
;; Defined at:
;;		line 172 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;  addr            4    5[BANK0 ] unsigned long 
;;  len             2    9[BANK0 ] int 
;;  data            2   11[BANK0 ] PTR unsigned char 
;;		 -> main@sram_buf_551(32), main@sram_buf(16), 
;; Auto vars:     Size  Location     Type
;;  addri           2   16[BANK0 ] int 
;;  stop            2   14[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
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
	line	172
global __ptext23
__ptext23:	;psect for function _SRAM_read_bytes
psect	text23
	file	"hardware.c"
	line	172
	
_SRAM_read_bytes:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_read_bytes: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	174
	
l5185:	
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@addr+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_read_bytes@addr),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	177
	
l5187:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	180
	
l5189:	
	bsf	(15),6	;volatile
	line	183
	
l5191:	
	bcf	(15),5	;volatile
	line	186
	
l5193:	
	bcf	(15),7	;volatile
	line	188
	
l5195:	
	movf	(SRAM_read_bytes@addr),w
	addwf	(SRAM_read_bytes@len),w
	movwf	(SRAM_read_bytes@stop)
	movf	(SRAM_read_bytes@addr+1),w
	addwfc	(SRAM_read_bytes@len+1),w
	movwf	1+(SRAM_read_bytes@stop)
	line	189
	
l5197:	
	movf	(SRAM_read_bytes@addr+1),w
	movwf	(SRAM_read_bytes@addri+1)
	movf	(SRAM_read_bytes@addr),w
	movwf	(SRAM_read_bytes@addri)
	goto	l5207
	line	190
	
l5199:	
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@addri+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_read_bytes@addri),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	191
	
l5201:	
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@data),w
	movwf	fsr1l
	movf	(SRAM_read_bytes@data+1),w
	movwf	fsr1h

	movf	(17),w	;volatile
	movwf	indf1
	line	192
	
l5203:	
	movlw	01h
	addwf	(SRAM_read_bytes@data),f
	movlw	0
	addwfc	(SRAM_read_bytes@data+1),f
	line	193
	
l5205:	
	movlw	01h
	addwf	(SRAM_read_bytes@addri),f
	movlw	0
	addwfc	(SRAM_read_bytes@addri+1),f
	
l5207:	
	movf	(SRAM_read_bytes@addri+1),w
	xorlw	80h
	movwf	(??_SRAM_read_bytes+0)+0
	movf	(SRAM_read_bytes@stop+1),w
	xorlw	80h
	subwf	(??_SRAM_read_bytes+0)+0,w
	skipz
	goto	u2545
	movf	(SRAM_read_bytes@stop),w
	subwf	(SRAM_read_bytes@addri),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l5199
u2540:
	
l130:	
	line	196
	movlb 0	; select bank0
	bsf	(15),7	;volatile
	line	199
	
l5209:	
	movlw	0F3h
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	201
	
l5211:	
	fcall	_SRAM_deselect
	line	202
	movlb 0	; select bank0
	movf	(SRAM_read_bytes@len+1),w
	movwf	(?_SRAM_read_bytes+1)
	movf	(SRAM_read_bytes@len),w
	movwf	(?_SRAM_read_bytes)
	line	203
	
l131:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_read_bytes
	__end_of_SRAM_read_bytes:
	signat	_SRAM_read_bytes,12410
	global	_SRAM_read

;; *************** function _SRAM_read *****************
;; Defined at:
;;		line 56 in file "hardware.c"
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
	line	56
global __ptext24
__ptext24:	;psect for function _SRAM_read
psect	text24
	file	"hardware.c"
	line	56
	
_SRAM_read:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_read: [wreg+status,2+status,0+pclath+cstack]
	line	60
	
l5101:	
	movlb 0	; select bank0
	bsf	(15),6	;volatile
	line	62
	movlw	0FFh
	movwf	(17)	;volatile
	line	64
	movlw	0FFh
	movwf	(23)	;volatile
	line	67
	
l5103:	
	movf	(SRAM_read@addr+1),w
	movwf	(SRAM_set_address@addr+1)
	movf	(SRAM_read@addr),w
	movwf	(SRAM_set_address@addr)
	fcall	_SRAM_set_address
	line	70
	
l5105:	
	movlb 0	; select bank0
	bcf	(15),5	;volatile
	line	71
	
l5107:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	74
	
l5109:	
	movlb 0	; select bank0
	bcf	(15),7	;volatile
	line	77
	
l5111:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	80
	
l5113:	
	movlb 0	; select bank0
	movf	(17),w	;volatile
	movwf	(SRAM_read@data)
	line	83
	
l5115:	
	bsf	(15),7	;volatile
	line	84
	
l5117:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	87
	
l5119:	
	movlw	0F3h
	movlb 0	; select bank0
	movwf	(SRAM_set_address@addr)
	movlw	0FFh
	movwf	((SRAM_set_address@addr))+1
	fcall	_SRAM_set_address
	line	89
	
l5121:	
	fcall	_SRAM_deselect
	line	90
	
l5123:	
	movlb 0	; select bank0
	movf	(SRAM_read@data),w
	line	91
	
l116:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_read
	__end_of_SRAM_read:
	signat	_SRAM_read,4217
	global	_SRAM_set_address

;; *************** function _SRAM_set_address *****************
;; Defined at:
;;		line 40 in file "hardware.c"
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
	line	40
global __ptext25
__ptext25:	;psect for function _SRAM_set_address
psect	text25
	file	"hardware.c"
	line	40
	
_SRAM_set_address:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_set_address: [wreg+status,2+status,0]
	line	42
	
l4797:	
	movlw	0FFh
	movlb 0	; select bank0
	andwf	(SRAM_set_address@addr),f
	movlw	07h
	andwf	(SRAM_set_address@addr+1),f
	line	45
	movf	(SRAM_set_address@addr),w
	movwf	(14)	;volatile
	line	48
	
l4799:	
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
	movf	(16),w	;volatile
	andlw	0F8h
	iorwf	0+(??_SRAM_set_address+2)+0,w
	movwf	(16)	;volatile
	line	49
	
l113:	
	return
	callstack 0
GLOBAL	__end_of_SRAM_set_address
	__end_of_SRAM_set_address:
	signat	_SRAM_set_address,4217
	global	_SRAM_deselect

;; *************** function _SRAM_deselect *****************
;; Defined at:
;;		line 208 in file "hardware.c"
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
;;		_SRAM_read_bytes
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	208
global __ptext26
__ptext26:	;psect for function _SRAM_deselect
psect	text26
	file	"hardware.c"
	line	208
	
_SRAM_deselect:	
;incstack = 0
	callstack 7
; Regs used in _SRAM_deselect: []
	line	209
	
l4801:	
	movlb 0	; select bank0
	bsf	(15),5	;volatile
	line	212
	movlw	0FFh
	movwf	(23)	;volatile
	line	215
	bsf	(15),7	;volatile
	line	216
	bsf	(15),6	;volatile
	line	217
	
l134:	
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
	
l5081:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	16
	
l5083:	
	movlb 60	; select bank60
	clrf	(7760)^01E00h	;volatile
	line	18
	
l5085:	
	movlb 0	; select bank0
	bsf	(15),7	;volatile
	line	19
	
l5087:	
	bsf	(15),6	;volatile
	line	20
	
l5089:	
	bsf	(15),5	;volatile
	line	23
	clrf	(14)	;volatile
	line	24
	
l5091:	
	movlw	low(0F8h)
	andwf	(16),f	;volatile
	line	27
	
l5093:	
	clrf	(20)	;volatile
	line	28
	movlw	low(0F8h)
	andwf	(22),f	;volatile
	line	31
	
l5095:	
	bcf	(21),7	;volatile
	line	32
	
l5097:	
	bcf	(21),6	;volatile
	line	33
	
l5099:	
	bcf	(21),5	;volatile
	line	34
	
l110:	
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
;;		 -> main@data(32), 
;; Auto vars:     Size  Location     Type
;;  i               2   13[BANK0 ] int 
;;  to_write        2   19[BANK0 ] int 
;;  space_in_pag    2   11[BANK0 ] int 
;;  page_offset     2    8[BANK0 ] int 
;;  current_addr    2   17[BANK0 ] int 
;;  remaining       2   15[BANK0 ] int 
;;  data            1   10[BANK0 ] PTR unsigned char 
;;		 -> main@data(32), 
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
;;      Locals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
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
	
l5025:	
	movlb 0	; select bank0
	movf	((M95_write_bytes@buf)),w
	btfsc	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l5031
u2460:
	
l5027:	
	btfsc	(M95_write_bytes@addr+1),7
	goto	u2471
	goto	u2470
u2471:
	goto	l5031
u2470:
	
l5029:	
	movf	(M95_write_bytes@num_bytes+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movlw	(0)^80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u2485
	movlw	01h
	subwf	(M95_write_bytes@num_bytes),w
u2485:

	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l5035
u2480:
	
l5031:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(?_M95_write_bytes)
	movlw	0FFh
	movwf	((?_M95_write_bytes))+1
	goto	l58
	line	94
	
l5035:	
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
	goto	l5075
	
l60:	
	line	100
	movlb 0	; select bank0
	bcf	(24),4	;volatile
	line	101
	
l5037:	
	movlw	low(06h)
	fcall	_spi1_byte_exchange_hw
	line	102
	
l5039:	
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	105
	
l5041:	
	movlw	03Fh
	andwf	(M95_write_bytes@current_addr),w
	movwf	(M95_write_bytes@page_offset)
	movlw	0
	andwf	(M95_write_bytes@current_addr+1),w
	movwf	1+(M95_write_bytes@page_offset)
	line	106
	
l5043:	
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
	
l5045:	
	movf	(M95_write_bytes@remaining+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movf	(M95_write_bytes@space_in_page+1),w
	xorlw	80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u2495
	movf	(M95_write_bytes@space_in_page),w
	subwf	(M95_write_bytes@remaining),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l5049
u2490:
	
l5047:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@space_in_page+1),w
	movwf	(M95_write_bytes@to_write+1)
	movf	(M95_write_bytes@space_in_page),w
	movwf	(M95_write_bytes@to_write)
	goto	l5051
	
l5049:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@remaining+1),w
	movwf	(M95_write_bytes@to_write+1)
	movf	(M95_write_bytes@remaining),w
	movwf	(M95_write_bytes@to_write)
	line	110
	
l5051:	
	bcf	(24),4	;volatile
	line	111
	
l5053:	
	movlw	low(02h)
	fcall	_spi1_byte_exchange_hw
	line	112
	
l5055:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@current_addr+1),w
	fcall	_spi1_byte_exchange_hw
	line	113
	
l5057:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@current_addr),w
	fcall	_spi1_byte_exchange_hw
	line	116
	
l5059:	
	movlb 0	; select bank0
	clrf	(M95_write_bytes@i)
	clrf	(M95_write_bytes@i+1)
	goto	l5065
	line	117
	
l5061:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@data),w
	addwf	(M95_write_bytes@i),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_spi1_byte_exchange_hw
	
l5063:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(M95_write_bytes@i),f
	movlw	0
	addwfc	(M95_write_bytes@i+1),f
	
l5065:	
	movf	(M95_write_bytes@i+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movf	(M95_write_bytes@to_write+1),w
	xorlw	80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u2505
	movf	(M95_write_bytes@to_write),w
	subwf	(M95_write_bytes@i),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l5061
u2500:
	
l67:	
	line	119
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	122
	
l5067:	
	movlw	low(0FFh)
	fcall	_spi1_byte_exchange_hw
	andlw	01h
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l5067
u2510:
	line	124
	
l5069:	
	movlb 0	; select bank0
	movf	(M95_write_bytes@to_write),w
	addwf	(M95_write_bytes@current_addr),f
	movf	(M95_write_bytes@to_write+1),w
	addwfc	(M95_write_bytes@current_addr+1),f
	line	125
	
l5071:	
	movf	(M95_write_bytes@to_write),w
	addwf	(M95_write_bytes@data),f
	line	126
	
l5073:	
	movf	(M95_write_bytes@to_write),w
	subwf	(M95_write_bytes@remaining),f
	movf	(M95_write_bytes@to_write+1),w
	subwfb	(M95_write_bytes@remaining+1),f
	line	98
	
l5075:	
	movf	(M95_write_bytes@remaining+1),w
	xorlw	80h
	movwf	(??_M95_write_bytes+0)+0
	movlw	(0)^80h
	subwf	(??_M95_write_bytes+0)+0,w
	skipz
	goto	u2525
	movlw	01h
	subwf	(M95_write_bytes@remaining),w
u2525:

	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l60
u2520:
	line	129
	
l5077:	
	movlb 0	; select bank0
	clrf	(?_M95_write_bytes)
	clrf	(?_M95_write_bytes+1)
	line	130
	
l58:	
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
;;		 -> eeprom_read_buffer(64), 
;; Auto vars:     Size  Location     Type
;;  i               2    9[BANK0 ] int 
;;  data            1    8[BANK0 ] PTR unsigned char 
;;		 -> eeprom_read_buffer(64), 
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
	
l4999:	
	movlb 0	; select bank0
	movf	((M95_read_bytes@buf)),w
	btfsc	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l5005
u2420:
	
l5001:	
	btfsc	(M95_read_bytes@addr+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l5005
u2430:
	
l5003:	
	movf	(M95_read_bytes@num_bytes+1),w
	xorlw	80h
	movwf	(??_M95_read_bytes+0)+0
	movlw	(0)^80h
	subwf	(??_M95_read_bytes+0)+0,w
	skipz
	goto	u2445
	movlw	01h
	subwf	(M95_read_bytes@num_bytes),w
u2445:

	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l46
u2440:
	
l5005:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(?_M95_read_bytes)
	movlw	0FFh
	movwf	((?_M95_read_bytes))+1
	goto	l49
	
l46:	
	line	77
	movlb 0	; select bank0
	bcf	(24),4	;volatile
	line	78
	
l5009:	
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
	
l5011:	
	movlb 0	; select bank0
	movf	(M95_read_bytes@buf),w
	movwf	(M95_read_bytes@data)
	line	83
	
l5013:	
	clrf	(M95_read_bytes@i)
	clrf	(M95_read_bytes@i+1)
	goto	l5019
	line	84
	
l5015:	
	movlb 0	; select bank0
	movf	(M95_read_bytes@data),w
	addwf	(M95_read_bytes@i),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0FFh)
	fcall	_spi1_byte_exchange_hw
	movwf	indf1
	
l5017:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(M95_read_bytes@i),f
	movlw	0
	addwfc	(M95_read_bytes@i+1),f
	
l5019:	
	movf	(M95_read_bytes@i+1),w
	xorlw	80h
	movwf	(??_M95_read_bytes+0)+0
	movf	(M95_read_bytes@num_bytes+1),w
	xorlw	80h
	subwf	(??_M95_read_bytes+0)+0,w
	skipz
	goto	u2455
	movf	(M95_read_bytes@num_bytes),w
	subwf	(M95_read_bytes@i),w
u2455:

	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l5015
u2450:
	
l52:	
	line	86
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	87
	
l5021:	
	clrf	(?_M95_read_bytes)
	clrf	(?_M95_read_bytes+1)
	line	88
	
l49:	
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
	
l4961:	
	fcall	_SPI1_Initialize
	line	47
	
l4963:	
	movlb 0	; select bank0
	bsf	(24),4	;volatile
	line	48
	
l4965:	
	bcf	(18),4	;volatile
	line	49
	
l4967:	
	bsf	(19),1	;volatile
	line	52
	
l4969:	
	movlw	low(04h)
	movwf	(SPI1_Open@spiConfigIndex)
	fcall	_SPI1_Open
	xorlw	low(0)&0ffh
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l4977
u2410:
	line	53
	
l4971:	
	movlw	low(((STR_1)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_1)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	54
	
l4973:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(?_M95_init)
	movlw	0FFh
	movwf	((?_M95_init))+1
	goto	l43
	line	57
	
l4977:	
	movlw	low(((STR_2)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_2)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	60
	
l4979:	
	movlb 0	; select bank0
	bcf	(24),4	;volatile
	line	61
	
l4981:	
	movlw	low(05h)
	fcall	_spi1_byte_exchange_hw
	line	62
	
l4983:	
	movlw	low(02Eh)
	fcall	_uart_putc
	line	63
	
l4985:	
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
	
l4987:	
	bsf	(24),4	;volatile
	line	66
	
l4989:	
	movlw	low(((STR_3)|8000h))
	movwf	(uart_puts@s)
	movlw	high(((STR_3)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	67
	
l4991:	
	movlb 0	; select bank0
	movf	(M95_init@status),w
	fcall	_putch_hex
	line	68
	
l4993:	
	movlw	low(((STR_4)|8000h))
	movlb 0	; select bank0
	movwf	(uart_puts@s)
	movlw	high(((STR_4)|8000h))
	movwf	((uart_puts@s))+1
	fcall	_uart_puts
	line	70
	
l4995:	
	movlb 0	; select bank0
	movf	(M95_init@status+1),w
	movwf	(?_M95_init+1)
	movf	(M95_init@status),w
	movwf	(?_M95_init)
	line	71
	
l43:	
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
;;		 -> STR_48(20), STR_47(17), STR_46(13), STR_45(16), 
;;		 -> STR_44(7), STR_43(19), STR_42(16), STR_41(16), 
;;		 -> STR_40(19), STR_39(18), STR_38(27), STR_37(22), 
;;		 -> STR_36(25), STR_35(17), STR_34(18), STR_33(14), 
;;		 -> STR_32(18), STR_31(10), STR_30(18), STR_29(4), 
;;		 -> STR_28(39), STR_27(27), STR_26(19), STR_25(4), 
;;		 -> STR_24(4), STR_23(12), STR_22(77), STR_21(48), 
;;		 -> STR_20(11), STR_19(21), STR_18(28), STR_17(48), 
;;		 -> STR_16(15), STR_15(19), STR_14(32), STR_13(62), 
;;		 -> STR_12(48), STR_11(15), STR_10(19), STR_9(34), 
;;		 -> STR_8(41), STR_7(37), STR_6(32), STR_5(71), 
;;		 -> rx_buffer(64), STR_4(3), STR_3(20), STR_2(24), 
;;		 -> STR_1(18), 
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
	
l4787:	
	goto	l4793
	line	12
	
l4789:	
	movf	(uart_puts@s),w
	movwf	fsr0l
	movf	((uart_puts@s+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_uart_putc
	
l4791:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(uart_puts@s),f
	movlw	0
	addwfc	(uart_puts@s+1),f
	line	11
	
l4793:	
	movlb 0	; select bank0
	movf	(uart_puts@s),w
	movwf	fsr0l
	movf	((uart_puts@s+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l4789
u2320:
	line	13
	
l1202:	
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
	
l4749:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	27
	
l4751:	
	movlb 0	; select bank0
	movf	(spi1_byte_exchange_hw@data),w
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	29
	
l33:	
	movlb 14	; select bank14
	btfss	(1807)^0700h,0	;volatile
	goto	u2301
	goto	u2300
u2301:
	goto	l33
u2300:
	line	31
	
l4753:	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(spi1_byte_exchange_hw@received)
	line	33
	
l4755:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	34
	movlb 0	; select bank0
	movf	(spi1_byte_exchange_hw@received),w
	line	35
	
l36:	
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
	
l4795:	
	movf	(putch_hex@byte),w
	movwf	(??_putch_hex+0)+0
	movlw	04h
u2335:
	lsrf	(??_putch_hex+0)+0,f
	decfsz	wreg,f
	goto	u2335
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
	
l1205:	
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
;;		_main
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
	
l4713:	
	
l4715:	
	fcall	_EUSART2_IsTxReady
	xorlw	low(0)&0ffh
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l4715
u2230:
	line	7
	
l4717:	
	movlb 0	; select bank0
	movf	(uart_putc@c),w
	movwf	(EUSART2_Write@txData)
	fcall	_EUSART2_Write
	line	8
	
l1196:	
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
	
l4697:	
	movlb 14	; select bank14
	btfsc	(1817)^0700h,6	;volatile
	goto	u2211
	goto	u2210
u2211:
	goto	l4701
u2210:
	line	359
	
l4699:	
	movlb 0	; select bank0
	movf	(EUSART2_Write@txData),w
	movlb 20	; select bank20
	movwf	(2586)^0A00h	;volatile
	line	360
	goto	l890
	line	361
	
l4701:	
	movlb 1	; select bank1
	movf	((_eusart2TxBufferRemaining)^080h),w	;volatile
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l890
u2220:
	line	363
	
l4703:	
	movf	(_eusart2TxHead)^080h,w
	addlw	low(_eusart2TxBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(EUSART2_Write@txData),w
	movwf	indf1
	line	364
	
l4705:	
	movlb 1	; select bank1
	movf	(_eusart2TxHead)^080h,w	;volatile
	addlw	01h
	andlw	07h
	movlb 0	; select bank0
	movwf	(EUSART2_Write@tempTxHead)
	line	366
	
l4707:	
	movf	(EUSART2_Write@tempTxHead),w
	movlb 1	; select bank1
	movwf	(_eusart2TxHead)^080h	;volatile
	line	367
	
l4709:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,6	;volatile
	line	368
	
l4711:	
	movlw	01h
	movlb 1	; select bank1
	subwf	(_eusart2TxBufferRemaining)^080h,f	;volatile
	line	373
	
l890:	
	line	374
	movlb 14	; select bank14
	bsf	(1817)^0700h,6	;volatile
	line	375
	
l893:	
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
	
l4693:	
	movlb 1	; select bank1
	movf	((_eusart2TxBufferRemaining)^080h),w	;volatile
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	movlw	1
	goto	u2200
u2190:
	movlw	0
u2200:
	line	275
	
l866:	
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
	
l4767:	
	line	102
	
l4769:	
	movlb 3	; select bank3
	btfsc	(400)^0180h,5	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l4781
u2310:
	line	104
	
l4771:	
	movlw	081h
	movwf	0+(_spi1_descriptor)+04h	;volatile
	line	106
	
l4773:	
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
	
l4775:	
	bsf	(400)^0180h,5	;volatile
	line	112
	
l4777:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,0	;volatile
	line	114
	
l4779:	
	movlw	01h
	movlb 0	; select bank0
	movwf	(SPI1_Open@returnValue)
	line	115
	goto	l4783
	line	118
	
l4781:	
	movlb 0	; select bank0
	clrf	(SPI1_Open@returnValue)
	line	120
	
l4783:	
	movf	(SPI1_Open@returnValue),w
	line	121
	
l387:	
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
	
l4735:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l4737:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l1273
u2260:
	line	46
	
l4739:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l1273:	
	line	47
	movlw	01h
	
u2275:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u2275
	line	48
	
l4741:	
	movlw	01h
	
u2285:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u2285
	line	49
	
l4743:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l4737
u2290:
	line	52
	
l4745:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l1275:	
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
	
l4759:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,0	;volatile
	line	75
	bcf	(1807)^0700h,0	;volatile
	line	77
	
l4761:	
	movlb 3	; select bank3
	clrf	(399)^0180h	;volatile
	line	78
	clrf	(400)^0180h	;volatile
	line	79
	clrf	(402)^0180h	;volatile
	line	80
	clrf	(397)^0180h	;volatile
	line	83
	
l4763:	
	movlw	0
	movlb 0	; select bank0
	movwf	(SPI1_RxCompleteCallbackRegister@CallbackHandler)
	movwf	(SPI1_RxCompleteCallbackRegister@CallbackHandler+1)
	fcall	_SPI1_RxCompleteCallbackRegister
	line	85
	
l4765:	
	clrf	0+(_spi1_descriptor)+04h	;volatile
	line	86
	
l379:	
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
	
l4719:	
	movlb 0	; select bank0
	movf	(SPI1_RxCompleteCallbackRegister@CallbackHandler+1),w
	movlb 2	; select bank2
	movwf	(_SPI1_RxCompleteCallback+1)^0100h
	movlb 0	; select bank0
	movf	(SPI1_RxCompleteCallbackRegister@CallbackHandler),w
	movlb 2	; select bank2
	movwf	(_SPI1_RxCompleteCallback)^0100h
	line	322
	
l450:	
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
	
l5275:	
	movlb 0	; select bank0
	movf	((EUSART2_RxCompleteCallbackRegister@callbackHandler)),w
iorwf	((EUSART2_RxCompleteCallbackRegister@callbackHandler+1)),w
	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l917
u2630:
	line	432
	
l5277:	
	movf	(EUSART2_RxCompleteCallbackRegister@callbackHandler+1),w
	movlb 1	; select bank1
	movwf	(_EUSART2_RxCompleteInterruptHandler+1)^080h
	movlb 0	; select bank0
	movf	(EUSART2_RxCompleteCallbackRegister@callbackHandler),w
	movlb 1	; select bank1
	movwf	(_EUSART2_RxCompleteInterruptHandler)^080h
	line	434
	
l917:	
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
	
l5279:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,7	;volatile
	line	261
	
l857:	
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
	
i1l4661:	
	movlb 14	; select bank14
	btfss	(1814)^0700h,0	;volatile
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l994
u204_20:
	
i1l4663:	
	btfss	(1804)^0700h,0	;volatile
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l994
u205_20:
	line	62
	
i1l4665:	
	fcall	_INT_ISR
	line	63
	goto	i1l1010
	line	64
	
i1l994:	
	btfss	(1814)^0700h,4	;volatile
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l996
u206_20:
	
i1l4667:	
	btfss	(1804)^0700h,4	;volatile
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l996
u207_20:
	line	66
	
i1l4669:	
	fcall	_PIN_MANAGER_IOC
	line	67
	goto	i1l1010
	line	68
	
i1l996:	
	btfss	(11),6	;volatile
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l1004
u208_20:
	line	70
	
i1l4671:	
	btfss	(1817)^0700h,6	;volatile
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l999
u209_20:
	
i1l4673:	
	btfss	(1807)^0700h,6	;volatile
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l999
u210_20:
	line	72
	
i1l4675:	
	movlb 2	; select bank2
	movf	(_EUSART2_TxInterruptHandler+1)^0100h,w
	movwf	pclath
	movf	(_EUSART2_TxInterruptHandler)^0100h,w
	callw
	pagesel	$
	line	73
	goto	i1l1010
	line	74
	
i1l999:	
	btfss	(1817)^0700h,7	;volatile
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l1001
u211_20:
	
i1l4677:	
	btfss	(1807)^0700h,7	;volatile
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l1001
u212_20:
	line	76
	
i1l4679:	
	movlb 2	; select bank2
	movf	(_EUSART2_RxInterruptHandler+1)^0100h,w
	movwf	pclath
	movf	(_EUSART2_RxInterruptHandler)^0100h,w
	callw
	pagesel	$
	line	77
	goto	i1l1010
	line	78
	
i1l1001:	
	btfss	(1817)^0700h,3	;volatile
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l1003
u213_20:
	
i1l4681:	
	btfss	(1807)^0700h,3	;volatile
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l1003
u214_20:
	line	80
	
i1l4683:	
	fcall	_I2C2_ERROR_ISR
	line	81
	goto	i1l1010
	line	82
	
i1l1003:	
	btfss	(1817)^0700h,2	;volatile
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l1005
u215_20:
	
i1l4685:	
	btfss	(1807)^0700h,2	;volatile
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l1005
u216_20:
	line	84
	
i1l4687:	
	fcall	_I2C2_ISR
	line	85
	goto	i1l1010
	line	86
	
i1l1005:	
	btfss	(1817)^0700h,0	;volatile
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l1004
u217_20:
	
i1l4689:	
	btfss	(1807)^0700h,0	;volatile
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l1004
u218_20:
	line	88
	
i1l4691:	
	fcall	_SPI1_ISR
	line	89
	goto	i1l1010
	line	93
	
i1l1004:	
	line	99
	
i1l1010:	
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
	
i1l4137:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	268
	
i1l4139:	
	clrf	(SPI1_ISR@dataToWrite)
	line	270
	
i1l4141:	
	movf	(0+(_spi1_descriptor)+01h),w	;volatile
iorwf	(1+(_spi1_descriptor)+01h),w	;volatile
	btfsc	status,2
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l4153
u182_20:
	line	272
	
i1l4143:	
		movlw	129
	xorwf	(0+(_spi1_descriptor)+03h),w	;volatile
	btfsc	status,2
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l4147
u183_20:
	line	274
	
i1l4145:	
	movf	(_spi1_descriptor),w	;volatile
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movwf	indf1
	line	281
	
i1l4147:	
	movlw	low(01h)
	addwf	(_spi1_descriptor),f	;volatile
	line	283
	movf	(0+(_spi1_descriptor)+03h),w	;volatile
	btfsc	status,2
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l4151
u184_20:
	line	285
	
i1l4149:	
	movf	(_spi1_descriptor),w	;volatile
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(SPI1_ISR@dataToWrite)
	line	291
	
i1l4151:	
	movlw	01h
	subwf	0+(_spi1_descriptor)+01h,f	;volatile
	movlw	0
	subwfb	1+(_spi1_descriptor)+01h,f	;volatile
	line	292
	movf	(SPI1_ISR@dataToWrite),w
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	293
	goto	i1l447
	line	296
	
i1l4153:	
		movlw	129
	xorwf	(0+(_spi1_descriptor)+03h),w	;volatile
	btfsc	status,2
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l444
u185_20:
	
i1l4155:	
		movlw	129
	xorwf	(0+(_spi1_descriptor)+04h),w	;volatile
	btfsc	status,2
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l444
u186_20:
	line	298
	
i1l4157:	
	movf	(_spi1_descriptor),w	;volatile
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movwf	indf1
	line	303
	
i1l444:	
	line	305
	movlw	081h
	movwf	0+(_spi1_descriptor)+04h	;volatile
	line	306
	movlb 14	; select bank14
	bcf	(1817)^0700h,0	;volatile
	line	317
	
i1l447:	
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
	
i1l4219:	
	movlb 62	; select bank62
	btfss	(7999)^01F00h,5	;volatile
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l1172
u194_20:
	line	156
	
i1l4221:	
	fcall	_IO_RA5_ISR
	line	158
	
i1l1172:	
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
	
i1l3797:	
	movlb 2	; select bank2
	movf	((_IO_RA5_InterruptHandler)^0100h),w
iorwf	((_IO_RA5_InterruptHandler+1)^0100h),w
	btfsc	status,2
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l3801
u156_20:
	line	170
	
i1l3799:	
	movf	(_IO_RA5_InterruptHandler+1)^0100h,w
	movwf	pclath
	movf	(_IO_RA5_InterruptHandler)^0100h,w
	callw
	pagesel	$
	line	172
	
i1l3801:	
	movlb 62	; select bank62
	bcf	(7999)^01F00h,5	;volatile
	line	173
	
i1l1176:	
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
	
i1l1182:	
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
	
i1l4215:	
	movlb 14	; select bank14
	bcf	(1804)^0700h,0	;volatile
	line	106
	
i1l4217:	
	fcall	_INT_CallBack
	line	107
	
i1l1013:	
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
	
i1l3793:	
	movlb 1	; select bank1
	movf	((_INT_InterruptHandler)^080h),w
iorwf	((_INT_InterruptHandler+1)^080h),w
	btfsc	status,2
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l1017
u155_20:
	line	115
	
i1l3795:	
	movf	(_INT_InterruptHandler+1)^080h,w
	movwf	pclath
	movf	(_INT_InterruptHandler)^080h,w
	callw
	pagesel	$
	line	117
	
i1l1017:	
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
	
i1l1023:	
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
	
i1l4163:	
	fcall	_I2C2_EventHandler
	line	220
	
i1l591:	
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
	
i1l3645:	
	fcall	_I2C2_InterruptClear
	line	257
	
i1l3647:	
	movlb 3	; select bank3
	btfss	(409)^0180h,4	;volatile
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l3651
u149_20:
	line	259
	
i1l3649:	
	fcall	_I2C2_Close
	line	260
	goto	i1l3663
	line	263
	
i1l3651:	
	fcall	_I2C2_IsAddr
	xorlw	low(0)&0ffh
	skipnz
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l3657
u150_20:
	
i1l3653:	
	fcall	_I2C2_IsNack
	xorlw	low(0)&0ffh
	skipnz
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l3657
u151_20:
	line	265
	
i1l3655:	
	movlw	05h
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	266
	movlw	01h
	movwf	0+(_i2c2Status)+0Ch	;volatile
	line	267
	goto	i1l3663
	line	268
	
i1l3657:	
	fcall	_I2C2_IsData
	xorlw	low(0)&0ffh
	skipnz
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l609
u152_20:
	
i1l3659:	
	fcall	_I2C2_IsNack
	xorlw	low(0)&0ffh
	skipnz
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l609
u153_20:
	line	270
	
i1l3661:	
	movlw	05h
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	271
	movlw	02h
	movwf	0+(_i2c2Status)+0Ch	;volatile
	line	272
	goto	i1l3663
	line	276
	
i1l609:	
	line	279
	
i1l3663:	
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
	
i1l612:	
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
	
i1l3411:	
	movlb 3	; select bank3
	swapf	(411)^0180h,w	;volatile
	rrf	wreg,f
	rrf	wreg,f
	andlw	(1<<1)-1
	line	457
	
i1l684:	
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
	
i1l3415:	
	movlb 3	; select bank3
	swapf	(409)^0180h,w	;volatile
	rrf	wreg,f
	andlw	(1<<1)-1
	line	462
	
i1l687:	
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
	
i1l3407:	
	clrc
	movlb 3	; select bank3
	btfss	(409)^0180h,5	;volatile
	setc
	movlw	0
	addwfc	wreg,w
	line	467
	
i1l690:	
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
	
i1l4165:	
	fcall	_I2C2_ErrorEventHandler
	line	225
	
i1l594:	
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
	
i1l3665:	
	movlw	06h
	movlb 0	; select bank0
	movwf	0+(_i2c2Status)+0Dh	;volatile
	line	285
	movlw	03h
	movwf	0+(_i2c2Status)+0Ch	;volatile
	line	286
	
i1l3667:	
	fcall	_I2C2_ErrorInterruptClear
	line	287
	
i1l3669:	
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
	
i1l615:	
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
	
i1l3345:	
	fcall	_I2C2_BusReset
	line	394
	
i1l3347:	
	movlb 0	; select bank0
	clrf	(_i2c2Status)	;volatile
	line	395
	
i1l3349:	
	movlw	low(0)
	line	396
	
i1l651:	
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
	
i1l3323:	
	fcall	_I2C2_StopSend
	line	387
	fcall	_I2C2_Close
	line	388
	
i1l3325:	
	movlw	low(0)
	line	389
	
i1l648:	
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
	
i1l3497:	
	line	380
	
i1l3499:	
	fcall	_I2C2_EVENT_RESET
	movwf	(I2C2_EVENT_ERROR@retEventState)
	line	381
	
i1l3501:	
	movf	(I2C2_EVENT_ERROR@retEventState),w
	line	382
	
i1l645:	
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
	
i1l3489:	
	line	373
	
i1l3491:	
	fcall	_I2C2_EVENT_STOP
	movwf	(I2C2_EVENT_NACK@retEventState)
	line	374
	
i1l3493:	
	movf	(I2C2_EVENT_NACK@retEventState),w
	line	375
	
i1l642:	
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
	
i1l3463:	
	movlw	04h
	movwf	(I2C2_EVENT_RX@retEventState)
	line	341
	
i1l3465:	
	fcall	_I2C2_IsRxBufFull
	xorlw	low(0)&0ffh
	skipnz
	goto	u126_21
	goto	u126_20
u126_21:
	goto	i1l3483
u126_20:
	line	343
	
i1l3467:	
	movlb 0	; select bank0
	movf	(0+(_i2c2Status)+09h),w	;volatile
iorwf	(1+(_i2c2Status)+09h),w	;volatile
	btfsc	status,2
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l3475
u127_20:
	line	345
	
i1l3469:	
	movf	0+(_i2c2Status)+07h,w	;volatile
	movwf	fsr1l
	movf	1+(_i2c2Status)+07h,w	;volatile
	movwf	fsr1h

	fcall	_I2C2_DataReceive
	movwf	indf1
	line	346
	
i1l3471:	
	movlw	01h
	movlb 0	; select bank0
	addwf	0+(_i2c2Status)+07h,f	;volatile
	movlw	0
	addwfc	1+(_i2c2Status)+07h,f	;volatile
	line	347
	
i1l3473:	
	movlw	01h
	subwf	0+(_i2c2Status)+09h,f	;volatile
	movlw	0
	subwfb	1+(_i2c2Status)+09h,f	;volatile
	line	351
	
i1l3475:	
	movf	(0+(_i2c2Status)+09h),w	;volatile
iorwf	(1+(_i2c2Status)+09h),w	;volatile
	btfsc	status,2
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l3479
u128_20:
	line	353
	
i1l3477:	
	fcall	_I2C2_AckSend
	line	354
	goto	i1l3485
	line	357
	
i1l3479:	
	fcall	_I2C2_RestartDisable
	line	358
	fcall	_I2C2_NackSend
	line	359
	
i1l3481:	
	movlw	07h
	movwf	(I2C2_EVENT_RX@retEventState)
	goto	i1l3485
	line	365
	
i1l3483:	
	fcall	_I2C2_ReceiveEnable
	line	367
	
i1l3485:	
	movf	(I2C2_EVENT_RX@retEventState),w
	line	368
	
i1l639:	
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
	
i1l3431:	
	movlb 0	; select bank0
	lslf	0+(_i2c2Status)+01h,w	;volatile
	fcall	_I2C2_DataTransmit
	line	307
	
i1l3433:	
	movlw	low(03h)
	line	308
	
i1l624:	
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
	
i1l3425:	
	setc
	movlb 0	; select bank0
	rlf	0+(_i2c2Status)+01h,w	;volatile
	fcall	_I2C2_DataTransmit
	line	301
	
i1l3427:	
	movlw	low(04h)
	line	302
	
i1l621:	
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
	
i1l3419:	
	movlb 0	; select bank0
	clrf	(_i2c2Status)	;volatile
	line	295
	
i1l3421:	
	movlw	low(08h)
	line	296
	
i1l618:	
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
	
i1l3437:	
	line	313
	
i1l3439:	
	movlb 0	; select bank0
	movf	(0+(_i2c2Status)+05h),w	;volatile
iorwf	(1+(_i2c2Status)+05h),w	;volatile
	btfsc	status,2
	goto	u124_21
	goto	u124_20
u124_21:
	goto	i1l3449
u124_20:
	line	315
	
i1l3441:	
	movlw	01h
	subwf	0+(_i2c2Status)+05h,f	;volatile
	movlw	0
	subwfb	1+(_i2c2Status)+05h,f	;volatile
	line	316
	
i1l3443:	
	movf	0+(_i2c2Status)+03h,w	;volatile
	movwf	fsr1l
	movf	1+(_i2c2Status)+03h,w	;volatile
	movwf	fsr1h

	movf	indf1,w
	fcall	_I2C2_DataTransmit
	line	317
	
i1l3445:	
	movlw	01h
	movlb 0	; select bank0
	addwf	0+(_i2c2Status)+03h,f	;volatile
	movlw	0
	addwfc	1+(_i2c2Status)+03h,f	;volatile
	line	318
	
i1l3447:	
	movlw	03h
	movwf	(I2C2_EVENT_TX@retEventState)
	line	319
	goto	i1l3459
	line	322
	
i1l3449:	
	movf	(0+(_i2c2Status)+0Bh),w	;volatile
	btfsc	status,2
	goto	u125_21
	goto	u125_20
u125_21:
	goto	i1l3457
u125_20:
	line	324
	
i1l3451:	
	clrf	0+(_i2c2Status)+0Bh	;volatile
	line	325
	
i1l3453:	
	fcall	_I2C2_RestartEnable
	line	326
	
i1l3455:	
	movlw	01h
	movwf	(I2C2_EVENT_TX@retEventState)
	line	327
	goto	i1l3459
	line	330
	
i1l3457:	
	fcall	_I2C2_EVENT_STOP
	movwf	(I2C2_EVENT_TX@retEventState)
	line	334
	
i1l3459:	
	movf	(I2C2_EVENT_TX@retEventState),w
	line	335
	
i1l631:	
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
	
i1l3321:	
	movlb 3	; select bank3
	bsf	(411)^0180h,1	;volatile
	line	425
	
i1l666:	
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
	
i1l3319:	
	movf	(I2C2_DataTransmit@data),w
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	409
	
i1l657:	
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
	
i1l3339:	
	movlb 3	; select bank3
	bcf	(411)^0180h,1	;volatile
	line	430
	
i1l669:	
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
	
i1l3343:	
	movlb 3	; select bank3
	bsf	(411)^0180h,3	;volatile
	line	420
	
i1l663:	
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
	
i1l3341:	
	movlb 3	; select bank3
	bsf	(411)^0180h,5	;volatile
	line	451
	bsf	(411)^0180h,4	;volatile
	line	452
	
i1l681:	
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
	
i1l3329:	
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	andlw	(1<<1)-1
	line	472
	
i1l693:	
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
	
i1l3333:	
	movlb 3	; select bank3
	movf	(406)^0180h,w	;volatile
	line	404
	
i1l654:	
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
	
i1l3337:	
	movlb 3	; select bank3
	bcf	(411)^0180h,5	;volatile
	line	445
	bsf	(411)^0180h,4	;volatile
	line	446
	
i1l678:	
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
	
i1l3315:	
	movlb 3	; select bank3
	bsf	(411)^0180h,2	;volatile
	line	440
	
i1l675:	
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
	
i1l3305:	
	movlb 0	; select bank0
	clrf	(_i2c2Status)	;volatile
	line	245
	
i1l3307:	
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
	
i1l3309:	
	fcall	_I2C2_InterruptClear
	line	250
	
i1l3311:	
	fcall	_I2C2_ErrorInterruptClear
	line	251
	
i1l3313:	
	fcall	_I2C2_StatusFlagsClear
	line	252
	
i1l603:	
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
	
i1l3303:	
	movlb 3	; select bank3
	bcf	(410)^0180h,7	;volatile
	line	499
	bcf	(410)^0180h,6	;volatile
	line	500
	
i1l708:	
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
	
i1l3299:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,2	;volatile
	line	489
	
i1l702:	
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
	
i1l3301:	
	movlb 14	; select bank14
	bcf	(1807)^0700h,3	;volatile
	line	494
	
i1l705:	
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
	
i1l3317:	
	movlb 3	; select bank3
	bcf	(410)^0180h,5	;volatile
	line	414
	bsf	(410)^0180h,5	;volatile
	line	415
	
i1l660:	
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
	
i1l4203:	
	movlw	low(08h)
	movlb 1	; select bank1
	subwf	(_eusart2TxBufferRemaining)^080h,w	;volatile
	skipnc
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l896
u193_20:
	line	383
	
i1l4205:	
	movf	(_eusart2TxTail)^080h,w
	addlw	low(_eusart2TxBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 20	; select bank20
	movwf	(2586)^0A00h	;volatile
	line	384
	
i1l4207:	
	movlb 1	; select bank1
	movf	(_eusart2TxTail)^080h,w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_TransmitISR@tempTxTail)
	line	386
	
i1l4209:	
	movf	(EUSART2_TransmitISR@tempTxTail),w
	movwf	(_eusart2TxTail)^080h	;volatile
	line	387
	
i1l4211:	
	movlw	low(01h)
	addwf	(_eusart2TxBufferRemaining)^080h,f	;volatile
	line	388
	goto	i1l899
	line	389
	
i1l896:	
	line	391
	movlb 14	; select bank14
	bcf	(1817)^0700h,6	;volatile
	line	398
	
i1l899:	
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
	
i1l4167:	
	movlb 1	; select bank1
	lslf	(_eusart2RxHead)^080h,w	;volatile
	addlw	low(_eusart2RxStatusBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	316
	
i1l4169:	
	movlb 20	; select bank20
	btfss	(2589)^0A00h,1	;volatile
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l4177
u187_20:
	line	318
	
i1l4171:	
	movlb 1	; select bank1
	lslf	(_eusart2RxHead)^080h,w	;volatile
	addlw	low(_eusart2RxStatusBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	319
	
i1l4173:	
	movf	((_EUSART2_OverrunErrorHandler)^080h),w
iorwf	((_EUSART2_OverrunErrorHandler+1)^080h),w
	btfsc	status,2
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l4177
u188_20:
	line	321
	
i1l4175:	
	movf	(_EUSART2_OverrunErrorHandler+1)^080h,w
	movwf	pclath
	movf	(_EUSART2_OverrunErrorHandler)^080h,w
	callw
	pagesel	$
	line	324
	
i1l4177:	
	movlb 20	; select bank20
	btfss	(2589)^0A00h,2	;volatile
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l4185
u189_20:
	line	326
	
i1l4179:	
	movlb 1	; select bank1
	lslf	(_eusart2RxHead)^080h,w	;volatile
	addlw	low(_eusart2RxStatusBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	327
	
i1l4181:	
	movf	((_EUSART2_FramingErrorHandler)^080h),w
iorwf	((_EUSART2_FramingErrorHandler+1)^080h),w
	btfsc	status,2
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l4185
u190_20:
	line	329
	
i1l4183:	
	movf	(_EUSART2_FramingErrorHandler+1)^080h,w
	movwf	pclath
	movf	(_EUSART2_FramingErrorHandler)^080h,w
	callw
	pagesel	$
	line	333
	
i1l4185:	
	movlb 20	; select bank20
	movf	(2585)^0A00h,w	;volatile
	movwf	(EUSART2_ReceiveISR@regValue)
	line	335
	
i1l4187:	
	movlb 1	; select bank1
	movf	(_eusart2RxHead)^080h,w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_ReceiveISR@tempRxHead)
	line	336
	
i1l4189:	
	movf	(EUSART2_ReceiveISR@tempRxHead),w
	xorwf	(_eusart2RxTail)^080h,w	;volatile
	skipz
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l4193
u191_20:
	goto	i1l4199
	line	342
	
i1l4193:	
	movf	(_eusart2RxHead)^080h,w
	addlw	low(_eusart2RxBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(EUSART2_ReceiveISR@regValue),w
	movwf	indf1
	line	343
	
i1l4195:	
	movf	(EUSART2_ReceiveISR@tempRxHead),w
	movwf	(_eusart2RxHead)^080h	;volatile
	line	344
	
i1l4197:	
	movlw	low(01h)
	addwf	(_eusart2RxCount)^080h,f	;volatile
	line	347
	
i1l4199:	
	movf	((_EUSART2_RxCompleteInterruptHandler)^080h),w
iorwf	((_EUSART2_RxCompleteInterruptHandler+1)^080h),w
	btfsc	status,2
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l886
u192_20:
	line	349
	
i1l4201:	
	movf	(_EUSART2_RxCompleteInterruptHandler+1)^080h,w
	movwf	pclath
	movf	(_EUSART2_RxCompleteInterruptHandler)^080h,w
	callw
	pagesel	$
	line	351
	
i1l886:	
	return
	callstack 0
GLOBAL	__end_of_EUSART2_ReceiveISR
	__end_of_EUSART2_ReceiveISR:
	signat	_EUSART2_ReceiveISR,89
	global	_onUartInput

;; *************** function _onUartInput *****************
;; Defined at:
;;		line 63 in file "main.c"
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
	line	63
global __ptext83
__ptext83:	;psect for function _onUartInput
psect	text83
	file	"main.c"
	line	63
	
_onUartInput:	
;incstack = 0
	callstack 8
; Regs used in _onUartInput: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	64
	
i1l3613:	
	fcall	_EUSART2_IsRxReady
	xorlw	low(0)&0ffh
	skipnz
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l245
u145_20:
	line	65
	
i1l3615:	
	fcall	_EUSART2_Read
	movwf	(onUartInput@received)
	line	68
	
i1l3617:	
	movlw	low(03Fh)
	movlb 1	; select bank1
	subwf	(_rx_index)^080h,w	;volatile
	skipnc
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l3631
u146_20:
	line	69
	
i1l3619:	
	movf	(_rx_index)^080h,w
	addlw	low(_rx_buffer|((0x2)<<8))&0ffh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(onUartInput@received),w
	movwf	indf1
	
i1l3621:	
	movlw	low(01h)
	addwf	(_rx_index)^080h,f	;volatile
	line	72
	
i1l3623:	
		movlw	10
	xorwf	((onUartInput@received)),w
	btfsc	status,2
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l3627
u147_20:
	
i1l3625:	
		movlw	13
	xorwf	((onUartInput@received)),w
	btfss	status,2
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l245
u148_20:
	line	73
	
i1l3627:	
	movf	(_rx_index)^080h,w
	addlw	low(_rx_buffer|((0x2)<<8))&0ffh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	74
	
i1l3629:	
	movlw	01h
	movwf	(_message_ready)^080h	;volatile
	line	75
	
i1l3631:	
	clrf	(_rx_index)^080h	;volatile
	line	82
	
i1l245:	
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
	
i1l3383:	
	line	293
	
i1l3385:	
	movlb 1	; select bank1
	movf	(_eusart2RxTail)^080h,w
	addlw	low(_eusart2RxBuffer|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(EUSART2_Read@readValue)
	line	295
	
i1l3387:	
	movf	(_eusart2RxTail)^080h,w	;volatile
	addlw	01h
	andlw	07h
	movwf	(EUSART2_Read@tempRxTail)
	line	297
	
i1l3389:	
	movf	(EUSART2_Read@tempRxTail),w
	movwf	(_eusart2RxTail)^080h	;volatile
	line	299
	
i1l3391:	
	movlb 14	; select bank14
	bcf	(1817)^0700h,7	;volatile
	line	300
	
i1l3393:	
	movlb 1	; select bank1
	movf	((_eusart2RxCount)^080h),w	;volatile
	btfsc	status,2
	goto	u123_21
	goto	u123_20
u123_21:
	goto	i1l3397
u123_20:
	line	302
	
i1l3395:	
	movlw	01h
	subwf	(_eusart2RxCount)^080h,f	;volatile
	line	304
	
i1l3397:	
	movlb 14	; select bank14
	bsf	(1817)^0700h,7	;volatile
	line	305
	
i1l3399:	
	movf	(EUSART2_Read@readValue),w
	line	306
	
i1l876:	
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
	
i1l3379:	
	movlb 1	; select bank1
	movf	((_eusart2RxCount)^080h),w	;volatile
	btfss	status,2
	goto	u121_21
	goto	u121_20
u121_21:
	movlw	1
	goto	u122_20
u121_20:
	movlw	0
u122_20:
	line	270
	
i1l863:	
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
	
i1l3707:	
	movlb 20	; select bank20
	bcf	(2589)^0A00h,4	;volatile
	line	409
	bsf	(2589)^0A00h,4	;volatile
	line	410
	
i1l905:	
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
	
i1l902:	
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
