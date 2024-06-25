section .text
    global ft_strcpy


ft_strcpy:
    xor rcx,rcx

strcpy_loop:
    cmp byte [rsi+rcx],0
    je strcpy_end
    mov rax,[rsi+rcx]
    mov [rdi+rcx],rax
    inc rcx
    jmp strcpy_loop



strcpy_end:
    mov rax,rdi
    ret