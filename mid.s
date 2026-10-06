section .bss
    input resb 64

section .rodata
    me db "Choisis un nombre : ", 0
    me_len equ $-me

    yes db "Vous avez trouver...", 10, 0
    yes_len equ $-yes

    no db "Cherche encore...", 10, 0
    no_len equ $-no


section .text
    global _start

_start:
    call entry
    movzx rsi, byte [input]
    cmp rsi, '9'
    je _true
    jne _false

_true:
    mov rax, 1
    mov rdi, 1
    mov rsi, yes
    mov rdx, yes_len
    syscall
    jmp _exit

_false:
    mov rax, 1
    mov rdi, 1
    mov rsi, no
    mov rdx, no_len
    syscall
    jmp _start

_exit:
    mov rax, 60
    mov rdi, 0
    syscall

entry:
    mov rax, 0
    mov rdi, 0
    mov rsi, input
    mov rdx, 64
    syscall
    ret
