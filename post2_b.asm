ORG 100h

start:
mov ax, 0B800h
mov es, ax

mov di, 0

mov byte [es:di], 'H'
mov byte [es:di+1], 1Eh

mov byte [es:di+2], 'O'
mov byte [es:di+3], 2Eh

mov byte [es:di+4], 'L'
mov byte [es:di+5], 3Eh

mov byte [es:di+6], 'A'
mov byte [es:di+7], 4Eh

mov ah, 07h
int 21h

mov ah, 4Ch
int 21h