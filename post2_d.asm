ORG 100h

start:
mov ax, 0B800h
mov es, ax

mov di, 0

leer:
mov ah, 00h
int 16h

cmp al, 13
je salir

mov [es:di], al
mov byte [es:di+1], 0Fh

add di, 2
jmp leer

salir:
mov ah, 4Ch
int 21h