.div:
 cmp cl, 0          ; verificar divisor = 0
 je .divCero

 xor ah, ah         ; limpiar AH → AX listo para división
 mov al, bl         ; AL = operando A

 div cl             ; AL = cociente, AH = residuo

 push ax            ; guardar residuo

 xor ah, ah
 call imprimirAX    ; imprimir cociente

 pop ax
 mov al, ah         ; recuperar residuo en AL
 xor ah, ah
 ; (opcional: aquí podrías imprimir el residuo)

 jmp .fin

.divCero:
 mov ah, 09h
 mov dx, msgErr
 int 21h