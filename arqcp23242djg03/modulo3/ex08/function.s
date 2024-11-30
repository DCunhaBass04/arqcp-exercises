.section .text
	.global test_even 
	.global vec_sum_even

	test_even:
		movq $0, %rax

		testl $1, %edx
		je even
		movl $0, %edx

		ret

	
	even:
		movq $1, %rax
		movl $0, %edx
		ret
	


	vec_sum_even:
		movq $0, %rcx

		cmpl $0, %esi
		je exit

		jmp vec_sum_even_loop


	vec_sum_even_loop:
		cmpl $0, %esi
		jl exit

		movl (%rdi), %edx
		call test_even

		cmpq $0, %rax
		je odd

		movl (%rdi), %edx
		addl %edx, %ecx

		addq $4, %rdi
		decl %esi

		jmp vec_sum_even_loop

		jmp exit



	odd:
		addq $4, %rdi
		decl %esi
		jmp vec_sum_even_loop

	exit:
		movl %ecx, %eax
		ret




