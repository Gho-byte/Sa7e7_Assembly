section .text
global GetNumber

GetNumber:
    mov rax, 2000
    shl rax, 32
    add rax, 500
    ret