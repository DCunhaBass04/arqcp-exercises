.section .text
	.global sum # int compute(int a, int b, int c, int d)
	.global subtraction
	.global multiplication
	.global division
	.global modulus
	.global powers
	
	sum:
		addl %esi, %edi
		movl %edi, %eax
		ret
		
	subtraction:
		subl %esi, %edi
		movl %edi, %eax
		ret
		
	multiplication:
		imul %esi, %edi
		movl %edi, %eax
		ret
		
	division:
		movl %edi, %eax
		cltd
		idiv %esi, %eax
		ret
		
	modulus:
		movl %edi, %eax
		neg %eax
		ret
		
	powers:
		movl %esi, %ecx
		subl $1, %ecx
		movl %edi, %eax
		jmp for_loop
	for_loop:
		jz end
		imull %edi
		loop for_loop
	end:
		ret
