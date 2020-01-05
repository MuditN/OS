mov ah, 0eh

mov bp, 8000h
mov sp, bp

push    'A'
push    'B'
push    'C'

mov al, [7ffeh]
int 10h

mov al, [8000h]
int 10h

pop bx
mov al, bl
int 10h

pop bx
mov al, blts to the top of the processor's stack
int 10h

pop bx
mov al, bl
int 10h

mov al, [8000h]
int 10h

jmp $
times 510-($-$$) db 0
dw 0xaa55