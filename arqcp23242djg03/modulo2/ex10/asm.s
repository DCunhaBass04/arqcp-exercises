.section .data
	.global op1
	.global op2
	.global op3
	
.section .text
	.global sum3ints
	sum3ints :
		movl op1(%rip), %eax 
    	movl op2(%rip), %ecx 
    	addl %ecx, %eax

    	movl op3(%rip), %ecx 
    	addl %ecx, %eax

    	movslq %eax, %rax 

		ret
