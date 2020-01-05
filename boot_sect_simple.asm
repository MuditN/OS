mov ah,0x0e ;tty mode
mov al, 'M'
int 0x10
mov al, 'U'
int 0x10
mov al, 'D'
int 0x10
mov al, 'I'
int 0x10
mov al, 'T'
int 0x10
mov al, ' '
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10

jmp $ ; jum to current address = infinite loop

; Padding and Magic Number
times 510-($-$$) db 0
dw 0xaa55