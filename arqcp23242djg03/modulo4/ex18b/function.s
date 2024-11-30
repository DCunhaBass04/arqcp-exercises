.global changes
changes:
    movzbl 3(%rdi), %eax     # Load the fourth byte into eax
    cmp $15, %eax            # Compare with 15
    jbe .Lend                # If less than or equal to 15, jump to end
    movzbl 2(%rdi), %eax     # Load the third byte into eax
    not %eax                 # Invert the bits
    mov %al, 2(%rdi)         # Store the result back into the third byte
.Lend:
    ret                      # Return from function
    