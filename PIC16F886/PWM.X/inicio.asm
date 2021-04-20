
; PIC16F886 Configuration Bit Settings

; Assembly source line config statements

#include "p16f886.inc"

; CONFIG1
; __config 0xFFFF
 __CONFIG _CONFIG1, _FOSC_EXTRC_CLKOUT & _WDTE_ON & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_ON
; CONFIG2
; __config 0xFFFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF


;Variables
Periodo	    equ	    .100 
;Periodo = (PR2+1)*Prescaler*4*Tosc
	    
Duty_On	    equ	    0x20	;Vairalbes de ancho de pulso
Duty_Off    equ	    0x21
	    
    
;CODIGO    
    ORG	    0
    GOTO    INICIO
    
    
INICIO
    BSF	    STATUS,RP0
    BSF	    STATUS,RP1	;Banco 3
    ;MOVLW   B'00000001'	
    CLRF    ANSEL	;RA0 -> Entrada anal�gica
    BSF	ANSEL,0
    CLRF    ANSELH	;PORTB -> como digital 
    
    BCF	    STATUS,RP1	;Banco 1
;    MOVLW   B'11111011'
    CLRF    TRISC	;CCP1 salida
    CLRF    ADCON1	;ADC -> Alineaci�n izquierda, Vref = VDD
    BCF	    STATUS,RP0	;Banco 0
START
    MOVLW   B'10000001'
    MOVWF   ADCON0	;Activamos ADC, Selecciona canal AN0
    BCF	    PIR1,ADIF	;Restauramos el flags del ADC
    BSF	    ADCON0,GO	;Inicia la conversi�n
ADC_start		;Inicia el ADC y se lee los resultados
    BTFSS   PIR1,ADIF	;Pregunta si se acab� con la conversi�n
    GOTO    ADC_start	;Si a�n no se acab� regresa a ADC_start
    MOVF    ADRESH,W
    MOVWF   Duty_On	;Registra el valor para el periodo
    BSF	    STATUS,RP0	;Selecciona pagina 1
    RRF	    ADRESL,F	;Hace un corrimiento a la derecha aumentando 1
    RRF	    ADRESL,W
    BCF	    STATUS,RP0	;Selecciona pagina 0
    ANDLW   B'00110000'
    MOVWF   Duty_Off	;Se guarda la conversi�n m�s baja en Duty_Off
;Configuraci�n PWM
    MOVLW   B'00001100'
    IORWF   Duty_Off,F	;Se obtienen los valores del Duty_Off
    MOVWF   CCP1CON	;Modo PWM para el CCP1
;Registro PR2
    MOVLW   Periodo-1
    BSF	    STATUS,RP0
    MOVWF   PR2		;Periodo se guarda en el PR2
    BCF	    STATUS,RP0
;Anchura del pulso
    MOVF    Duty_On,W	;Guardamos Duty_On -> W
    MOVWF   CCPR1L	;Y se determina concatenando en el registro CCPR1L
;Prescaler
    MOVLW   B'00000111'	;Prescaler 1:16 y frecuencia de 20MHz 
    MOVWF   T2CON
    GOTO    START	;    
    END