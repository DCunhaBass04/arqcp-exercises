.section .text
	.global distance	# int distance(char *a, char *b);
	
	array_size:
		movq $0, %rax		# clean %rax
		movq $0, %rcx		# clean %rcx
		
	array_size_loop:
		movb (%rdi, %rax, 1), %cl		# move *(ptr + i) to %cl
		cmpb $0, %cl					# see if array has reached its end
		je exit							# if so, exit the method
		incl %eax						# otherwise, increment %eax...
		jmp array_size_loop				# ...and go back to the beginning of the loop
	
	distance:
		call array_size					# get the size of the array "a"
		movl %eax, %r8d					# move the size to %r8d
		pushq %rdi						# store array "a"
		movq %rsi, %rdi					# place the array "b" on the first argument's place
		call array_size					# get the size of the array "b"
		popq %rdi						# restore array "a"
		cmpl %r8d, %eax					# compare sizeA to sizeB
		jne exit_early					# if they're not equal, return -1
		movq $0, %rax					# clean %rax
		movq $0, %rcx					# clean %rcx
		
	distance_loop:
		cmpl %ecx, %r8d				# see if array has reached its end
		je exit						# if so, exit the method
		movb (%rdi, %rcx, 1), %r9b	# move *(a + i) to %r9b
		cmpb (%rsi, %rcx, 1), %r9b	# compare *(b + i) to *(a + i)
		jne increment_difference
		incl %ecx					# increment the i value
		jmp distance_loop
		
	increment_difference:
		incl %eax					# increment the return value
		incl %ecx					# increment the i value
		jmp distance_loop
		
	exit_early:
		movq $-1, %rax				# move -1 to %rax
		
	exit:
		ret
