; implement strlen function. 
; it takes const char pointer to the first charachter of string
; and returned size_t the size of the passed argument

section .data
    msg db '123456789',0

section .text
    global _start

_start:
    mov rdi,msg
    call strlen
    call strlen_loop
    call print
    call exit
    
strlen:
    xor rcx,rcx

strlen_loop:
    cmp byte [rdi+rcx],0
    je end_strlen
    inc rcx
    jmp strlen_loop

end_strlen:
    mov rax,rcx
    ret

print:
    mov rsi,rax
    mov eax,1
    mov rdi,1
    mov rdx,1
    syscall

exit:
    mov eax, 60
    mov edi, 0
    syscall