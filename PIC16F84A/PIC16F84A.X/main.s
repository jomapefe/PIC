;PROCESSOR 16F688
PROCESSOR 16F84A
 #include <xc.inc>

; CONFIG
  CONFIG  FOSC = EXTRC          ; Oscillator Selection bits (RC oscillator)
  CONFIG  WDTE = ON             ; Watchdog Timer (WDT enabled)
  CONFIG  PWRTE = OFF           ; Power-up Timer Enable bit (Power-up Timer is disabled)
  CONFIG  CP = OFF              ; Code Protection bit (Code protection disabled)
 
;CODIGO
 
    ORG 0; Direccion 0 del Programa
INICIO:
    BSF	   STATUS,5 ;SELECCIONAR EL BANCO 1
    CLRF   TRISB; PORTB COMO SALIDA
    BCF	   STATUS,5; SELECCIONAMOS EL BANCO 0
    
START:
    MOVLW  B'00011000'; 8BITS -> W
    MOVWF  PORTB; W -> PORTB. RB0 - RB7
    GOTO   START
    END




