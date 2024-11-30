.section .text
	.global encrypt 

	encrypt:
		# Initialize counters
		movq $0, %rcx   # Counter for loop
		movq $0, %rax   # Counter for characters changed

		encrypt_loop:
			# Check if the current character is null (end of string)
			cmpb $0, (%rdi, %rcx, 1)
			je exit

			# Check if the current character is 'a'
			cmpb $'a', (%rdi, %rcx, 1)
			je  skip_change
		
			# Check if the current character is a space ' '
			cmpb $' ', (%rdi, %rcx, 1)
			je  skip_change

			# Increment the value of the current character by 1
			addb $1, (%rdi, %rcx, 1)
			# Increment counters
			inc %rcx
			inc %rax
			# Jump back to the beginning of the loop
			jmp encrypt_loop
		
		skip_change:
			# If the character is 'a' or a space, just skip to the next character
			inc %rcx
			# Jump back to the beginning of the loop
			jmp encrypt_loop
		
		exit:
			# Return from the function
			ret
