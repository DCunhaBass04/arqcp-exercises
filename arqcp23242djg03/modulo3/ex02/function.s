.section .text
	.global str_copy_roman 
	str_copy_roman:
		movq $0, %rax 					
		movq $0, %rcx 					
		jmp str_copy_roman_loop
		
	str_copy_roman_loop:	
		movb (%rdi, %rcx, 1), %dl		
		movb %dl, (%rsi, %rcx, 1)		
		cmpb $117, %dl				
		je switch_u
		cmpb $0, %dl 				
		je exit							
		incq %rcx 						
		jmp str_copy_roman_loop	
		
	switch_u:							
		addb $1, (%rsi, %rcx, 1)		
		incq %rcx 						
		jmp str_copy_roman_loop		
		
	exit:
		ret
