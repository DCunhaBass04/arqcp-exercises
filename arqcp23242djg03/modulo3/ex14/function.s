.section .text
    .global exists
    .global vec_diff

exists:
    movq $0, %r8             # Initialize counter for matching elements
    movq $0, %rcx            # Initialize loop index
    cmpl $0, %esi            # Check if the length of the array is 0
    je exists_end             # If 0, jump to exists_end

exists_loop:
    movl (%rdi, %rcx, 4), %eax  # Load the value at address (rdi + rcx * 4) into eax

    cmpl %edx, %eax          # Compare the loaded value with the target value
    je exists_test           # If equal, jump to exists_test

    incl %ecx                # Increment loop index
    cmpl %ecx, %esi          # Compare loop index with array length
    je exists_end            # If equal, jump to exists_end

    jmp exists_loop          # Jump back to exists_loop

exists_test:
    addl $1, %r8d            # Increment the counter for matching elements
    incl %ecx                # Increment loop index
    cmpl %ecx, %esi          # Compare loop index with array length
    je exists_end            # If equal, jump to exists_end

    jmp exists_loop          # Jump back to exists_loop

exists_end:
    cmpl $2, %r8d            # Compare the counter for matching elements with 2
    jge duplicate            # If greater than or equal to 2, jump to duplicate
    movl $0, %eax            # Set return value to 0
    ret                      # Return from the function

duplicate:
    movl $1, %eax            # Set return value to 1
    ret                      # Return from the function


vec_diff:
    movq $0, %rcx            # Initialize loop index
    movl $0, %r9d            # Initialize counter for non-duplicate elements
    movq $0, %rdx            # Initialize target value to compare

    cmpl $0, %esi            # Check if the length of the array is 0
    je end                    # If 0, jump to end

vec_diff_loop:
    cmpl %esi, %ecx          # Compare loop index with array length
    je end                    # If equal, jump to end

    movl (%rdi, %rcx, 4), %edx  # Load the value at address (rdi + rcx * 4) into edx
    pushq %rcx               # Save the loop index on the stack
    call exists              # Call the exists function to check for duplicates
    popq %rcx                # Restore the loop index from the stack

    cmpl $0, %eax            # Compare the result from exists function with 0
    je not_duplicate         # If 0, jump to not_duplicate

    incl %ecx                # Increment loop index
    jmp vec_diff_loop        # Jump back to vec_diff_loop

not_duplicate:
    incl %r9d                # Increment counter for non-duplicate elements
    incl %ecx                # Increment loop index
    jmp vec_diff_loop        # Jump back to vec_diff_loop

end:
    movl %r9d, %eax          # Set return value to the counter for non-duplicate elements
    ret                      # Return from the function
