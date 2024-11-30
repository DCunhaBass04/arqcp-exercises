.global changes
.global changes_vec
changes:
    movzbl 3(%rdi), %eax     # Load the fourth byte into eax
    cmp $15, %eax            # Compare with 15
    jbe .Lend                # If less than or equal to 15, jump to end
    movzbl 2(%rdi), %eax     # Load the third byte into eax
    not %eax                 # Invert the bits
    mov %al, 2(%rdi)         # Store the result back into the third byte
.Lend:
    ret                      # Return from function

changes_vec:
    mov %rdi, %r8            # Save the original pointer
    mov %rsi, %r9            # Save the original count
    jmp .Lcheck              # Jump to the loop condition check

.Lloop:
    mov %r8, %rdi            # Move the current element pointer to rdi
    call changes             # Call the changes function
    add $4, %r8              # Move to the next element
    dec %r9                  # Decrease the count

.Lcheck:
    cmp $0, %r9              # Check if there are more elements
    jne .Lloop               # If there are, jump back to the start of the loop

    ret                      # Return from function