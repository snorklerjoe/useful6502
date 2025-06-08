/*
        This program was written by Thomas A. Coonan (tcoonan@mindspring.com)

        HEX2VHDL Converts the default HEX output of the Microchip PIC
	assembler, MPASM, into the VHDL format needed by the Synthetic PIC.
	Output is a PICROM VHDL entity.

	To use this utility, you will probably need to do the following step:
		1. Create and debug your PIC16C5X program using the standard MPASM
			and MPSIM programs.  Let's say, your program is TEST.ASM.  When you're
			done, you will have the file TEST.HEX
		2. Run this program with the command line:
				HEX2VHDL TEST
		3. You should now have the file TEST.VHD.  If you examine this file, you'll
			see that the actual VHDL entity is named PICROM.  So, copy your file
			into PICROM.VHD, eg.
				COPY TEST.VHD PICROM.VHD
		4. Now, you can recompile/analyse/synthesize your PICROM.VHD which is what
			the overal PICCPU and PICTEST VHDL models are expecting.

	You can conceivably create some BAT files that do whatever housekeeping you
	need for these files.  Perhaps, this program can be modified to offer more
	flexibility in generating entity names and file names.

	HEX2VHDL was written in Borland C++ for DOS, but is hopefully pretty vanilla..
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE *fpi, *fpo;

#define MAX_MEMORY_SIZE  1024
struct {
	unsigned int  nAddress;
	unsigned int  byData;
} Memory[MAX_MEMORY_SIZE];

char szLine[80];
unsigned int  start_address, address, ndata_bytes, ndata_words;
unsigned int  data;
unsigned int  nMemoryCount;
char *MakeBinaryString (unsigned int data);

char *szHelpLine = 
"\nThe Synthetic PIC --- HEX File to VHDL Memory Entity conversion."
"\nUsage: HEX2VHDL <filename>"
"\n  Input file is assumed to have the extension 'hex'."
"\n  Output will go to the filename with the extension 'vhd'.\n\n";

char szInFilename[40];
char szOutFilename[40];

int main (int argc, char *argv[])
{
	int  i;

	if (!(argc == 2 || argc == 3)) {
		printf (szHelpLine);
		exit(1);
	}

	if ( (strcmp(argv[1], "?") == 0) ||
		  (strcmp(argv[1], "help") == 0) ||
		  (strcmp(argv[1], "-h") == 0) ||
		  (strcmp(argv[1], "-?") == 0)) {
		printf (szHelpLine);
		exit(1);
	}

	strcpy (szInFilename, argv[1]);
	if ( strstr(szInFilename, ".") == 0)
		strcat (szInFilename, ".hex");

	strcpy (szOutFilename, argv[1]);
	strcat (szOutFilename, ".vhd");

	if((fpi=fopen(szInFilename, "r"))==NULL){
		printf("Can\'t open file %s.\n", szInFilename);
		exit(1);
	}

	nMemoryCount = 0;
	while (!feof(fpi)) {
		fgets (szLine, 80, fpi);
		if (strlen(szLine) >= 10) {

			sscanf (&szLine[1], "%2x%4x", &ndata_bytes, &start_address);
			if (start_address >= 0 && start_address <= 20000 && ndata_bytes > 0) {
				i = 9;

				ndata_words   = ndata_bytes/2;
				start_address = start_address/2;

				for (address = start_address; address < start_address + ndata_words; address++) {
					sscanf (&szLine[i], "%04x", &data);

					data = ((data >> 8) & 0x00ff) | ((data << 8) & 0xff00);
					i += 4;

					Memory[nMemoryCount].nAddress = address;
					Memory[nMemoryCount].byData   = data;
					nMemoryCount++;
				}
			}
		}
	}

	if((fpo=fopen(szOutFilename, "w"))==NULL){
		printf("Can't open VHDL file '%s'.\n", szOutFilename);
		exit(1);
	}

	fprintf (fpo, "\nlibrary IEEE;");
	fprintf (fpo, "\nuse IEEE.std_logic_1164.all;");
	fprintf (fpo, "\nuse IEEE.std_logic_arith.all;");

	fprintf (fpo, "\n\nentity PIC_ROM is");
	fprintf (fpo, "\n  port (");
	fprintf (fpo, "\n	 Addr    : in   std_logic_vector(8 downto 0);");
	fprintf (fpo, "\n	 Data    : out  std_logic_vector(11 downto 0));");

	fprintf (fpo, "\nend PIC_ROM;");
	fprintf (fpo, "\n\n\narchitecture first of PIC_ROM is");
	fprintf (fpo, "\nbegin");

	fprintf (fpo, "\n  Data <= ");
	for (i = 0; i < nMemoryCount; i++) {
		fprintf (fpo,"\n        \"%s\" When to_integer(Addr) = %03d Else",
			MakeBinaryString(Memory[i].byData)+4,    
			Memory[i].nAddress
		);
	}

	fprintf (fpo, "\n        \"000000000000\";");
	fprintf (fpo, "\nend first;");

	fclose (fpi);
	fclose (fpo);
}

char *MakeBinaryString (unsigned int data)
{
	static char szBinary[20];  
	int  i;

	for (i = 0; i < 16; i++) {
		if (data & 0x8000) {
			szBinary[i] = '1';
		}
		else {
			szBinary[i] = '0';
		}
		data <<= 1;
	}

	szBinary[i] = '\0';
	return szBinary;
}

