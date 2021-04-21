; PIC16F886 Configuration Bit Settings

; Assembly source line config statements

#include "p16f886.inc"

; CONFIG1
    __CONFIG _CONFIG1,  _FOSC_INTRC_CLKOUT & _WDTE_OFF & _PWRTE_ON & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_OFF
; CONFIG2
    __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF



REG1		EQU 	0X0c		;asigna nombre a los registros
REG2		EQU 	0X0d		
REG3		EQU 	0X0e	   
;CODIGO    
    ORG	    0	

INICIO 
   ;BANKSEL OSCCON
 
    
   BSF	   STATUS,RP0 ;SELECCIONAR EL BANCO 1  
   
   movlw   0x71    ;Cargo valor a w 
   movwf   OSCCON  ;Oscilador interno 8MHz --> IRCF<2:0> = 1, CCS = 1

   
   
   CLRF	    TRISA
   BCF	   STATUS,RP0
PRINCIPAL	
			BSF		PORTA,4		;HIGH  a RB4
			CALL	RETARDO		;llama a retardo
			BCF		PORTA,4		;LOW a RB4
			CALL	RETARDO		;Llama a retardo
			GOTO	PRINCIPAL	;Retorna a la etiqueta PRINCIPAL
;retardos
RETARDO		MOVLW	b'01111111'		;carga el registro W con 255
		MOVWF	REG3	
BUCLE3		MOVWF	REG2		;mover el valor de W a REG2
BUCLE2		MOVWF	REG1		;mover el valor de W a REG1
BUCLE1		DECFSZ	REG1,F		;Decrementa REG1, salta una linea si es 0
			GOTO	BUCLE1		;ir a la etiqueta bucle1
			DECFSZ	REG2,F		;Decrementa REG2, salta una linea si es 0
			GOTO	BUCLE2		;ir a al etiqueta bucle2
			DECFSZ	REG3,F
			GOTO	BUCLE3
			RETURN				;retornar al lugar de donde se lo llamo
			END					;fin de programa