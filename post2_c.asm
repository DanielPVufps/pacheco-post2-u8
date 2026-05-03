ORG 100h

prompt db "Pulse tecla (ESC para salir): $"

start:
mov ax, cs
mov ds, ax

mov ah, 09h
mov dx, prompt
int 21h

leer:
mov ah, 00h
int 16h

cmp ah, 01h
je salir

mov ah, 02h
mov dl, al
int 21h

jmp leer

salir:
mov ah, 4Ch
int 21h