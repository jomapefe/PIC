
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
 
    ORG 0; Direccion 0 del Programa
INICIO
    
   
    BCF	   STATUS,RP1 ;SELECCIONAR EL BANCO 1
    BSF	   STATUS,RP0 ;SELECCIONAR EL BANCO 1
    BCF	   OSCCON,SCS; ESTABLECEMOS UN OSCILADOR EXTERNO
     
    MOVLW  B'0000000000'; 8BITS -> W
     MOVWF   TRISA; PORTA COMO SALIDA
    
    BCF	   STATUS,RP1; SELECCIONAMOS EL BANCO 0
    BCF	   STATUS,RP0; SELECCIONAMOS EL BANCO 0
   
    
     
    
    

START
    MOVLW  B'11111111'; 8BITS -> W
    MOVWF  PORTA; W -> PORTA. RB0 - RB7
    GOTO   START
    END




