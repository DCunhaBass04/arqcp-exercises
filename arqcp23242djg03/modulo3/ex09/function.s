.section .text
	.global vec_search # int* vec_search(int* ptr, int num, int x)

	vec_search:
		movq $0, %rax
		movq $0, %rcx
		jmp vec_search_loop
	
	vec_search_loop:
		cmpl %esi, %ecx 		# see if the array has reached its end
		je exit					# if so, exit the method
		cmpl %edx, (%rdi)		# see if the current array position
		je return_address		# return the address of that position
		addq $4, %rdi			# go to the next position of the array
		incl %ecx				# increment %ecx
		jmp vec_search_loop		# loop the method
		
	return_address:
		movq %rdi, %rax
		
	exit:
		ret	
