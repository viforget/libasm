bits 64
extern ___error

segment .text
    global _ft_write

_ft_write :
    mov rax, 0x2000004
    syscall
    cmp rax, 0
    jl error
    ret

error :
    push rbx
    mov rbx, rax
    call ___error
    neg rbx
    mov [rax], rbx
    mov rax, -1
    pop rbx
    ret