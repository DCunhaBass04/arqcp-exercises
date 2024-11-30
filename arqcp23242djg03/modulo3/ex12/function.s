.section .text
    .global vec_zero

vec_zero:
    movq $0, %rax             # Initialize counter for total processed elements
    movq $0, %rcx             # Initialize counter for modified elements

    cmpq $0, %rsi             # Check if the length of the array is 0
    je exit                   # If 0, jump to exit

    jmp vec_zero_loop         # Jump to the beginning of the loop

vec_zero_loop:
    cmpq %rax, %rsi           # Compare processed elements with the total length
    jle exit                  # If less than or equal, jump to exit

    cmpl $50, (%rdi)          # Compare the value at the current array position with 50
    jl less_or_equal          # If less, jump to less_or_equal

    movl $0, (%rdi)           # Set the value at the current array position to 0
    incq %rcx                 # Increment the counter for modified elements
    addq $4, %rdi             # Move to the next element in the array
    incq %rax                 # Increment the counter for processed elements

    jmp vec_zero_loop         # Jump back to the loop

less_or_equal:
    addq $4, %rdi             # Move to the next element in the array
    incq %rax                 # Increment the counter for processed elements
    jmp vec_zero_loop         # Jump back to the loop

exit:
    movq %rcx, %rax           # Set the return value to the counter for modified elements
    ret                        # Return from the function
