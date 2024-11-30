.section .text
	.global vec_sum # int vec_sum(int* ptr, short num)
	.global vec_avg # int vec_avg(int* ptr, short num)
	
	vec_sum:
		movq $0, %rax
		movq $0, %rcx
	
	vec_sum_loop:
		cmpw %si, %cx					# see if i = n
		je exit
		addl (%rdi, %rcx, 4), %eax		# add *(ptr+i) to the sum (stored in %eax)
		incw %cx						# increment i
		jmp vec_sum_loop


	vec_avg:
		movq $0, %rax 					# clean the %rax register
		cmpq $0, %rsi					# see if n is 0
		je exit							# if it is, end the process to prevent a arithmetic exception
		movq $0, %rcx
		call vec_sum					# call vec_sum, %rax will have the value returned by that method
		cdq								# extend %eax to %edx : %eax
		idivw %si
		
	exit:
		ret	
