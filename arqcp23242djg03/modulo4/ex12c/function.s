.global count_bits_zero
.global vec_count_bits_zero

count_bits_zero:
    push %rcx                  # Save the value of ECX
    movq $32, %rcx             # ECX is our counter, set to 32 for a 32-bit number
loop:
    movq %rsi, %rdx            # Copy the original number to another register
    andq $1, %rdx              # AND the least significant bit with 1
    jnz continue               # If the result is not zero, continue
    addq $1, %rax              # If the result is zero, increment our count
continue:
    shrq $1, %rsi              # Shift the bits of the number to the right
    loop loop                  # Decrement ECX and continue the loop if ECX != 0
    pop %rcx                   # Restore the value of ECX
    ret                        # Return, the result is in EAX


vec_count_bits_zero:
    cmpq $0, %rdi
    je exit

    movq $0, %rax
    movq $0, %rcx 
    movq $0, %r8

vec_loop:
    cmpq %rsi, %r8
    je exit
    
    push %rsi
    movslq (%rdi, %r8, 4) , %rsi
    call count_bits_zero
    pop %rsi

    addq %rax, %rcx            # Add the count of zero bits to the total count
    movq $0, %rax            # EAX will hold the number of zero bits
    incq %r8

    jmp vec_loop

exit:
    movq %rcx, %rax            # Move the total count to EAX before returning
    ret
