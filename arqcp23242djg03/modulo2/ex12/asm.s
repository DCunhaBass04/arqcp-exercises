.section .data
	.global A
	.global B
	
.section .text
	.global isMultiple
	isMultiple :
	movl A(%rip), %eax 
	movl B(%rip), %ecx 
	cdq 

	cmp $0 , %ecx
	je isZero

	idivl %ecx 

	cmp $0, %edx 
	jne isNotMultiple 

	movl $1, %eax 
	jmp end # jump to end

isZero:
	movl $0, %eax 
	jmp end # jump to end

isNotMultiple:
	movl $0, %eax

end:
	ret 
