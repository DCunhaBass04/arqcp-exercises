.section .text
	.global keep_positives # void keep_positives(int* ptr, int num)

	keep_positives:
		movq $0, %rax
		movq $0, %rcx
		jmp keep_positives_loop
	
	keep_positives_loop:
		cmpl %esi, %ecx 						# see if the array has reached its end
		je exit									# if so, exit the method
		cmpl $0, (%rdi, %rcx, 4)				# see if the current array position
		jl swap_element							# return the address of that position
		incl %ecx								# increment %ecx
		jmp keep_positives_loop					# loop the method
		
	swap_element:
		movl %ecx, (%rdi, %rcx, 4)
		incl %ecx
		jmp keep_positives_loop
		
	exit:
		ret	
