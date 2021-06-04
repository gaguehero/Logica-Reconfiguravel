/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "system.h"

#include "io.h"

int main()
{
	//printf("Hello from Nios II!\n");
	int envio[20],recibo[20];
	int atual , i=0;
	int *pWr, *pRd;
	while (i++<50){
		pRd = TOP_AVALON1_0_BASE;
		pWr = TOP_AVALON1_0_BASE;
		//dez escritas consecutivas
		*(pWr + 0) = 0x00000000;
		*(pWr + 1) = 0x0000000A;
		*(pWr + 0) = 0x00000001;
		*(pWr + 1) = 0x00000009;
		*(pWr + 0) = 0x00000002;
		*(pWr + 1) = 0x00000008;
		*(pWr + 0) = 0x00000003;
		*(pWr + 1) = 0x00000007;
		*(pWr + 0) = 0x00000004;
		*(pWr + 1) = 0x00000006;
		*(pWr + 0) = 0x00000005;
		*(pWr + 1) = 0x00000005;
		*(pWr + 0) = 0x00000006;
		*(pWr + 1) = 0x00000004;
		*(pWr + 0) = 0x00000007;
		*(pWr + 1) = 0x00000003;
		*(pWr + 0) = 0x00000008;
		*(pWr + 1) = 0x00000002;
		*(pWr + 0) = 0x00000009;
		*(pWr + 1) = 0x00000001;
		*(pWr + 0) = 0x0000000A;
		*(pWr + 1) = 0x00000000;
		//dez leituras consecutivas
		*(pWr + 0) = 0x00000000;
		atual = *pRd;
		*(pWr + 0) = 0x00000001;
		atual = *pRd;
		*(pWr + 0) = 0x00000002;
		atual = *pRd;
		*(pWr + 0) = 0x00000003;
		atual = *pRd;
		*(pWr + 0) = 0x00000004;
		atual = *pRd;
		*(pWr + 0) = 0x00000005;
		atual = *pRd;
		*(pWr + 0) = 0x00000006;
		atual = *pRd;
		*(pWr + 0) = 0x00000007;
		atual = *pRd;
		*(pWr + 0) = 0x00000008;
		atual = *pRd;
		*(pWr + 0) = 0x00000009;
		atual = *pRd;
		*(pWr + 0) = 0x0000000A;
		atual = *pRd;
	}

	return 0;
}
