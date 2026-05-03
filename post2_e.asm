ORG 100h

section .data
    pA db "Primer operando (0-9): $"
    pB db 0Dh,0Ah,"Segundo operando (0-9): $"
    pOp db 0Dh,0Ah,"Operacion (* o /): $"
    msgR db 0Dh,0Ah,"Resultado: $"
    msgErr db 0Dh,0Ah,"Division por cero.$"
    crlf db 0Dh,0Ah,"$"

section .text
start:

; Leer operando A
    mov ah, 09h
    mov dx, pA
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h        ; ASCII → número
    mov bl, al         ; guardar en BL

; Leer operando B
    mov ah, 09h
    mov dx, pB
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov cl, al         ; guardar en CL

; Leer operador
    mov ah, 09h
    mov dx, pOp
    int 21h

    mov ah, 01h
    int 21h
    mov bh, al         ; guardar operador

; Mostrar mensaje resultado
    mov ah, 09h
    mov dx, msgR
    int 21h

; Verificar operación
    cmp bh, 2Ah        ; '*'
    je multiplicar

    cmp bh, 2Fh        ; '/'
    je dividir

    jmp fin

; MULTIPLICACIÓN
multiplicar:
    mov al, bl
    mul cl             ; AX = AL * CL
    call imprimirAX
    jmp fin

; DIVISIÓN
dividir:
    cmp cl, 0
    je divCero

    xor ah, ah
    mov al, bl
    div cl             ; AL = cociente, AH = residuo

    push ax
    xor ah, ah
    call imprimirAX    ; imprime cociente
    pop ax

    ; (opcional imprimir residuo)
    jmp fin

divCero:
    mov ah, 09h
    mov dx, msgErr
    int 21h

fin:
    mov ah, 09h
    mov dx, crlf
    int 21h

    mov ah, 4Ch
    xor al, al
    int 21h

; -----------------------------
; Subrutina: imprimir AX en decimal
; -----------------------------
imprimirAX:
    mov bx, 10
    xor cx, cx

div_loop:
    xor dx, dx
    div bx
    push dx
    inc cx
    test ax, ax
    jnz div_loop

print_loop:
    pop dx
    add dl, 30h
    mov ah, 02h
    int 21h
    loop print_loop

    ret