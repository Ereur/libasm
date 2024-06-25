section .text
    global ft_strcpy


ft_strcpy:
    xor rcx,rcx

strcpy_loop:
    cmp byte [rdi+rcx],0
    je strcpy_end
    mov rax,[rdi+rcx]
    mov rsi,rax
    inc rcx
    jmp strcpy_loop

strcpy_end:
    mov rax,rdi
    ret