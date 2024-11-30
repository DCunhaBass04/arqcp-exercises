.section .text
	.global greater_date # unsigned int greater_date(unsigned int date1, unsigned int date2);
	
	greater_date:
		movq $0, %rax				# clean %rax
		movq $0, %r8				# clean %r8
		movq $0, %r9				# clean %r9
		movq $0, %r10				# clean %r10
		movq $0, %r11				# clean %r11
		
		movl %edi, %r10d
		movl %esi, %r11d
		andl $0xFFFF0000, %r10d
		andl $0xFFFF0000, %r11d
		shrl $16, %r10d
		shrl $16, %r11d
		cmpw %r10w, %r11w
		jg return_date2
		jl return_date1
		
		movl %edi, %r10d
		movl %esi, %r11d
		andl $0x000000FF, %r10d
		andl $0x000000FF, %r11d
		cmpb %r10b, %r11b
		jg return_date2
		jl return_date1
		
		movl %edi, %r10d
		movl %esi, %r11d
		andl $0x0000FF00, %r10d
		andl $0x0000FF00, %r11d
		shrl $8, %r10d
		shrl $8, %r11d
		cmpb %r10b, %r11b
		jg return_date2
		jl return_date1
		
		movl %edi, %eax
		jmp exit
	
	return_date1:
		movl %edi, %eax
		jmp exit
		
	return_date2:
		movl %esi, %eax
		jmp exit
	
	exit:
		ret
