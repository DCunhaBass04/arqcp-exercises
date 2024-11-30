.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global sum_and_subtract
	sum_and_subtract :
		movswl C(%rip), %eax 
    	movl A(%rip), %ecx 
    	subl %ecx, %eax

    	movswl D(%rip), %ecx 
    	addl %ecx, %eax

    	movsbl B(%rip), %ecx 
    	subl %ecx, %eax

    	movslq %eax, %rax 

		ret
