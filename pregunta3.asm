
;=====================================================================================
;                               PROGRAMA PRINCIPAL
;=====================================================================================


call imprimir_mensaje1             ; subrutinas de impresion y lectura      
call leer_numero                   ; al final del programa
push ax


call imprimir_mensaje2 
call leer_numero

push ax
pop cx         ; Cargar la posicion horizontal en cx
pop dx         ; Cargar la posicion vertical en dx


jmp comenzar_programa



;=====================================================================================
;                        APERTURA DE LA INTERRUPCION DE GRAFICO
;===================================================================================== 
    
comenzar_programa:

    mov ah, 0
    mov al, 13h
    int 10h
    push cx                 ;almacenando las posiciones leidas
    push dx
           
    
;=====================================================================================
;                         LISTA DE BLOQUES A DIBUJAR: PIXEL ART
;=====================================================================================

;DESCRIPCION: aca se muestran cada una de las instrucciones de dibujo realizadas    
;RESUMEN: en base a una posicion de inicio (ingresada por usuario), se realizara un 
;         dibujo codificado algoritmicamente (incrementando o decrementando la posicion
;         de cada nuevo bloque)    
    
    
    
;                               COLA DE CHARMANDER
;-------------------------------------------------------------------------------------    
    
    pop dx               ;fila
    pop cx               ;columna
    add dx, 8            ;modificando posicion vertical
    add cx, 12           ;modificando posicion horizontal
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    ;color del bloque    
    mov bl, 3            ;tamano del bloque
    call pintabloque     ;funcion para colocar el bloque
    
    pop dx               ;fila
    pop cx               ;columna
    add dx, 4            ;modificando posicion vertical
    sub cx, 4            ;modificando posicion horizontal
    push cx              ;almacenando pos.hor
    push dx              ;almacenando pos.ver
    mov ah, 0ch
    mov al, 000001000b   ;color del bloque 
    mov bl, 3            ;tamano del bloque
    call pintabloque 
    
    pop dx               
    pop cx               
    ;add dx, 0
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 0
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 0
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 0
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;sub cx, 6
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 8
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 12
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque    

    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 12
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque   
    
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;sub cx, 6
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00000100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 3
    call pintabloque
                     
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
                         
    pop dx               
    pop cx               
    ;add dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
       
    
    pop dx               
    pop cx               
    add dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;sub cx, 6
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 6
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;sub dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 6
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    ;sub dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;sub dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    ;sub dx, 6
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque 

    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    sub cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
                                              ;por algun lugar de aca termino la cola
    pop dx               
    pop cx               
    ;add dx, 6
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque       
                    
    pop dx               
    pop cx               
    add dx, 24
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
      
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 7
    call pintabloque
        
    pop dx               
    pop cx               
    add dx, 8
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 8
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 8
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001111b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 28
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 8
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 11
    call pintabloque        
                     
    pop dx               
    pop cx               
    add dx, 12
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001111b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 8
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 20
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 24
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 8
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 12
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    sub dx, 8
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001110b    
    mov bl, 7
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 12
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 28
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 15
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque

    pop dx               
    pop cx               
    ;sub dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque 
                    
                    
    pop dx               
    pop cx               
    add dx, 20
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001111b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 12
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 12
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001111b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 16
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 15
    call pintabloque
    
    
    pop dx               
    pop cx               
    sub dx, 20
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;sub dx, 20
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 20
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    ;add dx, 20
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque 
    
    pop dx               
    pop cx               
    sub dx, 20
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 8
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque

    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001100b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    sub dx, 4
    ;add cx, 4
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
    pop dx               
    pop cx               
    add dx, 20
    sub cx, 16
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque  
    
    pop dx               
    pop cx               
    add dx, 12
    ;sub cx, 16
    push cx
    push dx   
    mov ah, 0ch
    mov al, 00001000b    
    mov bl, 3
    call pintabloque
    
                                     
;=====================================================================================
;                         INTERRUPCION PARA TERMINAR PROGRAMA
;=====================================================================================

    dormamu:
    jmp dormamu
    
    
;=====================================================================================
;                               FUNCION pintabloque:
;===================================================================================== 

;DESCRIPCION: pinta un bloque, dados un color, tamano y posicion
;RESUMEN: pinta cuadrados hacia dentro recursivamente, mandando un lado menor cada vez
;         hasta llegar a lado 1 o lado 0


pintabloque:
    
    push cx
    push dx
    push bx
     
    mov bh, 'r'
    call draw_hor_line

    pop bx
    push bx
    mov bh, 'd'
    call draw_ver_line

    pop bx
    push bx
    mov bh, 'l'
    call draw_hor_line
    
    pop bx
    push bx
    mov bh, 'u'
    call draw_ver_line     

    ; pasa a la siguiente iteracion o termina
    pop bx
    pop dx
    pop cx
    cmp bx, 1
    je terminar_pintar
    cmp bx, 0
    je terminar_pintar
    sub bl, 2    
    inc dx
    inc cx
    jmp pintabloque
    
    terminar_pintar:
    ret ;sale de pintabloque
    
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
