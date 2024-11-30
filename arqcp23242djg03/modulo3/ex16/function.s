.section .text
    .global swap

swap:
    movl %edx, %eax         # Copy the value of edx to eax (store the length of elements to swap)

    cmpl $0, %eax           # Compare the length with 0
    je end                   # If the length is 0, jump to the 'end' label

    jmp switch               # Jump to the 'switch' label to start swapping elements

switch:
    movb (%rdi), %cl        # Load the byte at the address in rdi into cl (element from the first array)
    movb (%rsi), %dl        # Load the byte at the address in rsi into dl (element from the second array)

    movb %dl, (%rdi)        # Store the value in dl at the address in rdi (swap elements in the first array)
    movb %cl, (%rsi)        # Store the value in cl at the address in rsi (swap elements in the second array)

    incq %rdi               # Increment the address in rdi (move to the next element in the first array)
    incq %rsi               # Increment the address in rsi (move to the next element in the second array)

    decl %eax               # Decrement the length of elements to swap
    cmpl $0, %eax           # Compare the length with 0
    jnz switch              # If the length is not 0, jump back to the 'switch' label to continue swapping

    jmp end                 # If the length is 0, jump to the 'end' label

end:
    ret                     # Return from the function
