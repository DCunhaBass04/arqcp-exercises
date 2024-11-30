.section .data
	.global num
	
.section .text
	.global steps
		steps :
			movl num(%rip), %eax
			cmp $0, %eax
			JE zero_detected
			jmp a

		a :
			cdq
			movl $3, %ecx
			idivl %ecx
			jmp b

		b :
			addl $6, %eax
			jmp c

		c :
			movl $3, %ecx 
			imull %ecx
			jmp d 

		d :
			addl $12, %eax
			jmp e

		e :
			subl num(%rip), %eax
			jmp f

		f :
			subl $4, %eax
			ret

		zero_detected :
			jmp b
