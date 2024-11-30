.section .data
	.global op1
	.global op2
	.global s1
	.global s2

.section .text
	.global exchangeBytes
	exchangeBytes:
    	mov op2(%rip), %ax
		xchg %ah, %al
		mov op1(%rip), %ah
    	shl $1, %ah
		
    	ret


