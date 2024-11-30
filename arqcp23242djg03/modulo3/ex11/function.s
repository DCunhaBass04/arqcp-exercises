.section .text
	.global vec_greater12 # int vec_greater12(int* ptr, int num)

	vec_greater12:
		movq $0, %rax
		movq $0, %rcx
		jmp vec_greater12_loop
	
	vec_greater12_loop:
		cmpl %esi, %ecx 						# see if the array has reached its end
		je exit									# if so, exit the method
		cmpl $12, (%rdi, %rcx, 4)				# see if the current array position
		jg increment_no_of_greater_digits		# return the address of that position
		incq %rcx								# increment %ecx
		jmp vec_greater12_loop					# loop the method
		
	increment_no_of_greater_digits:
		incl %eax
		incl %ecx
		jmp vec_greater12_loop
		
	exit:
		ret	
