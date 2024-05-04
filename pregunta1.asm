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


call dibujar        ; Se realiza el dibujo dada una posicion
 

dormamu:            ; Se utiliza un lazo infinito para darle fin al programa
jmp dormamu



;===============================================================================
;                           INICIO DE CODIGO DE DIBUJO         
;===============================================================================


dibujar:
                                
    mov ah, 0
    mov al, 13h
    int 10h
    
    mov ah, 0ch
    mov al, 00001100b

    mov bl, 30
    mov bh, 'r'
    call draw_hor_line

    mov bl, 30
    mov bh, 'd'
    call draw_ver_line

    mov bl, 30
    mov bh, 'l'
    call draw_hor_line

    mov bl, 30
    mov bh, 'u'
    call draw_ver_line     
    
    
    
;                          FIN DE LA SUBRUTINA DE DIBUJO   
;--------------------------------------------------------------------------------
    
    ret                      
                         
                         
                         
;                             FUNCIONES AUXILIARES
;--------------------------------------------------------------------------------   
;RESUMEN: Se utilizan saltos para lograr iterar el dibujo de pixeles para cada lado
    
    draw_hor_line:
        int 10h
        cmp bh, 'r'
        je  go_right
        cmp bh, 'l'
        je  go_left
        jp  draw_hor_line_end
    
    go_left:
        dec cx
        jmp keep_hor_line
    
    go_right:
        inc cx
    
    keep_hor_line:
        dec bl
        jz  draw_hor_line_end
        jmp draw_hor_line
        draw_hor_line_end:
        ret        
    
    draw_ver_line:
        int 10h
        cmp bh, 'd'
        je  go_down
        cmp bh, 'u'
        je  go_up
        jp  draw_ver_line_end
    
    go_down:
        inc dx
        jmp keep_ver_line
    
    go_up:
        dec dx
    
    keep_ver_line:
        dec bl
        jz  draw_ver_line_end
        jmp draw_ver_line
        draw_ver_line_end:
        ret
        
        
        
        
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

