.section .data
	.global op1
	.global op2
	.equ CONST, 20
.section .text
	.global sum # int sum()
	.global another_sum # long another_sum()
	sum:
		movl op1(%rip), %ecx #place op1 in ecx
		movl op2(%rip), %eax #place op2 in eax
		addl %ecx, %eax #add ecx to eax. Result is in eax
		ret
		
	another_sum:
		movslq op1(%rip), %rcx #place op1 in rcx, converting it to long
		movslq op2(%rip), %rax #place op2 in rax, converting it to long
		movq $CONST, %rdx #place CONST in rdx, making it a long
		
		subq %rcx, %rdx #do (CONST - op1) and place it on rdx
		movq $CONST, %rcx #place CONST in rcx
		subq %rax, %rcx #do (CONST - op2) and place it on rbx
		movq $CONST, %rax #place CONST in rax
		
		addq %rdx, %rcx #do ((CONST - op1) + (CONST - op2)) and place it on %rcx
		addq %rcx, %rax #do ((CONST - op1) + (CONST - op2) + CONST) and place it on %rax
		ret
		
