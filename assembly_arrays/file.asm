section .bss
    buffer resb 100

section .data
    msg db 'mohamed | assembly', 0

section .text
    global _start

_start:
    ; read from msg
    xor rax, rax ; sys_read syscall number
    xor rdi, rdi ; in linux, stdin = 0 | stdout = 1 | stderror = 2
    mov rsi, buffer ; message address
    mov rdx, 100 ; message size
    syscall
    
    ; verify that the read was successful
    test rax, rax
    jle .exit

    ; write msg to stdout
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 19
    syscall

.exit:
    ; exit the program
    xor rdi, rdi ; exit code 0 => mean success processing
    mov rax, 60 ; sys_exmohamed aitit
    syscall