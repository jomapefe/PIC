;configuracion del compilador
list p=16f84a
include <p16f84a.inc>
;__CONFIG	_CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
 __CONFIG _FOSC_EXTRC & _WDTE_OFF & _PWRTE_ON & _CP_OFF
; declaracion de variables
REG1		EQU 	0X0c		;asigna nombre a los registros
REG2		EQU 	0X0d		
			ORG 	0			;directiva de origen de programa

;configuracion de puertos 		
INICIO		BSF		STATUS,5	;ir al banco (1)
			CLRF	TRISB		;todo el puerto B es salida
			BCF		STATUS,5	;ir al banco (0)

;inicio de secuencia
PRINCIPAL	BSF		PORTB,2		;HIGH  a RB4
			CALL	RETARDO		;llama a retardo
			BCF		PORTB,2		;LOW a RB4
			CALL	RETARDO		;Llama a retardo
			GOTO	PRINCIPAL	;Retorna a la etiqueta PRINCIPAL
;retardos
RETARDO		MOVLW	D'120'		;carga el registro W con 255
			MOVWF	REG2		;mover el valor de W a REG2
BUCLE2		MOVWF	REG1		;mover el valor de W a REG1
BUCLE1		DECFSZ	REG1,F		;Decrementa REG1, salta una linea si es 0
			GOTO	BUCLE1		;ir a la etiqueta bucle1
			DECFSZ	REG2,F		;Decrementa REG2, salta una linea si es 0
			GOTO	BUCLE2		;ir a al etiqueta bucle2
			RETURN				;retornar al lugar de donde se lo llamo
			END					;fin de programa
