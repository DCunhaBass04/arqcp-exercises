.section .text
    .global mixed_sum
    # a in %rdi, b in %rsi, c in %rdx

mixed_sum:

    # save registers
    pushq %rdi
    pushq %rsi
    pushq %rdx
    call join_bits
    # restore registers
    popq %rdx
    popq %rdi # pops done wrongly on purpose so next first arg is b and second arg is a
    popq %rsi
    

    # result in 
    movq %rax, %rcx

    # save previous result
    pushq %rcx
    call join_bits
    # restore previous result
    popq %rcx

    addq %rcx, %rax # add previous result to current result
    # %rax = %rax + %rcx (mixed sum)
    ret
