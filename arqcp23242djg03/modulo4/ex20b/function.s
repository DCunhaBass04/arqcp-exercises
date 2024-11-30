.global sum_multiples_x
sum_multiples_x:
    movl %esi, %eax
    shrl $16, %eax
    andl $0xff, %eax

    movl %eax, %ecx
    movq $0, %r8
    movl $0, %eax
    movq $0, %rdx


loop:
    movb (%rdi, %r8, 1), %al
    cbw
    cmpb $0, %al
    je end

    push %rax
    idivb %cl
    cmpb $0, %ah
    jne not_div

    pop %rax
    addq %rax, %rdx

    incq %r8
    jmp loop


not_div:
    pop %rax
    incq %r8
    jmp loop


end:
    movq %rdx, %rax
    ret                    
      