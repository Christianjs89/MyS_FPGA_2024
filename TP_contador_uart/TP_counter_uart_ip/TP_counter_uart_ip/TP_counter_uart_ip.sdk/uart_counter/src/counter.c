/*
 * counter.c
 *
 *  CONTADOR UART IP
 *  Driver para controlar el contador implementado en hardware mediante el ingreso de comandos por el usuario
 *  Enviar 'u' UP, 'd' DOWN, 'p' PAUSE or 'r' RESET
 *
 *  Created on: Dec 7, 2024
 *      Author: chris
 */

#include "uart_counter_ip.h"
#include "xil_io.h"
#include "xparameters.h"
#include <sleep.h>
#include "xuartps_hw.h"
#include "xuartps.h"

/* T=1/125E6 = 0.008 us 1 clock cycle para disparar el process()
 * delay [us] para que el hardware procese el READY y lea la instruccion del contador */
#define READYDELAY 1


/* PROTOTIPOS */
void print_command(u8 command);
void process_command(u8 command);
void print_welcome(void);
void counter_init(void);

/* COMIENZO MAIN */
int main(void){
	u8 rxByte = '\0'; // buffer para recibir byte por UART

	// comenzar con el contador reseteado
	counter_init();

	// imprimir bienvenida
	print_welcome();

	// superloop
	while(1){
		// prompt de usuario
		xil_printf("\r\n> Ingrese un comando: ");
		// recibir byte en polling mode por uart
		rxByte = XUartPs_RecvByte(XPAR_PS7_UART_0_BASEADDR); // direccion base UART0 definida en xparameters.h
		// imprimir mensaje de commando por pantalla
		xil_printf("%c --> ", rxByte); // echo del byte recibido
		print_command(rxByte); // imprimir descripcion del comando
		// escribir comando por bus AXI al bloque ip
		process_command(rxByte);
		usleep(1000);
	}
}
/* FIN MAIN */


/* DEFINICION FUNCIONES */

/* Imprimir en pantalla la descripcion del comando ingresado */
void print_command(u8 command){
	char * text = "\033[31mComando desconodido\033[0m";

	switch(command){
	case 'u':
		text = "\033[32mCuenta ascendente\033[0m";
		break;
	case 'd':
		text = "\033[32mCuenta descendente\033[0m";
		break;
	case 'r':
		text = "\033[32mReset a 0\033[0m";
		break;
	case 'p':
		text = "\033[32mContador pausado\033[0m";
		break;
	default:
		// nada
		break;
	}
	// imprimir texto en terminal
	xil_printf(text);
}


/* Procesar el comando y escribir al registro correspondiente del bus AXI*/
void process_command(u8 command){
	// escribir comando en registro 0
	UART_COUNTER_IP_mWriteReg(XPAR_UART_COUNTER_IP_0_S_AXI_BASEADDR, UART_COUNTER_IP_S_AXI_SLV_REG0_OFFSET, command);
	// set ready flag - registro 1
	UART_COUNTER_IP_mWriteReg(XPAR_UART_COUNTER_IP_0_S_AXI_BASEADDR, UART_COUNTER_IP_S_AXI_SLV_REG1_OFFSET, 1);
	usleep(READYDELAY);
	// reset ready flag - registro 1
	UART_COUNTER_IP_mWriteReg(XPAR_UART_COUNTER_IP_0_S_AXI_BASEADDR, UART_COUNTER_IP_S_AXI_SLV_REG1_OFFSET, 0);
	usleep(READYDELAY);
}

/* Imprimir mensaje de bienvenida con instrucciones */
void print_welcome(void){
	xil_printf("\r\n|=======================================================|\r\n");
	xil_printf("|\033[1;34m                 INICIO CONTADOR UART\033[0m                 |\r\n");
	xil_printf("|\033[5;34m Comandos: [u] UP | [D] DOWN | [r] RESET | [p] PAUSE   \033[0m|\r\n");
	xil_printf("|=======================================================|\r\n");
}

/* resetear contador */
void counter_init(void){
	process_command('r');
}

