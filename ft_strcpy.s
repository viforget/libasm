bits 64

segment .text
    global _ft_strcpy

_ft_strcpy :
    ;push dl
    mov rax, 0

loop:
    mov dl, BYTE[rsi + rax]
    mov BYTE[rdi + rax], dl
    cmp dl, 0
    je exit
    inc rax
    jmp loop

exit:
    mov rax, rdi
    ;pop dl
    ret