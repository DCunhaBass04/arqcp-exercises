.global count_bits_zero
count_bits_zero:
    movl $64, %ecx             # ECX is our counter, set to 64 for a long
    xorl %eax, %eax            # EAX will hold the number of zero bits
loop:
    movq %rdi, %rdx            # Copy the original number to another register
    andl $1, %edx              # AND the least significant bit with 1
    jnz continue               # If the result is not zero, continue
    addl $1, %eax              # If the result is zero, increment our count
continue:
    shrq $1, %rdi              # Shift the bits of the number to the right
    loop loop                  # Decrement ECX and continue the loop if ECX != 0
    ret                        # Return, the result is in EAX
    