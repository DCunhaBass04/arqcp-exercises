.section .text
	.global reset_bits # long reset_bits(long a, char left, char right);
	
	reset_bits:
		movq $0, %rax		# clean %rax, starting it as 0
		movq $0, %rcx
		cmpb %sil, %dl		# compare "left" with "right"
		jg exit
		movb %dl, %cl
		
	reset_bits_loop:
		cmpb %sil, %cl
		jg exit
		movq $1, %r8
		shlq %rcx, %r8
		andq %rdi, %r8
		orq %r8, %rax
		incq %rcx
		jmp reset_bits_loop
	
	exit:
		ret
