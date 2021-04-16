; PIC16F886 Configuration Bit Settings

; Assembly source line config statements

#include "p16f886.inc"

; CONFIG1
; __config 0xFFFF
 __CONFIG _CONFIG1, _FOSC_EXTRC_CLKOUT & _WDTE_ON & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_ON
; CONFIG2
; __config 0xFFFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

 
M	EQU 0X20
N	EQU 0X21
O	EQU 0X22

    ORG 0
INICIO:
    BSF	STATUS,5		;Banco 1
    BSF	TRISA,0		;PORTA0 Entrada	
    CLRF    TRISC		;PORTC Salida
    
    BCF	    STATUS,5	;Banco 0
 
    MOVLW   B'10000001'
    MOVWF   ADCON0		;10=Fosc/32
				;0000=AN0
				;0=A/D conversion completed/not in progress
				;1 =1 = ADC is enabled

    BSF	STATUS,RP0		;Banco 1
PRINCIPAL:
    MOVF    ADRESH,0
    MOVWF   PORTC
    CALL    DELAY
    BSF	    ADCON0,GO_DONE
    GOTO    PRINCIPAL
    
DELAY
    MOVLW   D'5'
    MOVWF   O
TRES
	MOVLW	D'80'
	MOVWF	M
DOS
	MOVLW	D'250'
	MOVWF	N
UNO
	NOP
	NOP
	DECFSZ	N,1
	GOTO	UNO
	DECFSZ	M,1
	GOTO	DOS
	DECFSZ	O,1
	GOTO	TRES
	RETURN
    END