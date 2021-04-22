  list p=16f886		;Identifica el PIC a usar
   #include <P16F886.INC>	;Cabecera que define los registros del MCU

;   Bits de configuración del MCU
; CONFIG1
    __CONFIG _CONFIG1, _FOSC_INTRC_NOCLKOUT & _WDTE_OFF & _PWRTE_ON & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_OFF
; CONFIG2
    __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

Contador     equ    0x22	    

    	ORG	0
	GOTO	INICIO
	
INICIO
   BSF	    STATUS,RP0
    BSF	    STATUS,RP1	    ;Banco 3
    ANDLW   B'00000001'	    ;RA0 -> Entrada analógica
    MOVWF  ANSEL
    ;CLRF    ANSEL	    ;RA0 -> Entrada analógica
    ;BSF	    ANSEL,0
    CLRF    ANSELH	    ;PORTB -> como digital 
    BCF	    STATUS,RP1	;Banco 1
    ;############### Fracuencia del MCU ##########################################
    movlw   0x71    ;Cargo valor a w 
    movwf   OSCCON  ;Oscilador interno 8MHz --> IRCF<2:0> = 1, CCS = 1
    ;############################################################################
    CLRF    TRISC	;CCP1 salida
    CLRF    ADCON1	;ADC -> Alineación izquierda, Vref = VDD
    
    CLRF    TRISB
    BCF	    TRISA,RA4
    BCF	    STATUS,RP0	;Banco 0
    BSF	    PORTA,RA4
START
    MOVLW   B'10000001'
    MOVWF   ADCON0	;Activamos ADC, Selecciona canal AN0
    BCF	    PIR1,ADIF	;Restauramos el flags del ADC
    CALL    Retardo_20us
    BSF	    ADCON0,GO	;Inicia la conversión	
ADC_start		;Inicia el ADC y se lee los resultados
    BTFSS   PIR1,ADIF	;Pregunta si se acabó con la conversión
    GOTO    ADC_start	
	
    MOVF    ADRESH,W   
    MOVWF   PORTB
	BSF	    STATUS,RP0	;Banco 1
	MOVF    ADRESL,W 
	BCF	    STATUS,RP0	;Banco 1
	MOVWF   PORTC
	
    GOTO    START
    
Retardo_20us
        movlw   0x20 ;
        movwf   Contador ; Iniciamos contador1.-
Repeticion
        decfsz  Contador,1 ; Decrementa Contador1.-
        goto    Repeticion ; Si no es cero repetimos ciclo.-
        return                          ; Regresa de la subrutina.-

    END


