; implement strlen function. 
; it takes const char pointer to the first charachter of string
; and returned size_t the size of the passed argument
; ft_strlen.asm

section .text
    global ft_strlen

ft_strlen:
    xor rcx,rcx

strlen_loop:
    cmp byte [rdi+rcx],0
    je end_strlen
    inc rcx
    jmp strlen_loop

end_strlen:
    mov rax,rcx
    ret