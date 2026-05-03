ORG 100h

start:
mov ax, 0B800h
mov es, ax

mov ax, 1F20h
mov cx, 2000
xor di, di
rep stosw

mov ah, 07h
int 21h

mov ah, 4Ch
int 21h