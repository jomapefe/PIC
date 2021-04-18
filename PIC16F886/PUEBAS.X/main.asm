;PROCESSOR 16F877A
#INCLUDE <P16F877A.INC>			;LIBRERIA PIC16F877A

;CONFIGURACION DE BITS
    __CONFIG  _PWRTE_ON & _WDT_OFF & _FOSC_HS

;Variables
    Periodo	    equ	    .100 //.300	
;Periodo = (PR2+1)*Prescaler*4*Tosc
	    
    Duty_On	    equ	    0x20	;Vairalbes de ancho de pulso
    Duty_Off    equ	    0x21
	    
    
;CODIGO    
    ORG	    0
    GOTO    INICIO
    ORG	    5

INICIO
    BSF	    STATUS,RP0
    BSF	    STATUS,RP1	;Banco 3
    MOVLW   B'00000001'	
    MOVLW   ANSEL	;RA0 -> Entrada analógica
    CLRF    ANSELH	;PORTB -> como digital 
    BSF	    STATUS,RP1
    MOVLW   B'11111011'
    MOVWF   TRISC	;CCP1 salida
    BCF	    STATUS,RP0	;Banco 0
    BSF	    STATUS,RP0	;Pagina 1
    CLRF    ADCON1	;ADC -> Alineación izquierda, Vref = VDD
    BCF	    STATUS,RP0	;Pagina 0
START
    MOVLW   B'10000001'
    MOVWF   ADCON0	;Activamos ADC, Selecciona canal AN0
    BCF	    PIR1,ADIF	;Restauramos el flags del ADC
    BSF	    ADCON0,GO	;Inicia la conversión
ADC_start		;Inicia el ADC y se lee los resultados
    BTFSS   PIR1,ADIF	;Pregunta si se acabó con la conversión
    GOTO    ADC_start	;Si aún no se acabó regresa a ADC_start
    MOVF    ADRESH,W
    MOVWF   Duty_On	;Registra el valor para el periodo
    BSF	    STATUS,RP0	;Selecciona pagina 1
    RRF	    ADRESL,F	;Hace un corrimiento a la derecha aumentando 1
    RRF	    ADRESL,W
    BCF	    STATUS,RP0	;Selecciona pagina 0
    ANDLW   B'00110000'
    MOVWF   Duty_Off	;Se guarda la conversión más baja en Duty_Off
;Configuración PWM
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