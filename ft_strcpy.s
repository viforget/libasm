bits 64

segment .text
    global _ft_strcpy

_ft_strcpy :
    mov rax, 0
    jmp loop

loop:
    mov dl, BYTE[rsi + rax]
    mov BYTE[rdi + rax], dl
    cmp dl, 0
    je exit
    inc rax
    jmp loop

exit:
    mov rax, rdi
    ret