.section .text
	.global count_even # int count_even(short *vec, int n)
	
	count_even:
		movq $0, %rax				# clean %rax
		movq $0, %rcx				# clean %rcx
		movq $0, %r9				# clean %rdx
		movq $0, %r8
		cmpl $0, %esi				# see if array is empty
		je exit						# if it is, exit
	
	count_loop:
		cmpl %ecx, %esi				# see if array has reached its end
		je end						# if it has, end the method
		movw (%rdi, %rcx, 2), %ax	# move *(ptr + i) to %dx
		cltd
		movw $2, %r9w
		idivw %r9w
		incl %ecx
		cmpw $0, %dx
		je increment
		jmp count_loop
		
	increment:
		incl %r8d					# increment return value
		jmp count_loop
	
	end:
		movl %r8d, %eax
	
	exit:
		ret
