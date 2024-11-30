.section .text
	.global calculate # int calculate(int a, int b)
	
	calculate:
		movq $0, %rax
		movq $0, %rdx
		movq $0, %rcx
		
		# Prologue
		pushq %rbp			# saves old stackframe
		movq %rsp, %rbp
		
		# Method Body
		subq $8, %rsp			# subtract 8 bytes (two 4 byte ints) from the stack
		movl %edi, -4(%rbp)		# move "a" to the first variable (diff)
		subl %esi, -4(%rbp) 	# subtract "b" from the first variable
		movl %edi, -8(%rbp) 	# move "a" to the second variable (product)
		movl %edi, %eax
		imul %esi
		movl %eax, -8(%rbp)	# multiply "b" to the second variable (product)
		
		movl %esi, %edx			# move "b" to the third argument
		movl %edi, %esi			# move "a" do the second argument
		movq $0, %rdi			# clean %rdi
		movb $42, %dil			# move '*' to the first argument
		movl -8(%rbp), %ecx		# move product to the fourth argument
		
		pushq %rdi
		pushq %rsi
		pushq %rdx
		pushq %rcx
		
		call print_result
		
		popq %rcx
		popq %rdx
		popq %rsi
		popq %rdi
		
		movb $45, %dil			# move '-' to the first argument
		movl -4(%rbp), %ecx		# move diff to the fourth argument
		
		call print_result
		
		movl -4(%rbp), %eax		# move diff to %eax
		subl -8(%rbp), %eax		# do diff - product
		
		# Epilogue
		movq %rbp, %rsp
		popq %rbp
	
	exit:
		ret
