
PROCESSOR 16F688
#include <xc.inc>
    

 bcf STATUS,STATUS_RP0_POSITION 
    
bcf STATUS,5
bcf STATUS,6	;RP1->0 STATUS->(x10xxxxx)
;BANKSEL PORTA 
    
clrf PORTA ;Init PORTA
movlw 07h ;Cargamos W con (00000110)
    movwf   ADCON0;Cargamos el registro ADCON1 con el valor de W(00000110)
MOVWF CMCON0  
    
    
    end