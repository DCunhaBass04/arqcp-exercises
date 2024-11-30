.global set_bit

set_bit:
    movq $1, %r8
    movq %rsi, %rcx
    shl %cl, %r8   

    movq (%rdi), %rdx  # Load the value pointed to by rsi into rdx
    andq %r8, %rdx    # Perform bitwise AND operation with mask (assumed to be in rax)
    cmpq $0, %rdx      # Compare the result with 0
    je equal           

    movq $0, %rax
    jmp end

equal:
    movq $1, %rax

    movq (%rdi), %rdx 
    orq %r8, %rdx     
    movq %rdx, (%rdi)
end:
    ret

