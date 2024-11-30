.section .text
    .global call_decr
    .global decr

decr:
    # prologue
    pushq %rbp             # save base pointer
    movq %rsp, %rbp        # set base pointer
    subq $16, %rsp         # allocate 16 bytes on the stack for local variables.

    movswl (%rdi), %r8d    # load the short value from memory into r8d
    movl %r8d, -8(%rbp)    # store x

    movsbl %sil, %esi       # load char value into esi
    imull $2, %esi          # multiply by 2
    subl %esi, -8(%rbp)     # calculate x - 2*val

    movl -8(%rbp), %edx     # load the result into edx

    movw %dx, (%rdi)       # store the result back to *p1

    # epilogue
    movq %rbp, %rsp         # restore stack pointer
    popq %rbp              # restore base pointer
    ret                     # return to caller

call_decr:
    # prologue
    pushq %rbp             # save base pointer
    movq %rsp, %rbp        # set base pointer
    subq $16, %rsp         # allocate 16 bytes on the stack for local variables.

    movw %di, %dx          # load the short value into dx
    addw $3, %dx           # calculate w + 3
    movw %dx, -8(%rbp)     # store x1

    leaq -8(%rbp), %rdi    # set first argument to &x1
    movb $0x3C, %sil       # set second argument to 0x3C

    call decr               # call decr

    movswl -8(%rbp), %eax  # load x1
    movl %eax, -16(%rbp)   # store x1

    movl -16(%rbp), %r8d   # load x2

    addl %r8d, %eax        # calculate x1 + x2

    # epilogue
    movq %rbp, %rsp         # restore stack pointer
    popq %rbp              # restore base pointer
    ret                     # return
    
