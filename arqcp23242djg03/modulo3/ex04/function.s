.section .text
	.global vec_add_three

    # Function: vec_add_three
vec_add_three:
		movq $0, %rax     # Initialize loop counter to 0

		# Check if the length of the array (rsi) is 0, and if so, jump to the exit label
		cmpq $0, %rsi 
		je exit
							
		# Jump to the loop
		jmp vec_add_three_loop


    # Loop: vec_add_three_loop
vec_add_three_loop:
		addw $3, (%rdi, %rax, 2)   # Add 3 to the value at the current index in the array

		incq %rax                  # Increment the loop counter
		
		cmpq %rsi, %rax            # Compare the loop counter with the array length
		jl vec_add_three_loop      # Jump back to the loop if counter < array length
		

    # Exit label
	exit:
		ret                         # Return from the function
