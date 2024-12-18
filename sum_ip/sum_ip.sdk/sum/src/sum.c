#include "xparameters.h"
#include "xil_io.h"
#include "sum_ip.h"

#include "sleep.h"

//====================================================

int main (void) {

	int res;
	int opA = 100;
	int opB = 200;

    xil_printf("-- Inicio del programa para validar el uso de IP cores propios --\r\n");
 
    int i = 0;

    while(1){
    	opA = opA + i*10;
    	opB = opB + i*2;

		SUM_IP_mWriteReg(XPAR_SUM_IP_S_AXI_BASEADDR, SUM_IP_S_AXI_SLV_REG0_OFFSET, opA);
		SUM_IP_mWriteReg(XPAR_SUM_IP_S_AXI_BASEADDR, SUM_IP_S_AXI_SLV_REG1_OFFSET, opB);
		res = SUM_IP_mReadReg(XPAR_SUM_IP_S_AXI_BASEADDR, SUM_IP_S_AXI_SLV_REG2_OFFSET);

		xil_printf("Cuenta: %d + %d = %d\r\n", opA, opB, res);

		i++;
		sleep(1);
    }



}
 
