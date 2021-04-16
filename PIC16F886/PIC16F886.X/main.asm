

; PIC16F886 Configuration Bit Settings

; Assembly source line config statements

#include "p16f886.inc"

; CONFIG1
; __config 0xFFFD
 __CONFIG _CONFIG1, _FOSC_INTRC_CLKOUT & _WDTE_ON & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_ON
; CONFIG2
; __config 0xFFFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF


 ; declaracion de variables
REG1		EQU 	0X0c		;asigna nombre a los registros
REG2		EQU 	0X0d		

		
    ORG 0; Direccion 0 del Programa
INICIO
    
				
    
		BCF	   STATUS,RP1	;SELECCIONAR EL BANCO 1
		BSF	   STATUS,RP0	;SELECCIONAR EL BANCO 1
		BCF	   OSCCON,SCS	; ESTABLECEMOS UN OSCILADOR EXTERNO
		
		
		MOVLW	B'11101111'	;configuracion para TMR0
		MOVWF	OPTION_REG	;cargo e registro OPTION_REG
		MOVLW  B'0000001000'
		MOVWF	TRISC	;T0CKI 
		
		MOVLW  B'0000010000'	; 8BITS -> W
		MOVWF   TRISA		; PORTA COMO SALIDA, TOCKI como entrada

		BCF	   STATUS,RP1; SELECCIONAMOS EL BANCO 0
		BCF	   STATUS,RP0; SELECCIONAMOS EL BANCO 0
   
    
     ;inicio de secuencia
PRINCIPAL	BSF PORTA,RB0		;HIGH  a RB4
		CALL	RETARDO		;llama a retardo
		BCF PORTA,RB0		;LOW a RB4ON   
		CALL	RETARDO		;Llama a retardo
		
		MOVF	TMR0,0
		MOVWF	PORTC
		
		
		GOTO	PRINCIPAL	;Retorna a la etiqueta PRINCIPAL
;retardos
RETARDO		MOVLW	D'011'		;carga el registro W con 255
			MOVWF	REG2		;mover el valor de W a REG2
BUCLE2		MOVWF	REG1		;mover el valor de W a REG1
BUCLE1		DECFSZ	REG1,F		;Decrementa REG1, salta una linea si es 0
			GOTO	BUCLE1		;ir a la etiqueta bucle1
			DECFSZ	REG2,F		;Decrementa REG2, salta una linea si es 0
			GOTO	BUCLE2		;ir a al etiqueta bucle2
			RETURN				;retornar al lugar de donde se lo llamo

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 END

