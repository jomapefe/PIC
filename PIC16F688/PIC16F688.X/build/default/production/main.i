# 1 "main.s"
# 1 "<built-in>" 1
# 1 "main.s" 2

PROCESSOR 16F688

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\xc.inc" 1 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\pic.inc" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\pic_as_chip_select.inc" 1 3
# 2294 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\pic_as_chip_select.inc" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\proc\\pic16f688.inc" 1 3
# 48 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\proc\\pic16f688.inc" 3
INDF equ 0000h



TMR0 equ 0001h



PCL equ 0002h



STATUS equ 0003h

STATUS_C_POSN equ 0000h
STATUS_C_POSITION equ 0000h
STATUS_C_SIZE equ 0001h
STATUS_C_LENGTH equ 0001h
STATUS_C_MASK equ 0001h
STATUS_DC_POSN equ 0001h
STATUS_DC_POSITION equ 0001h
STATUS_DC_SIZE equ 0001h
STATUS_DC_LENGTH equ 0001h
STATUS_DC_MASK equ 0002h
STATUS_Z_POSN equ 0002h
STATUS_Z_POSITION equ 0002h
STATUS_Z_SIZE equ 0001h
STATUS_Z_LENGTH equ 0001h
STATUS_Z_MASK equ 0004h
STATUS_nPD_POSN equ 0003h
STATUS_nPD_POSITION equ 0003h
STATUS_nPD_SIZE equ 0001h
STATUS_nPD_LENGTH equ 0001h
STATUS_nPD_MASK equ 0008h
STATUS_nTO_POSN equ 0004h
STATUS_nTO_POSITION equ 0004h
STATUS_nTO_SIZE equ 0001h
STATUS_nTO_LENGTH equ 0001h
STATUS_nTO_MASK equ 0010h
STATUS_RP_POSN equ 0005h
STATUS_RP_POSITION equ 0005h
STATUS_RP_SIZE equ 0002h
STATUS_RP_LENGTH equ 0002h
STATUS_RP_MASK equ 0060h
STATUS_IRP_POSN equ 0007h
STATUS_IRP_POSITION equ 0007h
STATUS_IRP_SIZE equ 0001h
STATUS_IRP_LENGTH equ 0001h
STATUS_IRP_MASK equ 0080h
STATUS_RP0_POSN equ 0005h
STATUS_RP0_POSITION equ 0005h
STATUS_RP0_SIZE equ 0001h
STATUS_RP0_LENGTH equ 0001h
STATUS_RP0_MASK equ 0020h
STATUS_RP1_POSN equ 0006h
STATUS_RP1_POSITION equ 0006h
STATUS_RP1_SIZE equ 0001h
STATUS_RP1_LENGTH equ 0001h
STATUS_RP1_MASK equ 0040h
STATUS_CARRY_POSN equ 0000h
STATUS_CARRY_POSITION equ 0000h
STATUS_CARRY_SIZE equ 0001h
STATUS_CARRY_LENGTH equ 0001h
STATUS_CARRY_MASK equ 0001h
STATUS_ZERO_POSN equ 0002h
STATUS_ZERO_POSITION equ 0002h
STATUS_ZERO_SIZE equ 0001h
STATUS_ZERO_LENGTH equ 0001h
STATUS_ZERO_MASK equ 0004h



FSR equ 0004h



PORTA equ 0005h

PORTA_RA0_POSN equ 0000h
PORTA_RA0_POSITION equ 0000h
PORTA_RA0_SIZE equ 0001h
PORTA_RA0_LENGTH equ 0001h
PORTA_RA0_MASK equ 0001h
PORTA_RA1_POSN equ 0001h
PORTA_RA1_POSITION equ 0001h
PORTA_RA1_SIZE equ 0001h
PORTA_RA1_LENGTH equ 0001h
PORTA_RA1_MASK equ 0002h
PORTA_RA2_POSN equ 0002h
PORTA_RA2_POSITION equ 0002h
PORTA_RA2_SIZE equ 0001h
PORTA_RA2_LENGTH equ 0001h
PORTA_RA2_MASK equ 0004h
PORTA_RA3_POSN equ 0003h
PORTA_RA3_POSITION equ 0003h
PORTA_RA3_SIZE equ 0001h
PORTA_RA3_LENGTH equ 0001h
PORTA_RA3_MASK equ 0008h
PORTA_RA4_POSN equ 0004h
PORTA_RA4_POSITION equ 0004h
PORTA_RA4_SIZE equ 0001h
PORTA_RA4_LENGTH equ 0001h
PORTA_RA4_MASK equ 0010h
PORTA_RA5_POSN equ 0005h
PORTA_RA5_POSITION equ 0005h
PORTA_RA5_SIZE equ 0001h
PORTA_RA5_LENGTH equ 0001h
PORTA_RA5_MASK equ 0020h



PORTC equ 0007h

PORTC_RC0_POSN equ 0000h
PORTC_RC0_POSITION equ 0000h
PORTC_RC0_SIZE equ 0001h
PORTC_RC0_LENGTH equ 0001h
PORTC_RC0_MASK equ 0001h
PORTC_RC1_POSN equ 0001h
PORTC_RC1_POSITION equ 0001h
PORTC_RC1_SIZE equ 0001h
PORTC_RC1_LENGTH equ 0001h
PORTC_RC1_MASK equ 0002h
PORTC_RC2_POSN equ 0002h
PORTC_RC2_POSITION equ 0002h
PORTC_RC2_SIZE equ 0001h
PORTC_RC2_LENGTH equ 0001h
PORTC_RC2_MASK equ 0004h
PORTC_RC3_POSN equ 0003h
PORTC_RC3_POSITION equ 0003h
PORTC_RC3_SIZE equ 0001h
PORTC_RC3_LENGTH equ 0001h
PORTC_RC3_MASK equ 0008h
PORTC_RC4_POSN equ 0004h
PORTC_RC4_POSITION equ 0004h
PORTC_RC4_SIZE equ 0001h
PORTC_RC4_LENGTH equ 0001h
PORTC_RC4_MASK equ 0010h
PORTC_RC5_POSN equ 0005h
PORTC_RC5_POSITION equ 0005h
PORTC_RC5_SIZE equ 0001h
PORTC_RC5_LENGTH equ 0001h
PORTC_RC5_MASK equ 0020h



PCLATH equ 000Ah

PCLATH_PCLATH_POSN equ 0000h
PCLATH_PCLATH_POSITION equ 0000h
PCLATH_PCLATH_SIZE equ 0005h
PCLATH_PCLATH_LENGTH equ 0005h
PCLATH_PCLATH_MASK equ 001Fh



INTCON equ 000Bh

INTCON_RAIF_POSN equ 0000h
INTCON_RAIF_POSITION equ 0000h
INTCON_RAIF_SIZE equ 0001h
INTCON_RAIF_LENGTH equ 0001h
INTCON_RAIF_MASK equ 0001h
INTCON_INTF_POSN equ 0001h
INTCON_INTF_POSITION equ 0001h
INTCON_INTF_SIZE equ 0001h
INTCON_INTF_LENGTH equ 0001h
INTCON_INTF_MASK equ 0002h
INTCON_T0IF_POSN equ 0002h
INTCON_T0IF_POSITION equ 0002h
INTCON_T0IF_SIZE equ 0001h
INTCON_T0IF_LENGTH equ 0001h
INTCON_T0IF_MASK equ 0004h
INTCON_RAIE_POSN equ 0003h
INTCON_RAIE_POSITION equ 0003h
INTCON_RAIE_SIZE equ 0001h
INTCON_RAIE_LENGTH equ 0001h
INTCON_RAIE_MASK equ 0008h
INTCON_INTE_POSN equ 0004h
INTCON_INTE_POSITION equ 0004h
INTCON_INTE_SIZE equ 0001h
INTCON_INTE_LENGTH equ 0001h
INTCON_INTE_MASK equ 0010h
INTCON_T0IE_POSN equ 0005h
INTCON_T0IE_POSITION equ 0005h
INTCON_T0IE_SIZE equ 0001h
INTCON_T0IE_LENGTH equ 0001h
INTCON_T0IE_MASK equ 0020h
INTCON_PEIE_POSN equ 0006h
INTCON_PEIE_POSITION equ 0006h
INTCON_PEIE_SIZE equ 0001h
INTCON_PEIE_LENGTH equ 0001h
INTCON_PEIE_MASK equ 0040h
INTCON_GIE_POSN equ 0007h
INTCON_GIE_POSITION equ 0007h
INTCON_GIE_SIZE equ 0001h
INTCON_GIE_LENGTH equ 0001h
INTCON_GIE_MASK equ 0080h
INTCON_TMR0IF_POSN equ 0002h
INTCON_TMR0IF_POSITION equ 0002h
INTCON_TMR0IF_SIZE equ 0001h
INTCON_TMR0IF_LENGTH equ 0001h
INTCON_TMR0IF_MASK equ 0004h
INTCON_TMR0IE_POSN equ 0005h
INTCON_TMR0IE_POSITION equ 0005h
INTCON_TMR0IE_SIZE equ 0001h
INTCON_TMR0IE_LENGTH equ 0001h
INTCON_TMR0IE_MASK equ 0020h



PIR1 equ 000Ch

PIR1_TMR1IF_POSN equ 0000h
PIR1_TMR1IF_POSITION equ 0000h
PIR1_TMR1IF_SIZE equ 0001h
PIR1_TMR1IF_LENGTH equ 0001h
PIR1_TMR1IF_MASK equ 0001h
PIR1_TXIF_POSN equ 0001h
PIR1_TXIF_POSITION equ 0001h
PIR1_TXIF_SIZE equ 0001h
PIR1_TXIF_LENGTH equ 0001h
PIR1_TXIF_MASK equ 0002h
PIR1_OSFIF_POSN equ 0002h
PIR1_OSFIF_POSITION equ 0002h
PIR1_OSFIF_SIZE equ 0001h
PIR1_OSFIF_LENGTH equ 0001h
PIR1_OSFIF_MASK equ 0004h
PIR1_C1IF_POSN equ 0003h
PIR1_C1IF_POSITION equ 0003h
PIR1_C1IF_SIZE equ 0001h
PIR1_C1IF_LENGTH equ 0001h
PIR1_C1IF_MASK equ 0008h
PIR1_C2IF_POSN equ 0004h
PIR1_C2IF_POSITION equ 0004h
PIR1_C2IF_SIZE equ 0001h
PIR1_C2IF_LENGTH equ 0001h
PIR1_C2IF_MASK equ 0010h
PIR1_RCIF_POSN equ 0005h
PIR1_RCIF_POSITION equ 0005h
PIR1_RCIF_SIZE equ 0001h
PIR1_RCIF_LENGTH equ 0001h
PIR1_RCIF_MASK equ 0020h
PIR1_ADIF_POSN equ 0006h
PIR1_ADIF_POSITION equ 0006h
PIR1_ADIF_SIZE equ 0001h
PIR1_ADIF_LENGTH equ 0001h
PIR1_ADIF_MASK equ 0040h
PIR1_EEIF_POSN equ 0007h
PIR1_EEIF_POSITION equ 0007h
PIR1_EEIF_SIZE equ 0001h
PIR1_EEIF_LENGTH equ 0001h
PIR1_EEIF_MASK equ 0080h
PIR1_T1IF_POSN equ 0000h
PIR1_T1IF_POSITION equ 0000h
PIR1_T1IF_SIZE equ 0001h
PIR1_T1IF_LENGTH equ 0001h
PIR1_T1IF_MASK equ 0001h



TMR1L equ 000Eh



TMR1H equ 000Fh



T1CON equ 0010h

T1CON_TMR1ON_POSN equ 0000h
T1CON_TMR1ON_POSITION equ 0000h
T1CON_TMR1ON_SIZE equ 0001h
T1CON_TMR1ON_LENGTH equ 0001h
T1CON_TMR1ON_MASK equ 0001h
T1CON_TMR1CS_POSN equ 0001h
T1CON_TMR1CS_POSITION equ 0001h
T1CON_TMR1CS_SIZE equ 0001h
T1CON_TMR1CS_LENGTH equ 0001h
T1CON_TMR1CS_MASK equ 0002h
T1CON_nT1SYNC_POSN equ 0002h
T1CON_nT1SYNC_POSITION equ 0002h
T1CON_nT1SYNC_SIZE equ 0001h
T1CON_nT1SYNC_LENGTH equ 0001h
T1CON_nT1SYNC_MASK equ 0004h
T1CON_T1OSCEN_POSN equ 0003h
T1CON_T1OSCEN_POSITION equ 0003h
T1CON_T1OSCEN_SIZE equ 0001h
T1CON_T1OSCEN_LENGTH equ 0001h
T1CON_T1OSCEN_MASK equ 0008h
T1CON_T1CKPS_POSN equ 0004h
T1CON_T1CKPS_POSITION equ 0004h
T1CON_T1CKPS_SIZE equ 0002h
T1CON_T1CKPS_LENGTH equ 0002h
T1CON_T1CKPS_MASK equ 0030h
T1CON_TMR1GE_POSN equ 0006h
T1CON_TMR1GE_POSITION equ 0006h
T1CON_TMR1GE_SIZE equ 0001h
T1CON_TMR1GE_LENGTH equ 0001h
T1CON_TMR1GE_MASK equ 0040h
T1CON_T1GINV_POSN equ 0007h
T1CON_T1GINV_POSITION equ 0007h
T1CON_T1GINV_SIZE equ 0001h
T1CON_T1GINV_LENGTH equ 0001h
T1CON_T1GINV_MASK equ 0080h
T1CON_T1CKPS0_POSN equ 0004h
T1CON_T1CKPS0_POSITION equ 0004h
T1CON_T1CKPS0_SIZE equ 0001h
T1CON_T1CKPS0_LENGTH equ 0001h
T1CON_T1CKPS0_MASK equ 0010h
T1CON_T1CKPS1_POSN equ 0005h
T1CON_T1CKPS1_POSITION equ 0005h
T1CON_T1CKPS1_SIZE equ 0001h
T1CON_T1CKPS1_LENGTH equ 0001h
T1CON_T1CKPS1_MASK equ 0020h



BAUDCTL equ 0011h

BAUDCTL_ABDEN_POSN equ 0000h
BAUDCTL_ABDEN_POSITION equ 0000h
BAUDCTL_ABDEN_SIZE equ 0001h
BAUDCTL_ABDEN_LENGTH equ 0001h
BAUDCTL_ABDEN_MASK equ 0001h
BAUDCTL_WUE_POSN equ 0001h
BAUDCTL_WUE_POSITION equ 0001h
BAUDCTL_WUE_SIZE equ 0001h
BAUDCTL_WUE_LENGTH equ 0001h
BAUDCTL_WUE_MASK equ 0002h
BAUDCTL_BRG16_POSN equ 0003h
BAUDCTL_BRG16_POSITION equ 0003h
BAUDCTL_BRG16_SIZE equ 0001h
BAUDCTL_BRG16_LENGTH equ 0001h
BAUDCTL_BRG16_MASK equ 0008h
BAUDCTL_SCKP_POSN equ 0004h
BAUDCTL_SCKP_POSITION equ 0004h
BAUDCTL_SCKP_SIZE equ 0001h
BAUDCTL_SCKP_LENGTH equ 0001h
BAUDCTL_SCKP_MASK equ 0010h
BAUDCTL_RCIDL_POSN equ 0006h
BAUDCTL_RCIDL_POSITION equ 0006h
BAUDCTL_RCIDL_SIZE equ 0001h
BAUDCTL_RCIDL_LENGTH equ 0001h
BAUDCTL_RCIDL_MASK equ 0040h
BAUDCTL_ABDOVF_POSN equ 0007h
BAUDCTL_ABDOVF_POSITION equ 0007h
BAUDCTL_ABDOVF_SIZE equ 0001h
BAUDCTL_ABDOVF_LENGTH equ 0001h
BAUDCTL_ABDOVF_MASK equ 0080h



SPBRGH equ 0012h

SPBRGH_SPBRGH_POSN equ 0000h
SPBRGH_SPBRGH_POSITION equ 0000h
SPBRGH_SPBRGH_SIZE equ 0008h
SPBRGH_SPBRGH_LENGTH equ 0008h
SPBRGH_SPBRGH_MASK equ 00FFh



SPBRG equ 0013h



RCREG equ 0014h



TXREG equ 0015h



TXSTA equ 0016h

TXSTA_TX9D_POSN equ 0000h
TXSTA_TX9D_POSITION equ 0000h
TXSTA_TX9D_SIZE equ 0001h
TXSTA_TX9D_LENGTH equ 0001h
TXSTA_TX9D_MASK equ 0001h
TXSTA_TRMT_POSN equ 0001h
TXSTA_TRMT_POSITION equ 0001h
TXSTA_TRMT_SIZE equ 0001h
TXSTA_TRMT_LENGTH equ 0001h
TXSTA_TRMT_MASK equ 0002h
TXSTA_BRGH_POSN equ 0002h
TXSTA_BRGH_POSITION equ 0002h
TXSTA_BRGH_SIZE equ 0001h
TXSTA_BRGH_LENGTH equ 0001h
TXSTA_BRGH_MASK equ 0004h
TXSTA_SENDB_POSN equ 0003h
TXSTA_SENDB_POSITION equ 0003h
TXSTA_SENDB_SIZE equ 0001h
TXSTA_SENDB_LENGTH equ 0001h
TXSTA_SENDB_MASK equ 0008h
TXSTA_SYNC_POSN equ 0004h
TXSTA_SYNC_POSITION equ 0004h
TXSTA_SYNC_SIZE equ 0001h
TXSTA_SYNC_LENGTH equ 0001h
TXSTA_SYNC_MASK equ 0010h
TXSTA_TXEN_POSN equ 0005h
TXSTA_TXEN_POSITION equ 0005h
TXSTA_TXEN_SIZE equ 0001h
TXSTA_TXEN_LENGTH equ 0001h
TXSTA_TXEN_MASK equ 0020h
TXSTA_TX9_POSN equ 0006h
TXSTA_TX9_POSITION equ 0006h
TXSTA_TX9_SIZE equ 0001h
TXSTA_TX9_LENGTH equ 0001h
TXSTA_TX9_MASK equ 0040h
TXSTA_CSRC_POSN equ 0007h
TXSTA_CSRC_POSITION equ 0007h
TXSTA_CSRC_SIZE equ 0001h
TXSTA_CSRC_LENGTH equ 0001h
TXSTA_CSRC_MASK equ 0080h



RCSTA equ 0017h

RCSTA_RX9D_POSN equ 0000h
RCSTA_RX9D_POSITION equ 0000h
RCSTA_RX9D_SIZE equ 0001h
RCSTA_RX9D_LENGTH equ 0001h
RCSTA_RX9D_MASK equ 0001h
RCSTA_OERR_POSN equ 0001h
RCSTA_OERR_POSITION equ 0001h
RCSTA_OERR_SIZE equ 0001h
RCSTA_OERR_LENGTH equ 0001h
RCSTA_OERR_MASK equ 0002h
RCSTA_FERR_POSN equ 0002h
RCSTA_FERR_POSITION equ 0002h
RCSTA_FERR_SIZE equ 0001h
RCSTA_FERR_LENGTH equ 0001h
RCSTA_FERR_MASK equ 0004h
RCSTA_ADDEN_POSN equ 0003h
RCSTA_ADDEN_POSITION equ 0003h
RCSTA_ADDEN_SIZE equ 0001h
RCSTA_ADDEN_LENGTH equ 0001h
RCSTA_ADDEN_MASK equ 0008h
RCSTA_CREN_POSN equ 0004h
RCSTA_CREN_POSITION equ 0004h
RCSTA_CREN_SIZE equ 0001h
RCSTA_CREN_LENGTH equ 0001h
RCSTA_CREN_MASK equ 0010h
RCSTA_SREN_POSN equ 0005h
RCSTA_SREN_POSITION equ 0005h
RCSTA_SREN_SIZE equ 0001h
RCSTA_SREN_LENGTH equ 0001h
RCSTA_SREN_MASK equ 0020h
RCSTA_RX9_POSN equ 0006h
RCSTA_RX9_POSITION equ 0006h
RCSTA_RX9_SIZE equ 0001h
RCSTA_RX9_LENGTH equ 0001h
RCSTA_RX9_MASK equ 0040h
RCSTA_SPEN_POSN equ 0007h
RCSTA_SPEN_POSITION equ 0007h
RCSTA_SPEN_SIZE equ 0001h
RCSTA_SPEN_LENGTH equ 0001h
RCSTA_SPEN_MASK equ 0080h



WDTCON equ 0018h

WDTCON_SWDTEN_POSN equ 0000h
WDTCON_SWDTEN_POSITION equ 0000h
WDTCON_SWDTEN_SIZE equ 0001h
WDTCON_SWDTEN_LENGTH equ 0001h
WDTCON_SWDTEN_MASK equ 0001h
WDTCON_WDTPS_POSN equ 0001h
WDTCON_WDTPS_POSITION equ 0001h
WDTCON_WDTPS_SIZE equ 0004h
WDTCON_WDTPS_LENGTH equ 0004h
WDTCON_WDTPS_MASK equ 001Eh
WDTCON_WDTPS0_POSN equ 0001h
WDTCON_WDTPS0_POSITION equ 0001h
WDTCON_WDTPS0_SIZE equ 0001h
WDTCON_WDTPS0_LENGTH equ 0001h
WDTCON_WDTPS0_MASK equ 0002h
WDTCON_WDTPS1_POSN equ 0002h
WDTCON_WDTPS1_POSITION equ 0002h
WDTCON_WDTPS1_SIZE equ 0001h
WDTCON_WDTPS1_LENGTH equ 0001h
WDTCON_WDTPS1_MASK equ 0004h
WDTCON_WDTPS2_POSN equ 0003h
WDTCON_WDTPS2_POSITION equ 0003h
WDTCON_WDTPS2_SIZE equ 0001h
WDTCON_WDTPS2_LENGTH equ 0001h
WDTCON_WDTPS2_MASK equ 0008h
WDTCON_WDTPS3_POSN equ 0004h
WDTCON_WDTPS3_POSITION equ 0004h
WDTCON_WDTPS3_SIZE equ 0001h
WDTCON_WDTPS3_LENGTH equ 0001h
WDTCON_WDTPS3_MASK equ 0010h



CMCON0 equ 0019h

CMCON0_CM_POSN equ 0000h
CMCON0_CM_POSITION equ 0000h
CMCON0_CM_SIZE equ 0003h
CMCON0_CM_LENGTH equ 0003h
CMCON0_CM_MASK equ 0007h
CMCON0_CIS_POSN equ 0003h
CMCON0_CIS_POSITION equ 0003h
CMCON0_CIS_SIZE equ 0001h
CMCON0_CIS_LENGTH equ 0001h
CMCON0_CIS_MASK equ 0008h
CMCON0_C1INV_POSN equ 0004h
CMCON0_C1INV_POSITION equ 0004h
CMCON0_C1INV_SIZE equ 0001h
CMCON0_C1INV_LENGTH equ 0001h
CMCON0_C1INV_MASK equ 0010h
CMCON0_C2INV_POSN equ 0005h
CMCON0_C2INV_POSITION equ 0005h
CMCON0_C2INV_SIZE equ 0001h
CMCON0_C2INV_LENGTH equ 0001h
CMCON0_C2INV_MASK equ 0020h
CMCON0_C1OUT_POSN equ 0006h
CMCON0_C1OUT_POSITION equ 0006h
CMCON0_C1OUT_SIZE equ 0001h
CMCON0_C1OUT_LENGTH equ 0001h
CMCON0_C1OUT_MASK equ 0040h
CMCON0_C2OUT_POSN equ 0007h
CMCON0_C2OUT_POSITION equ 0007h
CMCON0_C2OUT_SIZE equ 0001h
CMCON0_C2OUT_LENGTH equ 0001h
CMCON0_C2OUT_MASK equ 0080h
CMCON0_CM0_POSN equ 0000h
CMCON0_CM0_POSITION equ 0000h
CMCON0_CM0_SIZE equ 0001h
CMCON0_CM0_LENGTH equ 0001h
CMCON0_CM0_MASK equ 0001h
CMCON0_CM1_POSN equ 0001h
CMCON0_CM1_POSITION equ 0001h
CMCON0_CM1_SIZE equ 0001h
CMCON0_CM1_LENGTH equ 0001h
CMCON0_CM1_MASK equ 0002h
CMCON0_CM2_POSN equ 0002h
CMCON0_CM2_POSITION equ 0002h
CMCON0_CM2_SIZE equ 0001h
CMCON0_CM2_LENGTH equ 0001h
CMCON0_CM2_MASK equ 0004h



CMCON1 equ 001Ah

CMCON1_C2SYNC_POSN equ 0000h
CMCON1_C2SYNC_POSITION equ 0000h
CMCON1_C2SYNC_SIZE equ 0001h
CMCON1_C2SYNC_LENGTH equ 0001h
CMCON1_C2SYNC_MASK equ 0001h
CMCON1_T1GSS_POSN equ 0001h
CMCON1_T1GSS_POSITION equ 0001h
CMCON1_T1GSS_SIZE equ 0001h
CMCON1_T1GSS_LENGTH equ 0001h
CMCON1_T1GSS_MASK equ 0002h



ADRESH equ 001Eh



ADCON0 equ 001Fh

ADCON0_ADON_POSN equ 0000h
ADCON0_ADON_POSITION equ 0000h
ADCON0_ADON_SIZE equ 0001h
ADCON0_ADON_LENGTH equ 0001h
ADCON0_ADON_MASK equ 0001h
ADCON0_GO_nDONE_POSN equ 0001h
ADCON0_GO_nDONE_POSITION equ 0001h
ADCON0_GO_nDONE_SIZE equ 0001h
ADCON0_GO_nDONE_LENGTH equ 0001h
ADCON0_GO_nDONE_MASK equ 0002h
ADCON0_CHS_POSN equ 0002h
ADCON0_CHS_POSITION equ 0002h
ADCON0_CHS_SIZE equ 0003h
ADCON0_CHS_LENGTH equ 0003h
ADCON0_CHS_MASK equ 001Ch
ADCON0_VCFG_POSN equ 0006h
ADCON0_VCFG_POSITION equ 0006h
ADCON0_VCFG_SIZE equ 0001h
ADCON0_VCFG_LENGTH equ 0001h
ADCON0_VCFG_MASK equ 0040h
ADCON0_ADFM_POSN equ 0007h
ADCON0_ADFM_POSITION equ 0007h
ADCON0_ADFM_SIZE equ 0001h
ADCON0_ADFM_LENGTH equ 0001h
ADCON0_ADFM_MASK equ 0080h
ADCON0_GO_POSN equ 0001h
ADCON0_GO_POSITION equ 0001h
ADCON0_GO_SIZE equ 0001h
ADCON0_GO_LENGTH equ 0001h
ADCON0_GO_MASK equ 0002h
ADCON0_CHS0_POSN equ 0002h
ADCON0_CHS0_POSITION equ 0002h
ADCON0_CHS0_SIZE equ 0001h
ADCON0_CHS0_LENGTH equ 0001h
ADCON0_CHS0_MASK equ 0004h
ADCON0_CHS1_POSN equ 0003h
ADCON0_CHS1_POSITION equ 0003h
ADCON0_CHS1_SIZE equ 0001h
ADCON0_CHS1_LENGTH equ 0001h
ADCON0_CHS1_MASK equ 0008h
ADCON0_CHS2_POSN equ 0004h
ADCON0_CHS2_POSITION equ 0004h
ADCON0_CHS2_SIZE equ 0001h
ADCON0_CHS2_LENGTH equ 0001h
ADCON0_CHS2_MASK equ 0010h
ADCON0_nDONE_POSN equ 0001h
ADCON0_nDONE_POSITION equ 0001h
ADCON0_nDONE_SIZE equ 0001h
ADCON0_nDONE_LENGTH equ 0001h
ADCON0_nDONE_MASK equ 0002h
ADCON0_GO_DONE_POSN equ 0001h
ADCON0_GO_DONE_POSITION equ 0001h
ADCON0_GO_DONE_SIZE equ 0001h
ADCON0_GO_DONE_LENGTH equ 0001h
ADCON0_GO_DONE_MASK equ 0002h



OPTION_REG equ 0081h

OPTION_REG_PS_POSN equ 0000h
OPTION_REG_PS_POSITION equ 0000h
OPTION_REG_PS_SIZE equ 0003h
OPTION_REG_PS_LENGTH equ 0003h
OPTION_REG_PS_MASK equ 0007h
OPTION_REG_PSA_POSN equ 0003h
OPTION_REG_PSA_POSITION equ 0003h
OPTION_REG_PSA_SIZE equ 0001h
OPTION_REG_PSA_LENGTH equ 0001h
OPTION_REG_PSA_MASK equ 0008h
OPTION_REG_T0SE_POSN equ 0004h
OPTION_REG_T0SE_POSITION equ 0004h
OPTION_REG_T0SE_SIZE equ 0001h
OPTION_REG_T0SE_LENGTH equ 0001h
OPTION_REG_T0SE_MASK equ 0010h
OPTION_REG_T0CS_POSN equ 0005h
OPTION_REG_T0CS_POSITION equ 0005h
OPTION_REG_T0CS_SIZE equ 0001h
OPTION_REG_T0CS_LENGTH equ 0001h
OPTION_REG_T0CS_MASK equ 0020h
OPTION_REG_INTEDG_POSN equ 0006h
OPTION_REG_INTEDG_POSITION equ 0006h
OPTION_REG_INTEDG_SIZE equ 0001h
OPTION_REG_INTEDG_LENGTH equ 0001h
OPTION_REG_INTEDG_MASK equ 0040h
OPTION_REG_nRAPU_POSN equ 0007h
OPTION_REG_nRAPU_POSITION equ 0007h
OPTION_REG_nRAPU_SIZE equ 0001h
OPTION_REG_nRAPU_LENGTH equ 0001h
OPTION_REG_nRAPU_MASK equ 0080h
OPTION_REG_PS0_POSN equ 0000h
OPTION_REG_PS0_POSITION equ 0000h
OPTION_REG_PS0_SIZE equ 0001h
OPTION_REG_PS0_LENGTH equ 0001h
OPTION_REG_PS0_MASK equ 0001h
OPTION_REG_PS1_POSN equ 0001h
OPTION_REG_PS1_POSITION equ 0001h
OPTION_REG_PS1_SIZE equ 0001h
OPTION_REG_PS1_LENGTH equ 0001h
OPTION_REG_PS1_MASK equ 0002h
OPTION_REG_PS2_POSN equ 0002h
OPTION_REG_PS2_POSITION equ 0002h
OPTION_REG_PS2_SIZE equ 0001h
OPTION_REG_PS2_LENGTH equ 0001h
OPTION_REG_PS2_MASK equ 0004h



TRISA equ 0085h

TRISA_TRISA0_POSN equ 0000h
TRISA_TRISA0_POSITION equ 0000h
TRISA_TRISA0_SIZE equ 0001h
TRISA_TRISA0_LENGTH equ 0001h
TRISA_TRISA0_MASK equ 0001h
TRISA_TRISA1_POSN equ 0001h
TRISA_TRISA1_POSITION equ 0001h
TRISA_TRISA1_SIZE equ 0001h
TRISA_TRISA1_LENGTH equ 0001h
TRISA_TRISA1_MASK equ 0002h
TRISA_TRISA2_POSN equ 0002h
TRISA_TRISA2_POSITION equ 0002h
TRISA_TRISA2_SIZE equ 0001h
TRISA_TRISA2_LENGTH equ 0001h
TRISA_TRISA2_MASK equ 0004h
TRISA_TRISA3_POSN equ 0003h
TRISA_TRISA3_POSITION equ 0003h
TRISA_TRISA3_SIZE equ 0001h
TRISA_TRISA3_LENGTH equ 0001h
TRISA_TRISA3_MASK equ 0008h
TRISA_TRISA4_POSN equ 0004h
TRISA_TRISA4_POSITION equ 0004h
TRISA_TRISA4_SIZE equ 0001h
TRISA_TRISA4_LENGTH equ 0001h
TRISA_TRISA4_MASK equ 0010h
TRISA_TRISA5_POSN equ 0005h
TRISA_TRISA5_POSITION equ 0005h
TRISA_TRISA5_SIZE equ 0001h
TRISA_TRISA5_LENGTH equ 0001h
TRISA_TRISA5_MASK equ 0020h



TRISC equ 0087h

TRISC_TRISC0_POSN equ 0000h
TRISC_TRISC0_POSITION equ 0000h
TRISC_TRISC0_SIZE equ 0001h
TRISC_TRISC0_LENGTH equ 0001h
TRISC_TRISC0_MASK equ 0001h
TRISC_TRISC1_POSN equ 0001h
TRISC_TRISC1_POSITION equ 0001h
TRISC_TRISC1_SIZE equ 0001h
TRISC_TRISC1_LENGTH equ 0001h
TRISC_TRISC1_MASK equ 0002h
TRISC_TRISC2_POSN equ 0002h
TRISC_TRISC2_POSITION equ 0002h
TRISC_TRISC2_SIZE equ 0001h
TRISC_TRISC2_LENGTH equ 0001h
TRISC_TRISC2_MASK equ 0004h
TRISC_TRISC3_POSN equ 0003h
TRISC_TRISC3_POSITION equ 0003h
TRISC_TRISC3_SIZE equ 0001h
TRISC_TRISC3_LENGTH equ 0001h
TRISC_TRISC3_MASK equ 0008h
TRISC_TRISC4_POSN equ 0004h
TRISC_TRISC4_POSITION equ 0004h
TRISC_TRISC4_SIZE equ 0001h
TRISC_TRISC4_LENGTH equ 0001h
TRISC_TRISC4_MASK equ 0010h
TRISC_TRISC5_POSN equ 0005h
TRISC_TRISC5_POSITION equ 0005h
TRISC_TRISC5_SIZE equ 0001h
TRISC_TRISC5_LENGTH equ 0001h
TRISC_TRISC5_MASK equ 0020h



PIE1 equ 008Ch

PIE1_TMR1IE_POSN equ 0000h
PIE1_TMR1IE_POSITION equ 0000h
PIE1_TMR1IE_SIZE equ 0001h
PIE1_TMR1IE_LENGTH equ 0001h
PIE1_TMR1IE_MASK equ 0001h
PIE1_TXIE_POSN equ 0001h
PIE1_TXIE_POSITION equ 0001h
PIE1_TXIE_SIZE equ 0001h
PIE1_TXIE_LENGTH equ 0001h
PIE1_TXIE_MASK equ 0002h
PIE1_OSFIE_POSN equ 0002h
PIE1_OSFIE_POSITION equ 0002h
PIE1_OSFIE_SIZE equ 0001h
PIE1_OSFIE_LENGTH equ 0001h
PIE1_OSFIE_MASK equ 0004h
PIE1_C1IE_POSN equ 0003h
PIE1_C1IE_POSITION equ 0003h
PIE1_C1IE_SIZE equ 0001h
PIE1_C1IE_LENGTH equ 0001h
PIE1_C1IE_MASK equ 0008h
PIE1_C2IE_POSN equ 0004h
PIE1_C2IE_POSITION equ 0004h
PIE1_C2IE_SIZE equ 0001h
PIE1_C2IE_LENGTH equ 0001h
PIE1_C2IE_MASK equ 0010h
PIE1_RCIE_POSN equ 0005h
PIE1_RCIE_POSITION equ 0005h
PIE1_RCIE_SIZE equ 0001h
PIE1_RCIE_LENGTH equ 0001h
PIE1_RCIE_MASK equ 0020h
PIE1_ADIE_POSN equ 0006h
PIE1_ADIE_POSITION equ 0006h
PIE1_ADIE_SIZE equ 0001h
PIE1_ADIE_LENGTH equ 0001h
PIE1_ADIE_MASK equ 0040h
PIE1_EEIE_POSN equ 0007h
PIE1_EEIE_POSITION equ 0007h
PIE1_EEIE_SIZE equ 0001h
PIE1_EEIE_LENGTH equ 0001h
PIE1_EEIE_MASK equ 0080h
PIE1_T1IE_POSN equ 0000h
PIE1_T1IE_POSITION equ 0000h
PIE1_T1IE_SIZE equ 0001h
PIE1_T1IE_LENGTH equ 0001h
PIE1_T1IE_MASK equ 0001h



PCON equ 008Eh

PCON_nBOR_POSN equ 0000h
PCON_nBOR_POSITION equ 0000h
PCON_nBOR_SIZE equ 0001h
PCON_nBOR_LENGTH equ 0001h
PCON_nBOR_MASK equ 0001h
PCON_nPOR_POSN equ 0001h
PCON_nPOR_POSITION equ 0001h
PCON_nPOR_SIZE equ 0001h
PCON_nPOR_LENGTH equ 0001h
PCON_nPOR_MASK equ 0002h
PCON_SBODEN_POSN equ 0004h
PCON_SBODEN_POSITION equ 0004h
PCON_SBODEN_SIZE equ 0001h
PCON_SBODEN_LENGTH equ 0001h
PCON_SBODEN_MASK equ 0010h
PCON_ULPWUE_POSN equ 0005h
PCON_ULPWUE_POSITION equ 0005h
PCON_ULPWUE_SIZE equ 0001h
PCON_ULPWUE_LENGTH equ 0001h
PCON_ULPWUE_MASK equ 0020h
PCON_nBOD_POSN equ 0000h
PCON_nBOD_POSITION equ 0000h
PCON_nBOD_SIZE equ 0001h
PCON_nBOD_LENGTH equ 0001h
PCON_nBOD_MASK equ 0001h



OSCCON equ 008Fh

OSCCON_SCS_POSN equ 0000h
OSCCON_SCS_POSITION equ 0000h
OSCCON_SCS_SIZE equ 0001h
OSCCON_SCS_LENGTH equ 0001h
OSCCON_SCS_MASK equ 0001h
OSCCON_LTS_POSN equ 0001h
OSCCON_LTS_POSITION equ 0001h
OSCCON_LTS_SIZE equ 0001h
OSCCON_LTS_LENGTH equ 0001h
OSCCON_LTS_MASK equ 0002h
OSCCON_HTS_POSN equ 0002h
OSCCON_HTS_POSITION equ 0002h
OSCCON_HTS_SIZE equ 0001h
OSCCON_HTS_LENGTH equ 0001h
OSCCON_HTS_MASK equ 0004h
OSCCON_OSTS_POSN equ 0003h
OSCCON_OSTS_POSITION equ 0003h
OSCCON_OSTS_SIZE equ 0001h
OSCCON_OSTS_LENGTH equ 0001h
OSCCON_OSTS_MASK equ 0008h
OSCCON_IOSCF_POSN equ 0004h
OSCCON_IOSCF_POSITION equ 0004h
OSCCON_IOSCF_SIZE equ 0003h
OSCCON_IOSCF_LENGTH equ 0003h
OSCCON_IOSCF_MASK equ 0070h
OSCCON_IRCF0_POSN equ 0004h
OSCCON_IRCF0_POSITION equ 0004h
OSCCON_IRCF0_SIZE equ 0001h
OSCCON_IRCF0_LENGTH equ 0001h
OSCCON_IRCF0_MASK equ 0010h
OSCCON_IRCF1_POSN equ 0005h
OSCCON_IRCF1_POSITION equ 0005h
OSCCON_IRCF1_SIZE equ 0001h
OSCCON_IRCF1_LENGTH equ 0001h
OSCCON_IRCF1_MASK equ 0020h
OSCCON_IRCF2_POSN equ 0006h
OSCCON_IRCF2_POSITION equ 0006h
OSCCON_IRCF2_SIZE equ 0001h
OSCCON_IRCF2_LENGTH equ 0001h
OSCCON_IRCF2_MASK equ 0040h



OSCTUNE equ 0090h

OSCTUNE_TUN_POSN equ 0000h
OSCTUNE_TUN_POSITION equ 0000h
OSCTUNE_TUN_SIZE equ 0005h
OSCTUNE_TUN_LENGTH equ 0005h
OSCTUNE_TUN_MASK equ 001Fh
OSCTUNE_TUN0_POSN equ 0000h
OSCTUNE_TUN0_POSITION equ 0000h
OSCTUNE_TUN0_SIZE equ 0001h
OSCTUNE_TUN0_LENGTH equ 0001h
OSCTUNE_TUN0_MASK equ 0001h
OSCTUNE_TUN1_POSN equ 0001h
OSCTUNE_TUN1_POSITION equ 0001h
OSCTUNE_TUN1_SIZE equ 0001h
OSCTUNE_TUN1_LENGTH equ 0001h
OSCTUNE_TUN1_MASK equ 0002h
OSCTUNE_TUN2_POSN equ 0002h
OSCTUNE_TUN2_POSITION equ 0002h
OSCTUNE_TUN2_SIZE equ 0001h
OSCTUNE_TUN2_LENGTH equ 0001h
OSCTUNE_TUN2_MASK equ 0004h
OSCTUNE_TUN3_POSN equ 0003h
OSCTUNE_TUN3_POSITION equ 0003h
OSCTUNE_TUN3_SIZE equ 0001h
OSCTUNE_TUN3_LENGTH equ 0001h
OSCTUNE_TUN3_MASK equ 0008h
OSCTUNE_TUN4_POSN equ 0004h
OSCTUNE_TUN4_POSITION equ 0004h
OSCTUNE_TUN4_SIZE equ 0001h
OSCTUNE_TUN4_LENGTH equ 0001h
OSCTUNE_TUN4_MASK equ 0010h



ANSEL equ 0091h

ANSEL_ANS0_POSN equ 0000h
ANSEL_ANS0_POSITION equ 0000h
ANSEL_ANS0_SIZE equ 0001h
ANSEL_ANS0_LENGTH equ 0001h
ANSEL_ANS0_MASK equ 0001h
ANSEL_ANS1_POSN equ 0001h
ANSEL_ANS1_POSITION equ 0001h
ANSEL_ANS1_SIZE equ 0001h
ANSEL_ANS1_LENGTH equ 0001h
ANSEL_ANS1_MASK equ 0002h
ANSEL_ANS2_POSN equ 0002h
ANSEL_ANS2_POSITION equ 0002h
ANSEL_ANS2_SIZE equ 0001h
ANSEL_ANS2_LENGTH equ 0001h
ANSEL_ANS2_MASK equ 0004h
ANSEL_ANS3_POSN equ 0003h
ANSEL_ANS3_POSITION equ 0003h
ANSEL_ANS3_SIZE equ 0001h
ANSEL_ANS3_LENGTH equ 0001h
ANSEL_ANS3_MASK equ 0008h
ANSEL_ANS4_POSN equ 0004h
ANSEL_ANS4_POSITION equ 0004h
ANSEL_ANS4_SIZE equ 0001h
ANSEL_ANS4_LENGTH equ 0001h
ANSEL_ANS4_MASK equ 0010h
ANSEL_ANS5_POSN equ 0005h
ANSEL_ANS5_POSITION equ 0005h
ANSEL_ANS5_SIZE equ 0001h
ANSEL_ANS5_LENGTH equ 0001h
ANSEL_ANS5_MASK equ 0020h
ANSEL_ANS6_POSN equ 0006h
ANSEL_ANS6_POSITION equ 0006h
ANSEL_ANS6_SIZE equ 0001h
ANSEL_ANS6_LENGTH equ 0001h
ANSEL_ANS6_MASK equ 0040h
ANSEL_ANS7_POSN equ 0007h
ANSEL_ANS7_POSITION equ 0007h
ANSEL_ANS7_SIZE equ 0001h
ANSEL_ANS7_LENGTH equ 0001h
ANSEL_ANS7_MASK equ 0080h



WPUA equ 0095h

WPUA_WPUA0_POSN equ 0000h
WPUA_WPUA0_POSITION equ 0000h
WPUA_WPUA0_SIZE equ 0001h
WPUA_WPUA0_LENGTH equ 0001h
WPUA_WPUA0_MASK equ 0001h
WPUA_WPUA1_POSN equ 0001h
WPUA_WPUA1_POSITION equ 0001h
WPUA_WPUA1_SIZE equ 0001h
WPUA_WPUA1_LENGTH equ 0001h
WPUA_WPUA1_MASK equ 0002h
WPUA_WPUA2_POSN equ 0002h
WPUA_WPUA2_POSITION equ 0002h
WPUA_WPUA2_SIZE equ 0001h
WPUA_WPUA2_LENGTH equ 0001h
WPUA_WPUA2_MASK equ 0004h
WPUA_WPUA4_POSN equ 0004h
WPUA_WPUA4_POSITION equ 0004h
WPUA_WPUA4_SIZE equ 0001h
WPUA_WPUA4_LENGTH equ 0001h
WPUA_WPUA4_MASK equ 0010h
WPUA_WPUA5_POSN equ 0005h
WPUA_WPUA5_POSITION equ 0005h
WPUA_WPUA5_SIZE equ 0001h
WPUA_WPUA5_LENGTH equ 0001h
WPUA_WPUA5_MASK equ 0020h
WPUA_WPU0_POSN equ 0000h
WPUA_WPU0_POSITION equ 0000h
WPUA_WPU0_SIZE equ 0001h
WPUA_WPU0_LENGTH equ 0001h
WPUA_WPU0_MASK equ 0001h
WPUA_WPU1_POSN equ 0001h
WPUA_WPU1_POSITION equ 0001h
WPUA_WPU1_SIZE equ 0001h
WPUA_WPU1_LENGTH equ 0001h
WPUA_WPU1_MASK equ 0002h
WPUA_WPU2_POSN equ 0002h
WPUA_WPU2_POSITION equ 0002h
WPUA_WPU2_SIZE equ 0001h
WPUA_WPU2_LENGTH equ 0001h
WPUA_WPU2_MASK equ 0004h
WPUA_WPU4_POSN equ 0004h
WPUA_WPU4_POSITION equ 0004h
WPUA_WPU4_SIZE equ 0001h
WPUA_WPU4_LENGTH equ 0001h
WPUA_WPU4_MASK equ 0010h
WPUA_WPU5_POSN equ 0005h
WPUA_WPU5_POSITION equ 0005h
WPUA_WPU5_SIZE equ 0001h
WPUA_WPU5_LENGTH equ 0001h
WPUA_WPU5_MASK equ 0020h



IOCA equ 0096h

IOCA_IOCA0_POSN equ 0000h
IOCA_IOCA0_POSITION equ 0000h
IOCA_IOCA0_SIZE equ 0001h
IOCA_IOCA0_LENGTH equ 0001h
IOCA_IOCA0_MASK equ 0001h
IOCA_IOCA1_POSN equ 0001h
IOCA_IOCA1_POSITION equ 0001h
IOCA_IOCA1_SIZE equ 0001h
IOCA_IOCA1_LENGTH equ 0001h
IOCA_IOCA1_MASK equ 0002h
IOCA_IOCA2_POSN equ 0002h
IOCA_IOCA2_POSITION equ 0002h
IOCA_IOCA2_SIZE equ 0001h
IOCA_IOCA2_LENGTH equ 0001h
IOCA_IOCA2_MASK equ 0004h
IOCA_IOCA3_POSN equ 0003h
IOCA_IOCA3_POSITION equ 0003h
IOCA_IOCA3_SIZE equ 0001h
IOCA_IOCA3_LENGTH equ 0001h
IOCA_IOCA3_MASK equ 0008h
IOCA_IOCA4_POSN equ 0004h
IOCA_IOCA4_POSITION equ 0004h
IOCA_IOCA4_SIZE equ 0001h
IOCA_IOCA4_LENGTH equ 0001h
IOCA_IOCA4_MASK equ 0010h
IOCA_IOCA5_POSN equ 0005h
IOCA_IOCA5_POSITION equ 0005h
IOCA_IOCA5_SIZE equ 0001h
IOCA_IOCA5_LENGTH equ 0001h
IOCA_IOCA5_MASK equ 0020h
IOCA_IOC0_POSN equ 0000h
IOCA_IOC0_POSITION equ 0000h
IOCA_IOC0_SIZE equ 0001h
IOCA_IOC0_LENGTH equ 0001h
IOCA_IOC0_MASK equ 0001h
IOCA_IOC1_POSN equ 0001h
IOCA_IOC1_POSITION equ 0001h
IOCA_IOC1_SIZE equ 0001h
IOCA_IOC1_LENGTH equ 0001h
IOCA_IOC1_MASK equ 0002h
IOCA_IOC2_POSN equ 0002h
IOCA_IOC2_POSITION equ 0002h
IOCA_IOC2_SIZE equ 0001h
IOCA_IOC2_LENGTH equ 0001h
IOCA_IOC2_MASK equ 0004h
IOCA_IOC3_POSN equ 0003h
IOCA_IOC3_POSITION equ 0003h
IOCA_IOC3_SIZE equ 0001h
IOCA_IOC3_LENGTH equ 0001h
IOCA_IOC3_MASK equ 0008h
IOCA_IOC4_POSN equ 0004h
IOCA_IOC4_POSITION equ 0004h
IOCA_IOC4_SIZE equ 0001h
IOCA_IOC4_LENGTH equ 0001h
IOCA_IOC4_MASK equ 0010h
IOCA_IOC5_POSN equ 0005h
IOCA_IOC5_POSITION equ 0005h
IOCA_IOC5_SIZE equ 0001h
IOCA_IOC5_LENGTH equ 0001h
IOCA_IOC5_MASK equ 0020h



EEDATH equ 0097h



EEADRH equ 0098h



VRCON equ 0099h

VRCON_VR_POSN equ 0000h
VRCON_VR_POSITION equ 0000h
VRCON_VR_SIZE equ 0004h
VRCON_VR_LENGTH equ 0004h
VRCON_VR_MASK equ 000Fh
VRCON_VRR_POSN equ 0005h
VRCON_VRR_POSITION equ 0005h
VRCON_VRR_SIZE equ 0001h
VRCON_VRR_LENGTH equ 0001h
VRCON_VRR_MASK equ 0020h
VRCON_VREN_POSN equ 0007h
VRCON_VREN_POSITION equ 0007h
VRCON_VREN_SIZE equ 0001h
VRCON_VREN_LENGTH equ 0001h
VRCON_VREN_MASK equ 0080h
VRCON_VR0_POSN equ 0000h
VRCON_VR0_POSITION equ 0000h
VRCON_VR0_SIZE equ 0001h
VRCON_VR0_LENGTH equ 0001h
VRCON_VR0_MASK equ 0001h
VRCON_VR1_POSN equ 0001h
VRCON_VR1_POSITION equ 0001h
VRCON_VR1_SIZE equ 0001h
VRCON_VR1_LENGTH equ 0001h
VRCON_VR1_MASK equ 0002h
VRCON_VR2_POSN equ 0002h
VRCON_VR2_POSITION equ 0002h
VRCON_VR2_SIZE equ 0001h
VRCON_VR2_LENGTH equ 0001h
VRCON_VR2_MASK equ 0004h
VRCON_VR3_POSN equ 0003h
VRCON_VR3_POSITION equ 0003h
VRCON_VR3_SIZE equ 0001h
VRCON_VR3_LENGTH equ 0001h
VRCON_VR3_MASK equ 0008h



EEDAT equ 009Ah

EEDAT_EEDAT_POSN equ 0000h
EEDAT_EEDAT_POSITION equ 0000h
EEDAT_EEDAT_SIZE equ 0008h
EEDAT_EEDAT_LENGTH equ 0008h
EEDAT_EEDAT_MASK equ 00FFh



EEADR equ 009Bh



EECON1 equ 009Ch

EECON1_RD_POSN equ 0000h
EECON1_RD_POSITION equ 0000h
EECON1_RD_SIZE equ 0001h
EECON1_RD_LENGTH equ 0001h
EECON1_RD_MASK equ 0001h
EECON1_WR_POSN equ 0001h
EECON1_WR_POSITION equ 0001h
EECON1_WR_SIZE equ 0001h
EECON1_WR_LENGTH equ 0001h
EECON1_WR_MASK equ 0002h
EECON1_WREN_POSN equ 0002h
EECON1_WREN_POSITION equ 0002h
EECON1_WREN_SIZE equ 0001h
EECON1_WREN_LENGTH equ 0001h
EECON1_WREN_MASK equ 0004h
EECON1_WRERR_POSN equ 0003h
EECON1_WRERR_POSITION equ 0003h
EECON1_WRERR_SIZE equ 0001h
EECON1_WRERR_LENGTH equ 0001h
EECON1_WRERR_MASK equ 0008h
EECON1_EEPGD_POSN equ 0007h
EECON1_EEPGD_POSITION equ 0007h
EECON1_EEPGD_SIZE equ 0001h
EECON1_EEPGD_LENGTH equ 0001h
EECON1_EEPGD_MASK equ 0080h



EECON2 equ 009Dh



ADRESL equ 009Eh



ADCON1 equ 009Fh

ADCON1_ADCS_POSN equ 0004h
ADCON1_ADCS_POSITION equ 0004h
ADCON1_ADCS_SIZE equ 0003h
ADCON1_ADCS_LENGTH equ 0003h
ADCON1_ADCS_MASK equ 0070h
ADCON1_ADCS0_POSN equ 0004h
ADCON1_ADCS0_POSITION equ 0004h
ADCON1_ADCS0_SIZE equ 0001h
ADCON1_ADCS0_LENGTH equ 0001h
ADCON1_ADCS0_MASK equ 0010h
ADCON1_ADCS1_POSN equ 0005h
ADCON1_ADCS1_POSITION equ 0005h
ADCON1_ADCS1_SIZE equ 0001h
ADCON1_ADCS1_LENGTH equ 0001h
ADCON1_ADCS1_MASK equ 0020h
ADCON1_ADCS2_POSN equ 0006h
ADCON1_ADCS2_POSITION equ 0006h
ADCON1_ADCS2_SIZE equ 0001h
ADCON1_ADCS2_LENGTH equ 0001h
ADCON1_ADCS2_MASK equ 0040h
# 1448 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\proc\\pic16f688.inc" 3
psect udata_shr,class=COMMON,space=1,noexec
psect udata,class=RAM,space=1,noexec
psect udata_bank0,class=BANK0,space=1,noexec
psect udata_bank1,class=BANK1,space=1,noexec
psect udata_bank2,class=BANK2,space=1,noexec
psect code,class=CODE,space=0,delta=2
psect data,class=STRCODE,space=0,delta=2,noexec
psect edata,class=EEDATA,space=3,delta=2,noexec
# 2294 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\pic_as_chip_select.inc" 2 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\pic.inc" 2 3




stk_offset SET 0
auto_size SET 0


; stack_auto defines a symbol /name/_offset which equates to the
; stack offset of the auto object in question

stack_auto MACRO name, size
name&_offset EQU stk_offset-size
stk_offset SET name&_offset
auto_size SET -stk_offset
ENDM


; stack_param defines a symbol /name/_offset which equates to the
; stack offset of the parameter object in question

stack_param MACRO name, size
name&_offset EQU stk_offset-size
stk_offset SET name&_offset
ENDM


; alloc_stack adjusts the SP to allocate space for auto objects
; it also links in to the btemp symbol so that can be used

alloc_stack MACRO
GLOBAL btemp
addfsr FSR1,auto_size
ENDM


; restore_stack adjusts the SP to remove all auto and parameter
; objects from the stack prior to returning from a function

restore_stack MACRO
addfsr FSR1,stk_offset
stk_offset SET 0
auto_size SET 0
ENDM
# 7 "C:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\xc.inc" 2 3
# 4 "main.s" 2

BANKSEL PORTA ;
CLRF PORTA ;Init PORTA
MOVLW 07h ;Set RA<2:0> to
MOVWF CMCON0
