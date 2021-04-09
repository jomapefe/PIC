//definiciones y valores por defecto
//#define LCD_PinRS PIN_B0
//#define LCD_PinEnable PIN_B1
//#define LCD_BusDatos 0x07  //utiliza la parte baja del puerto

void envia_comando(int8 );
void mensaje_lcd(char data[]);
void envia_caracter(int8 );
void escribeLCD(int8 );
void lcd_Inicializa();

void envia_comando(int8 data){
   output_low(LCD_PinRS);
   escribeLCD(data);
   swap(data);
   escribeLCD(data);
   delay_us(2050);
}

void mensaje_lcd(char data[]){
   int i=0;
   envia_comando(0b00010000);//LCD_Borra
   delay_ms(2);
   envia_comando(0b11000000);//LCD_CursorOFF
   delay_ms(2);
   envia_comando(0b01100000);//LCD_CursorIncr
   while (data[i]!=0x00)
   {
      if(i==16)envia_comando(0b00001100);
      envia_caracter(data[i]);
      i++;
   }
}

void envia_caracter(char data){
   output_high(LCD_PinRS);
   swap(data);
   escribeLCD(data);
   swap(data);
   escribeLCD(data);
   delay_us(50);
}

void escribeLCD(int8 data){
   #asm
   movf data,W
   andlw 0x0f
   movwf data
   movf LCD_BusDatos,W
   andlw 0xf0
   iorwf data,w
   movwf LCD_BusDatos
   #endasm
   output_high(LCD_PinEnable);
   delay_us(1);
   output_low(LCD_PinEnable);
}

void lcd_Inicializa(){
   output_low(LCD_PinEnable);
   output_low(LCD_PinRS);
   delay_ms(20);
   escribeLCD(0b00000011);
   delay_ms(5);
   escribeLCD(0b00000011);
   delay_us(200);
   escribeLCD(0b00000011);
   delay_us(200);
   escribeLCD(0b00000010);
   envia_comando(0b10000010);//LCD_2Lineas4Bits5x7
   delay_ms(2);
   envia_comando(0b00010000);//LCD_Borra
   //envia_comando(0b11000000);//LCD_CursorOFF
   //envia_comando(0b01100000);//LCD_CursorIncr
}

//contacto:ericksm.electronica@gmail.com