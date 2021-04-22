
 list p=16f886		;Identifica el PIC a usar
   #include <P16F886.INC>	;Cabecera que define los registros del MCU

;   Bits de configuración del MCU
; CONFIG1
    __CONFIG _CONFIG1, _FOSC_INTRC_NOCLKOUT & _WDTE_OFF & _PWRTE_ON & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_OFF
; CONFIG2
    __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

    ORG     0x00
     
    BSF	    STATUS,RP1	;Banco 1
    BSF	    STATUS,RP0	;Banco 1
    CLRF    ANSELH
    
    BCF	    STATUS,RP1	;Banco 1
     MOVLW   0X71
     MOVWF   OSCCON  ;Oscilador interno 8MHz --> IRCF<2:0> = 1, CCS = 1
     CLRF    TRISB
     CLRF    TRISC
       BCF	    STATUS,RP0	;Banco 0
      MOVLW   B'11111111'
    MOVWF   PORTB
      CLRF   PORTC
     
    BCF	PORTB,0
     
;     CLRF   PORTB
     
     
     
     
     END
