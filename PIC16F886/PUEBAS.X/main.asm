
; PIC16F886 Configuration Bit Settings

; Assembly source line config statements

#include "p16f886.inc"

; CONFIG1
; __config 0xFFFF
 __CONFIG _CONFIG1, _FOSC_EXTRC_CLKOUT & _WDTE_ON & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_ON
; CONFIG2
; __config 0xFFFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

 
 
 ORG	    0

    BCF STATUS,RP1	;Banco 1

    CLRF    TRISA
    CLRF    TRISB
    CLRF    TRISC
    BCF	    STATUS,RP0	;Banco 0

    MOVLW   B'00000000'
    MOVWF   PORTA
    MOVWF   PORTB
    MOVWF   PORTC

    MOVLW   B'11111111'
    MOVWF   PORTA
    MOVWF   PORTB
    MOVWF   PORTC
    
INICIO      
      GOTO  INICIO
      END