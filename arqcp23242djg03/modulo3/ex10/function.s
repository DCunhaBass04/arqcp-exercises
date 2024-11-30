.section .text
	.global str_cat 

	# str_cat function to concatenate two strings

str_cat:
	# Initialize registers
	movq $0, %rax   # Clear RAX register for temporary storage
	movq $0, %rcx   # Clear RCX register for loop counter
	movq $0, %r8    # Clear R8 register for destination index

	# Check if the first string is empty
	cmpq $0, %rdi
	jne copy_first   # If not, jump to the copy_first label

copy_first:
	# Copy characters from the first string to the destination
	movb (%rdi, %rcx, 1), %al   # Load a byte from the source string to AL
	cmpb $0, %al   # Compare the byte with null terminator
	je end_copy_first   # If null terminator is reached, jump to end_copy_first

	movb %al, (%rdx, %r8, 1)   # Store the byte in the destination string

	inc %rcx   # Increment source index
	inc %r8    # Increment destination index
	jmp copy_first   # Repeat the copy process

end_copy_first:
	# Reset loop counter for the second string copy
	movq $0, %rcx
	jmp copy_second   # Jump to the copy_second label

copy_second:
	# Copy characters from the second string to the destination
	movb (%rsi, %rcx, 1), %al   # Load a byte from the source string to AL
	cmpb $0, %al   # Compare the byte with null terminator
	je exit   # If null terminator is reached, jump to exit

	movb %al, (%rdx, %r8, 1)   # Store the byte in the destination string

	inc %rcx   # Increment source index
	inc %r8    # Increment destination index
	jmp copy_second   # Repeat the copy process

exit:
	# Add null terminator to the concatenated string
	movb $0, (%rdx, %r8, 1)
	ret   # Return from the function
