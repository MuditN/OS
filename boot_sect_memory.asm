mov ah, 0eh

mov al, '1'
int 10h
mov al, the_secret
int 10h

mov al, '2'
int 10h
mov al, [the_secret]
int 10h

mov al, '3'
int 10h
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 10h

mov al, '4'
int 10h
mov al, [0x7c2d]
int 10h

jmp $

the_secret:
    db "X"

times 510-($-$$) db 0
dw 0xaa55