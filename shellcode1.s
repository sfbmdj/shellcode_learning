.intel_syntax noprefix
.text 
.globl start 

# Program to print out hello 
start:  
    mov rcx, 0x004f4c4c4548     # Setting up to push hello onto stack in reverse order 
    push rcx
    mov rax, 1                  # Setting rax to 1 for write syscall 
    mov rdi, 1                  # Setting rdi to fd to STDOUT (1)
    mov rsi, rsp                # stack point pointing to string to print 
    mov rdx, 5                  # length of string to print 
    syscall 
