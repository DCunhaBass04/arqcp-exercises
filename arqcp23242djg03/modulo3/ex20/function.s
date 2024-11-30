.section .text
.global count_max 

count_max:
    movq %rsi, %rdx     # Copy the second parameter (rsi) to register rdx
    subq $2, %rdx       # Subtract 2 from rdx

    movq $0, %rcx       # Initialize rcx to 0 (loop index)
    movl $0, %eax       # Initialize eax to 0 (counter for conditions)

    cmpq $2, %rsi       # Compare rsi with 2
    jle end             # Jump to 'end' label if rsi is less than or equal to 2

    loop_start:

        cmpq %rdx, %rcx  # Compare rdx and rcx
        jg end            # Jump to 'end' label if rcx is greater than rdx

        movl (%rdi, %rcx, 4), %r8d   # Load the value at address (rdi + rcx * 4) into r8d
        movl 4(%rdi, %rcx, 4), %r9d  # Load the value at address (rdi + rcx * 4 + 4) into r9d
        movl 8(%rdi, %rcx, 4), %r10d # Load the value at address (rdi + rcx * 4 + 8) into r10d

        cmpq %r8, %r9      # Compare r8 with r9
        jl first_condition # Jump to 'first_condition' if r8 is less than r9

        incq %rcx          # Increment rcx (index)
        jmp loop_start     # Jump back to 'loop_start'

    first_condition:
        cmpq %r9, %r10     # Compare r9 with r10
        jg second_condition # Jump to 'second_condition' if r9 is greater than r10
        incq %rcx           # Increment rcx
        jmp loop_start      # Jump back to 'loop_start'

    second_condition:
        addl $1, %eax       # Increment eax by 1
        incq %rcx           # Increment rcx
        jmp loop_start      # Jump back to 'loop_start'

end:
    ret                   # Return from the function
