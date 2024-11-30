.global set_2bits

set_2bits:
    movq $1, %r8
    movq %rsi, %rcx
    shl %cl, %r8

    movq $1, %r9
    movq %rsi, %rcx
    movq $63, %rax
    subq %rcx, %rax
    movq %rax, %rcx
    shl %cl, %r9   

    movq (%rdi), %rdx  # Load the value pointed to by rsi into rdx
    andq %r8, %rdx    # Perform bitwise AND operation with mask (assumed to be in rax)
    cmpq $0, %rdx      # Compare the result with 0
    je equal           

    jmp another

equal:
    movq (%rdi), %rdx 
    orq %r8, %rdx     
    movq %rdx, (%rdi)

    jmp another


another:
    movq (%rdi), %rdx  # Load the value pointed to by rsi into rdx
    andq %r9, %rdx    # Perform bitwise AND operation with mask (assumed to be in rax)
    cmpq $0, %rdx      # Compare the result with 0
    je equal2

    jmp end 


equal2:
    movq (%rdi), %rdx 
    orq %r9, %rdx     
    movq %rdx, (%rdi)


end:
    ret

