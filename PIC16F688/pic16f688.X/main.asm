
; PIC16F84A Configuration Bit Settings

;**************** THE WELS THEORY ******************
;Descripción: Encendido de LEDS del puerto RB3 y RB4
;Para más información visita: www.thewelstheory.com
;Y sigueme en www.facebook.com/WelsTheory
    
;List P=16F688 
#include "p16f688.inc" ;Incluye las librerias 
    
; CONFIGURACION DEL PIC16F84A
 __CONFIG _FOSC_EXTRCCLK  & _WDTE_OFF & _PWRTE_ON & _CP_OFF
 
;CODIGO
 ; declaracion de variables
REG1		EQU 	0X0c		;asigna nombre a los registros
REG2		EQU 	0X0d		

    ORG 0; Direccion 0 del Programa
INICIO
    
   
    BCF	   STATUS,RP1 ;SELECCIONAR EL BANCO 1
    BSF	   STATUS,RP0 ;SELECCIONAR EL BANCO 1
    BCF	   OSCCON,SCS; ESTABLECEMOS UN OSCILADOR EXTERNO
     
    MOVLW  B'0000000000'; 8BITS -> W
     MOVWF   TRISA; PORTA COMO SALIDA
    
    BCF	   STATUS,RP1; SELECCIONAMOS EL BANCO 0
    BCF	   STATUS,RP0; SELECCIONAMOS EL BANCO 0
   
    
     ;inicio de secuencia
PRINCIPAL	BSF		PORTA		;HIGH  a RB4
			CALL	RETARDO		;llama a retardo
			BCF		PORTA		;LOW a RB4
			CALL	RETARDO		;Llama a retardo
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
			END					;fin de programa

    
    

START
    MOVLW  B'11111111'; 8BITS -> W
    MOVWF  PORTA; W -> PORTA. RB0 - RB7
    GOTO   START

    
    retardos
RETARDO		MOVLW	D'011'		;carga el registro W con 255
			MOVWF	REG2		;mover el valor de W a REG2
BUCLE2		MOVWF	REG1		;mover el valor de W a REG1
BUCLE1		DECFSZ	REG1,F		;Decrementa REG1, salta una linea si es 0
			GOTO	BUCLE1		;ir a la etiqueta bucle1
			DECFSZ	REG2,F		;Decrementa REG2, salta una linea si es 0
			GOTO	BUCLE2		;ir a al etiqueta bucle2
			RETURN				;retornar al lugar de donde se lo llamo
			END					;fin de programa





