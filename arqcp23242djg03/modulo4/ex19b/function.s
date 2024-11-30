.section .text
	.global add_byte	# void add_byte(char x, int *vec1, int *vec2);
	
	add_byte:
		movq $0, %rax			# clean %rax
		movq $0, %r8			# clean %r8
		movl (%rsi), %r8d		# give nº of array elements, *ptr1, to %eax
		movl %r8d, (%rdx)		# give the same number to *ptr2
		cmpl $0, %r8d			# see if size is zero
		je exit					# if it is, end the method 
		movq $1, %rcx			# clean %rcx
		shlw $8, %di		
		
		
	add_byte_loop:
		movl (%rsi, %rcx, 4), %eax	# move *(ptr1 + i) to %eax
		addw %di, %ax				# add 'x' to the second byte of %eax
		movl %eax, (%rdx, %rcx, 4)	# move this new value to *(ptr2 + i)
		cmpl %ecx, %r8d				# see if array has reached its last position
		je exit						# if it is, exit the method
		incl %ecx
		jmp add_byte_loop
	
		
	exit:
		ret
