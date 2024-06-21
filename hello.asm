section .data
    msg db "hello wolrd",0

section .text
    global _start

_start:
    mov eax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 13
    syscall

    mov eax, 60
    mov rdi, 0
    syscall