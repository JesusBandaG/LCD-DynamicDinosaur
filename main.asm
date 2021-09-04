;PROGRAMA QUE ESCRIBE CARACTERES ESPECIALES EN UNA LCD (ANIMACIÓN DE DINOSAURIO Y EDIFICIO)

LIST P = 16F887
INCLUDE <P16F887.INC>

; CONFIG1
; __config 0x20F2
 __CONFIG _CONFIG1, _FOSC_HS & _WDTE_OFF & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF
; CONFIG2
; __config 0x3EFF
 __CONFIG _CONFIG2, _BOR4V_BOR21V & _WRT_OFF
 
#define LCD_EN1   PORTD,4
 
CBLOCK 0x0020 ; Se definen las variables para los retardos
   Count250us
   Count25ms
   Count1_25s
   Count5s
ENDC

ORG 0x0000 ; Escribo a partir de la ubicación 0x0000 de la memoria de programa
    GOTO    INICIO ; Salta a la etiqueta INICIO
 
ORG 0x0005 ; Escribo a partir de la ubicación 0x0005 de la memoria de programa
INICIO ; Etiqueta INICIO
    BANKSEL ANSEL
    MOVLW 0x00
    MOVWF ANSEL
    MOVLW 0x00
    MOVWF ANSELH ;Configurando puertos como digitales
    BANKSEL TRISD
    MOVLW 0x00
    MOVWF TRISD ; Configurando Puerto D como salida
    
    CALL LCD_Init ; Se inicializa la LCD
    
    
    ;CREACIÓN DEL CARACTERES PERSONALIZADOS
    ;INSTRUCCION CGRAM ADDRESS (1ER CARACTER)
    MOVLW b'00000100' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00000000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 0

    ;ENVÍO DE LA FILA 1 DEL CARACTER 1 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 1 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 1 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 1 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 1 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 1 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 1 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 1 (1 1100)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101100'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
        
    
       
    ;INSTRUCCION CGRAM ADDRESS (2DO CARACTER)
    MOVLW b'00000100' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00001000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 8

    ;ENVÍO DE LA FILA 1 DEL CARACTER 2 (0 0011)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100011'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 2 (0 0101)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 2 (0 0111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 2 (0 0111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 2 (0 0111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 2 (0 0111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 2 (0 1111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 2 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms    
    
    ;INSTRUCCION CGRAM ADDRESS (3ER CARACTER)
    MOVLW b'00000101' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00000000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 16

    ;ENVÍO DE LA FILA 1 DEL CARACTER 3 (1 1110)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101110'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 3 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 3 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 3 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 3 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 3 (1 1110)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101110'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 3 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 3 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    
    ;INSTRUCCION CGRAM ADDRESS (4TO CARACTER)
    MOVLW b'00000101' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00001000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 24

    ;ENVÍO DE LA FILA 1 DEL CARACTER 4 (1 1101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 4 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 4 (0 1111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 4 (0 0111)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 4 (0 0011)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100011'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 4 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 4 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 4 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    
    ;INSTRUCCION CGRAM ADDRESS (5TO CARACTER)
    MOVLW b'00000110' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00000000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 32

    ;ENVÍO DE LA FILA 1 DEL CARACTER 5 (1 1111)
    MOVLW b'00100001' ; Al ser datos los que se van a enviar se coloca en alto el bit RS
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 5 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 5 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 5 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 5 (1 1011)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101011'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 5 (1 0010)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100010'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 5 (1 0010)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100010'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 5 (1 1011)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101011'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    
    ;INSTRUCCION CGRAM ADDRESS (6TO CARACTER)
    MOVLW b'00000110' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00001000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 40
   
    ;ENVÍO DE LA FILA 1 DEL CARACTER 6 (1 1100)
    MOVLW b'00100001' ; Al ser datos los que se van a enviar se coloca en alto el bit RS
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101100'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 6 (1 0100)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100100'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 6 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 6 (1 0000)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 6 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 6 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 6 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 6 (0 0000)
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100000'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    
    ;INSTRUCCION CGRAM ADDRESS (7MO CARACTER)
    MOVLW b'00000111' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00000000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 48

    ;ENVÍO DE LA FILA 1 DEL CARACTER 7 (1 1111)
    MOVLW b'00100001' ; Al ser datos los que se van a enviar se coloca en alto el bit RS
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 7 (1 0101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 7(1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 7 (1 0101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 7 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 7 (1 0101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 7 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 7 (1 0101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    
    ;INSTRUCCION CGRAM ADDRESS (8VO CARACTER)
    MOVLW b'00000111' ; Se cargan los bits más significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00001000' ; Se cargan los bits menos significativos al registro de trabajo
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms ; Se ajustó la dirección de la CGRAM en la posición 56

    ;ENVÍO DE LA FILA 1 DEL CARACTER 8 (1 1111)
    MOVLW b'00100001' ; Al ser datos los que se van a enviar se coloca en alto el bit RS
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 2 DEL CARACTER 8 (1 0101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 3 DEL CARACTER 8 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 4 DEL CARACTER 8 (1 0101)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00100101'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 5 DEL CARACTER 8 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 6 DEL CARACTER 8 (1 1111)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101111'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 7 DEL CARACTER 8 (1 1011)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101011'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms

    ;ENVÍO DE LA FILA 8 DEL CARACTER 8 (1 1011)
    MOVLW b'00100001'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    MOVLW b'00101011'
    MOVWF PORTD
    BSF LCD_EN1
    CALL Delay100us
    BCF LCD_EN1
    CALL Delay4_1ms
    
    
BUCLE:  ; Etiqueta BUCLE
    
    ;ENVÍO DEL 7MO DATO A IMPRIMIR
    MOVLW 0x000D
    CALL LCD_GoTo
    MOVLW 0x0006
    CALL LCD_Char
    
    ;ENVÍO DEL 8VO DATO A IMPRIMIR
    MOVLW 0x004D
    CALL LCD_GoTo
    MOVLW 0x0007
    CALL LCD_Char
    
    ;1ERA APARICIÓN DE DINO
    MOVLW 0x0000
    CALL LCD_GoTo
    
    ;ENVÍO DE 1ER DATO A IMPRIMIR
    MOVLW 0x0000
    CALL LCD_Char

    ;ENVÍO DE 2DO DATO A IMPRIMIR
    MOVLW 0x0001
    CALL LCD_Char
    
    ;ENVÍO DE 3ER DATO A IMPRIMIR 
    MOVLW 0x0002
    CALL LCD_Char
    
    MOVLW 0x040
    CALL LCD_GoTo
    
    ;ENVÍO DE 4TO DATO A IMPRIMIR
    MOVLW 0x0003
    CALL LCD_Char

    ;ENVÍO DE 5TO DATO A IMPRIMIR
    MOVLW 0x0004
    CALL LCD_Char
    
    ;ENVÍO DE 6TO DATO A IMPRIMIR
    MOVLW 0x0005
    CALL LCD_Char
    
    CALL Delay1_25s
    
    ;BORRAR CASILLAS
    MOVLW 0x0000
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW 0x0040
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    
    ;2DA APARICIÓN
    MOVLW 0x002
    CALL LCD_GoTo
    
    ;ENVÍO DE 1ER DATO A IMPRIMIR
    MOVLW 0x0000
    CALL LCD_Char
    
    ;ENVÍO DE 2DO DATO A IMPRIMIR
    MOVLW 0x0001
    CALL LCD_Char
    
    ;ENVÍO DE 3ER DATO A IMPRIMIR 
    MOVLW 0x0002
    CALL LCD_Char
    
    MOVLW 0x042
    CALL LCD_GoTo
    
    ;ENVÍO DE 4TO DATO A IMPRIMIR
    MOVLW 0x0003
    CALL LCD_Char
    
    ;ENVÍO DE 5TO DATO A IMPRIMIR
    MOVLW 0x0004
    CALL LCD_Char
    
    ;ENVÍO DE 6TO DATO A IMPRIMIR
    MOVLW 0x0005
    CALL LCD_Char
    
    CALL Delay1_25s
    
    ;BORRAR CASILLAS
    MOVLW 0x002
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW 0x0042
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    
    ; 3ERA APARICIÓN
    MOVLW 0x005
    CALL LCD_GoTo
    
    ;ENVÍO DE 1ER DATO A IMPRIMIR
    MOVLW 0x0000
    CALL LCD_Char
    
    ;ENVÍO DE 2DO DATO A IMPRIMIR
    MOVLW 0x0001
    CALL LCD_Char
    
    ;ENVÍO DE 3ER DATO A IMPRIMIR 
    MOVLW 0x0002
    CALL LCD_Char
    
    MOVLW 0x045
    CALL LCD_GoTo
    
    ;ENVÍO DE 4TO DATO A IMPRIMIR
    MOVLW 0x0003
    CALL LCD_Char
    
    ;ENVÍO DE 5TO DATO A IMPRIMIR
    MOVLW 0x0004
    CALL LCD_Char
    
    ;ENVÍO DE 6TO DATO A IMPRIMIR
    MOVLW 0x0005
    CALL LCD_Char
    
    MOVLW 0x008
    CALL LCD_GoTo
    MOVLW 'R'
    CALL LCD_Char
    MOVLW 'A'
    CALL LCD_Char
    MOVLW 'W'
    CALL LCD_Char
    MOVLW 'R'
    CALL LCD_Char
    CALL Delay1_25s
    
    MOVLW 0x008
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    CALL Delay1_25s
    
    MOVLW 0x008
    CALL LCD_GoTo
    MOVLW 'R'
    CALL LCD_Char
    MOVLW 'A'
    CALL LCD_Char
    MOVLW 'W'
    CALL LCD_Char
    MOVLW 'R'
    CALL LCD_Char
    CALL Delay5s
    
    MOVLW 0x008
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    CALL Delay1_25s
    
    ;BORRAR CASILLAS DINO
    MOVLW 0x005
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW 0x0045
    CALL LCD_GoTo
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    MOVLW ' '
    CALL LCD_Char
    
    GOTO BUCLE ; Regresa a la etiqueta BUCLE

; Rutinas de retardos utilizados en el programa
Delay250us:
   BANKSEL Count250us
   MOVLW D'250'
   MOVWF Count250us
D250us:
   DECFSZ Count250us
   GOTO D250us
   RETURN
   
Delay25ms:
   BANKSEL Count25ms
   MOVLW D'100'
   MOVWF Count25ms
D25ms:
   CALL Delay250us
   DECFSZ Count25ms
   GOTO D25ms
   RETURN   
   
Delay1_25s:
   BANKSEL Count1_25s
   MOVLW D'50'
   MOVWF Count1_25s
D1_25s:
   CALL Delay25ms
   DECFSZ Count1_25s
   GOTO D1_25s
   RETURN   
   
Delay5s:
   BANKSEL Count5s
   MOVLW D'4'
   MOVWF Count5s
D5s:
   CALL Delay1_25s
   DECFSZ Count5s
   GOTO D5s
   RETURN   
   
INCLUDE <LCD_lib.inc> ; Se añade la librería de la LCD justo antes del END
END   ; Fin del programa





