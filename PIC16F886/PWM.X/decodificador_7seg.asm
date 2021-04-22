   list p=16f886		;Identifica el PIC a usar
   #include <P16F886.INC>	;Cabecera que define los registros del MCU

;   Bits de configuración del MCU
; CONFIG1
    __CONFIG _CONFIG1, _FOSC_INTRC_NOCLKOUT & _WDTE_OFF & _PWRTE_ON & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_OFF
; CONFIG2
    __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF


ContadorA   EQU     0x20    ; Seleccionamos posicion de la RAM y guardamos
ContadorB   EQU     0x21    ; Guardamos ContadorB usado para el retardo
ContadorC   EQU     0x22    ; Guardamos ContadorC usado para el retardo
CONTADOR    EQU	    0X23
DIG1	    EQU	    0X24
DIG2	    EQU	    0X25
DIG3	    EQU	    0X26
    ORG     0x00
 
INICIO
    BSF	    STATUS,RP1	;Banco 3
    BSF	    STATUS,RP0	;Banco 3
    CLRF    ANSELH
    
    BcF	    STATUS,RP1	;Banco 1
    MOVLW   0X71
    MOVWF   OSCCON  ;Oscilador interno 8MHz --> IRCF<2:0> = 1, CCS = 1
    CLRF    TRISB
    CLRF    TRISC
    BCF	    STATUS,RP0	;Banco 0
    MOVLW   B'11111111'
    MOVWF   PORTB
    CLRF	    PORTC
    
    MOVLW   D'1'
    CALL    DECO
    MOVWF   DIG1
    MOVLW   D'2'
    CALL    DECO
    MOVWF   DIG2
    MOVLW   D'3'
    CALL    DECO
    MOVWF   DIG3

PRINCIPAL
    BSF	    PORTC,RC5	;d1
    BCF	    PORTC,RC6
    BCF	    PORTC,RC7
    
    MOVF    DIG1,0
    MOVWF   PORTB
    CALL    RETARDO
    MOVLW   B'11111111'
    MOVWF   PORTB  
    
    BCF	    PORTC,RC5
    BSF	    PORTC,RC6	;D2
    BCF     PORTC,RC7
    
    MOVF    DIG2,0
    MOVWF   PORTB
    CALL    RETARDO
    MOVLW   B'11111111'
    MOVWF   PORTB
  
    BCF	    PORTC,RC5
    BCF	    PORTC,RC6
    BSF	    PORTC,RC7	;D3
    
    MOVF    DIG3,0
    MOVWF   PORTB
    CALL    RETARDO
    MOVLW   B'11111111'
    MOVWF   PORTB
    
    GOTO PRINCIPAL
DECO
    ADDWF PCL,1
    RETLW B'11000000'	;0
    RETLW B'11111001'	;1
    RETLW B'10100100'	;2
    RETLW B'10110000'	;3
    RETLW B'10011001'	;4
    RETLW B'10010010'	;5
    RETLW B'10000010'	;6
    RETLW B'11011000'	;7
    RETLW B'10000000'	;8
    RETLW B'10010000'	;9

RETARDO
    MOVLW   B'100'
    MOVWF   CONTADOR
BUCLE
    DECFSZ  CONTADOR,1
    GOTO    BUCLE
    RETURN
    
    ;********** C O D I G O * R E T A R D O S **************************************
; Considerando Fosc=8MHz, ciclo maquina (cm) = 0.5uS
; Time = 2 + 1 + 1 + N + N + MN + MN + KMN + (K-1)MN + 2MN + 2(K-1)MN + (M-1)N
;        + 2N + (M-1)2N + (N-1) + 2 + 2(N-1) + 2
; Time = (5 + 4N + 4MN + 4KM) ciclos máquina. Para K=249, M=100 y N=10
; Time = 5 + 40 + 4000 + 996000 ciclos maquina
; Time = 1000045 * 0.5uS = 0.5 segundos
Retardo_500ms				; 2 ciclo máquina
	movlw	d'10'                   ; 1 ciclo máquina. Este es el valor de "N"
	movwf	ContadorC               ; 1 ciclo máquina.
Retardo_BucleExterno2
	movlw	d'100'                  ; Nx1 ciclos máquina. Este es el valor de "M".
	movwf	ContadorB               ; Nx1 ciclos máquina.
Retardo_BucleExterno
	movlw	d'249'                  ; MxNx1 ciclos máquina. Este es el valor de "K".
	movwf	ContadorA               ; MxNx1 ciclos máquina.
Retardo_BucleInterno
	nop                             ; KxMxNx1 ciclos máquina.
	decfsz	ContadorA,F             ; (K-1)xMxNx1 cm (si no salta) + MxNx2 cm (al saltar).
	goto	Retardo_BucleInterno    ; (K-1)xMxNx2 ciclos máquina.
	decfsz	ContadorB,F             ; (M-1)xNx1 cm (si no salta) + Nx2 cm (al saltar).
	goto	Retardo_BucleExterno	; (M-1)xNx2 ciclos máquina.
	decfsz	ContadorC,F             ; (N-1)x1 cm (si no salta) + 2 cm (al saltar).
	goto	Retardo_BucleExterno2	; (N-1)x2 ciclos máquina.
	return                          ; 2 ciclos máquina.

    END
    
    