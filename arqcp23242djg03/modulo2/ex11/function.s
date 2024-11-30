.section .data
	.global op1
	.global op2

.section .text
	.global verify_flags # char verify_flags()
	verify_flags:
		movq $0, %rax #place 0 on the return value
		movw op1(%rip), %cx
		addw op2(%rip), %cx #adds the first two 16-bit arguments
		jc carry_overflow_detected
		jo carry_overflow_detected
		ret
		
	carry_overflow_detected:
		movb $1, %al
		ret
		
