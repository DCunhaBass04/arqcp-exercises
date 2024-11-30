.section .text
	.global decrypt # int decrypt(char* ptr)

	decrypt:
		movq $0, %rax								# clean %rax
		movq $0, %rcx								# start %rcx as 0, cleaning it
		movq $0, %rdx

	decrypt_loop:
		cmpb $0, (%rdi, %rcx, 1)
		je exit
		cmpb $32, (%rdi, %rcx, 1)
		je dont_decrement_char
		cmpb $97, (%rdi, %rcx, 1)
		je dont_decrement_char
		decb (%rdi, %rcx, 1)
		incl %eax
		incq %rcx
		jmp decrypt_loop
		
	dont_decrement_char:
		incq %rcx
		jmp decrypt_loop
		
	exit:
		ret	
