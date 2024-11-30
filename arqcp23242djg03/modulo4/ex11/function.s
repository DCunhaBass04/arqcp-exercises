.section .text
	.global call_proc	# call_proc(int a, int b, short c, char d)
	.global proc		# void proc(int x1, int *p1, int x2, int *p2, short x3, short *p3, char x4, char *p4)
	
	proc:
		# Prologue
		pushq %rbp			# saves old stackframe
		movq %rsp, %rbp
		
		# Method Body
		addl %edx, (%rsi)		# *p1 = x1 + x2
		subl %edi, (%rcx)		# *p2 = x2 - x1
		addw %dx, (%r9)			# *p3 = x3 + x2
		movq 24(%rsp), %r10		# move *p4 to a register
		movb $3, %r11b
		movb (%r10), %al
		imulb %r11b				# do x4 * 3
		movb %al, (%r10)		# return the value to the p4
		
		# Epilogue
		movq %rbp, %rsp
		popq %rbp
		jmp exit
		
	call_proc:
		movq $0, %rax
		movq $0, %r11
		
		# Prologue
		pushq %rbp			# saves old stackframe
		movq %rsp, %rbp
		
		# Creating Variables
		subq $32, %rsp			# create space for local variables in the stack
		movq %rdi, -32(%rbp)
		movq %rsi, -24(%rbp)
		movq %rdx, -16(%rbp)
		movq %rcx, -8(%rbp)
		
		# Calling proc
		leaq -8(%rbp), %rcx		
		pushq %rcx				# 8th argument is &x4
		movq -8(%rbp), %rcx
		pushq %rcx				# 7th argument is x4

		movq %rdx, %r8			# 5th argument is x3
		leaq -16(%rbp), %r9		# 6th argument is &x3
		movq %rsi, %rdx			# 3rd argument is x2
		leaq -24(%rbp), %rcx	# 4th argument is &x2
		leaq -32(%rbp), %rsi	# 2nd argument is &x1

		call proc
				
		movq $0, %rax
		movl (%rsi), %eax
		addl (%rcx), %eax
				
		popq %rcx		
		popq %rcx
		
		movq $0, %rdx
		movswl (%r9), %edx
		movq $0, %r8
		movsbl (%rcx), %r8d
		subl %r8d, %edx
		imull %edx
		
		# Epilogue
		movq %rbp, %rsp
		popq %rbp
		
	exit:
		ret
