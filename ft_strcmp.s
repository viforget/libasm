bits 64

segment .text
    global _ft_strcmp

_ft_strcmp :
    mov rax, -1
    push r12
    push r13
    jmp loop

loop:
    inc rax
    movzx r12, BYTE[rdi + rax]
    movzx r13, BYTE[rsi + rax]
    cmp r12, 0
    je exit
    cmp r13, 0
    je exit
    cmp r12, r13
    je loop
    jmp exit


exit:
    mov rax, r12
    sub rax, r13
    pop r13
    pop r12
    ret