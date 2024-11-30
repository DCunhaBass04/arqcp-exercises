.global join_bits

join_bits:
    cmpq $63, %rdx
    je equal

    movq %rdx, %rcx
    addq $1, %rcx
    shl %rcx, %rsi

    jmp continue
    

equal:
    movq $0, %rsi


continue:
    movq $63, %rcx
    subq %rdx, %rcx
    shr %cl, %rdi

    movq %rdi, %rax
    or %rsi, %rax

    
end:
    ret

