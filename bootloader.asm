org 0x7c00
bits 16
mov ah, 0x0e

main:
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x0a
    int 0x10
    mov al, 'N'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 't'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 'x'
    int 0x10
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10
    mov al, '>'
    int 0x10
    mov al, ' '
    int 0x10
    jmp input
input:
    mov ax, 0x41
    int 0x16
    mov ah, 0x0e
    int 0x10
    cmp al, 's'
    je shutdown
    cmp al, '?'
    je helpsec
    cmp al, 'd'
    je pwd
    cmp al, 'r'
    je errmake
    jmp main

helpsec:
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x0a
    int 0x10
    mov al, 'N'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 't'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 'x'
    int 0x10
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10
    mov al, 0x0a
    jmp main

shutdown:
    mov ax, 0x1000
    mov ax, ss
    mov sp, 0xf000
    mov ax, 0x5307
    mov bx, 0x0001
    mov cx, 0x0003
    int 0x15

pwd:
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 'C'
    int 0x10
    mov al, 'O'
    int 0x10
    mov al, 'N'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, ' '
    int 0x10
    mov al, ' '
    int 0x10
    mov al, ' '
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'S'
    int 0x10
    mov al, 'Y'
    int 0x10
    mov al, 'S'
    int 0x10
    mov al, 0x0a
    int 0x10
    jmp main
errmake:
    mov al, 0x0a
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 0x08
    int 0x10
    mov al, 'F'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'h'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 0x0a
    int 0x10
    mov al, '0'
    int 0x10
    mov al, 'x'
    int 0x10
    mov al, '1'
    int 0x10
    mov al, 0x0a
    int 0x10
    jmp main
times 510-($-$$) db 0
dw 0xAA55
