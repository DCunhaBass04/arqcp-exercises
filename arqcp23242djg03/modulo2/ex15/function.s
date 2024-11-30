.section .data
	.global A
	.global B
	.global C
	.global D
.section .text
	.global compute # int compute()
	compute:
		movl $0, %eax
		movl D(%rip), %ecx
		cmp $0, %ecx
		je exit
		movl B(%rip), %eax
		movl C(%rip), %edx
		imull A(%rip), %eax
		imull A(%rip), %edx
		subl %edx, %eax
		cltd
		idivl %ecx
		jmp exit
	exit:
		ret
