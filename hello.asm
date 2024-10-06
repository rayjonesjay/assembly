section .data
    message db 'Hello, World!', 0xA
    length_of_message equ $ - message

section .text
    global _start


_start: 
    mov rax, 1  
    mov rdi, 1  
    mov rsi, message 
    mov rdx, length_of_message
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
