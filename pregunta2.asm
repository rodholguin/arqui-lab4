;===============================================================================
;                             PROGRAMA PRINCIPAL
;===============================================================================
                          
                          

call imprimir_mensaje1                        
call leer_numero    ; Lectura de numero mediante subrutina, el numero se almacena en AX  

push ax             ; Almacena el dato leido en una pila

call imprimir_mensaje2 
call leer_numero    ; Lectura de numero mediante subrutina, el numero se almacena en AX 

push ax             ; Almacena el dato leido en una pila


pop cx              ; Cargar en cx la posicion horizontal 
pop dx              ; Cargar en dx la posicion vertical


jmp dibujar                                        


;===============================================================================
;                        INICIO DE SECUENCIA DE DIBUJO
;===============================================================================
         
dibujar:            
         
MOV AH, 0x00
MOV AL, 0x13
INT 0x10

MOV BX, 40
MOV AH, 0ch
MOV AL, 00001100b

ADD BX, CX
      

BUCLE:
INC CX
INT 10h
CMP CX, BX
JNG BUCLE
JGE END

END:
     
     
MOV BX, DX
SUB BX, 30


BUCLE2:
CALL INCCOL2
CALL DECROW2

CMP DX, BX

JNG END2
JGE INCREASE2
INCREASE2:
DEC DX
JMP BUCLE2


END2:



MOV BX, DX
SUB BX, 30

BUCLE3:
CALL DECCOL4
CALL DECROW2

CMP DX, BX
JNG END3
JGE INCREASE3
INCREASE3:
DEC DX
JMP BUCLE3

END3:



ADD BX, 30

BUCLE4:
CALL DECCOL4
CALL INCROW2


CMP DX, BX
JGE END4
JNG DECREASE4
DECREASE4:
INC DX
JMP BUCLE4

END4:


ADD BX, 30

BUCLE5:
CALL INCCOL2
CALL INCROW2



CMP DX, BX
JGE END5:
JNG DECREASE5
DECREASE5:
INC DX
JMP BUCLE5

END5:                       ; Se finaliza el programa tras dibujar los 5 lados
dormamu:                    ; Creacion de lazo infinito
jmp dormamu                         



INCCOL2:
INC CX
INT 10h
INC CX
INT 10h
RET

DECROW2:
DEC DX
INT 10h
DEC DX
INT 10h
RET

DECCOL4:
DEC CX
INT 10h
DEC CX
INT 10h
DEC CX
INT 10h
DEC CX
INT 10h
RET

INCROW2:
INC DX
INT 10h
INC DX
INT 10h
RET




;===============================================================================
;                        CODIGO DE IMPRESION DE MENSAJES
;===============================================================================


imprimir_mensaje1:

 	mov al, 1
	mov bh, 0
	mov bl, 1001_1111b
	mov cx, msg1end - offset msg1   ; calculando el tamano del mensaje 
	mov dl, 0
	mov dh, 0
	push cs
	pop es
	mov bp, offset msg1             ; almacenando el mensaje en BP para su impresion
	mov ah, 13h                     ;       (para imprimir toma datos de BP)
	int 10h  
	mov dh, 1                       ; pone el cursor en la linea siguiente
	mov ah, 2
	int 10h
	jmp msg1end
	msg1 db "Ingresa la fila"       ; cargando mensaje de manera estatica
	msg1end:
	ret
	
imprimir_mensaje2:
	mov al, 1
	mov bh, 0
	mov bl, 1001_1111b
	mov cx, msg1end2 - offset msg2  ; calculando el tamano del mensaje
	mov dl, 0
	mov dh, 3
	push cs
	pop es
	mov bp, offset msg2             ; almacenando el mensaje en BP para su impresion
	mov ah, 13h                     ;       (para imprimir toma datos de BP)
	int 10h  
	mov dh, 4                       ; pone el cursor en la linea siguiente
	mov ah, 2
	int 10h
	jmp msg1end2
	msg2 db "Ingresa la columna"    ; cargando mensaje de manera estatica
	msg1end2:
	ret    
	
	

;===============================================================================
;                          CODIGO DE LECTURA DE NUMERO
;===============================================================================        
          
          
leer_numero: 
    mov dx, offset buffer
    mov ah, 0ah
    int 21h
    xor ax, ax
    xor bx, bx
    xor cx, cx
    xor dx, dx
    mov cl, 10
    mov ch, buffer[1]
    jmp convertir_ascii_numero:
    
    buffer db 10,?, 10 dup(' ')   
    
    ; EXPLICACION DE DECLARACION:
    ; reserva de memoria estatica, no aparece en la ejecucion porque sino seria dinamica y se tendria que anadir complejidad en el codigo para liberar memoria
    ; se reservan 10 bytes de la memoria
    ; ? es un byte de inicializacion  para que se pueda almacenar la longitud de la cadena en el primer byte del buffer
    ; 10 dup(' '): se inicializan los caracteres en ' ', 10 dup indica que este valor se duplicara 10 veces                          

    convertir_ascii_numero:
        mov dl, byte [buffer + bx + 2]
        sub dl, '0'
        cmp bx, 0
        je saltarmultiplicacion
            imul cl
        saltarmultiplicacion:
        add ax, dx   
        inc bx
        cmp bl, ch
        je  terminar_conversion

    jmp convertir_ascii_numero

    terminar_conversion:
    ret 

