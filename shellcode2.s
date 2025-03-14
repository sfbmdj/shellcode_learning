.intel_syntax noprefix
.text 
.globl start 

# Program to print out hello 
start:  
    mov rcx, 0x2020204f4c4c4548     # Setting up to push hello onto stack in reverse order 
    push rcx
    xor rax, rax                # zeroing out rax 
    mov al, 1                   # Setting rax to 1 for write syscall 
    mov rdi, rax                # Setting rdi to fd to STDOUT (1)
    mov rsi, rsp                # stack point pointing to string to print 
    xor rdx, rdx                # zeroing out rdx 
    mov dl, 5                  # length of string to print 
    syscall 
    
