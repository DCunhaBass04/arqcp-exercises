.section .text
	.global d_square # long d_square(int x)
	
	d_square:
		movslq %edi, %rax
		imulq %rax
		imulq $2, %rax
	
	exit:
		ret
