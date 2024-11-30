.section .text
	.global str_copy_roman2 # void str_copy_roman2(char* ptr1, char* ptr2)
	str_copy_roman2:
		movq $0, %rax 					# clean the %rax register
		movq $0, %rcx 					# set %rcx as 0
		jmp str_copy_roman2_loop
		
	str_copy_roman2_loop:	
		movb (%rdi, %rcx, 1), %dl		# move *(ptr1 + i) to %dl
		movb %dl, (%rsi, %rcx, 1)		# move %dl to *(ptr2 + i), even if it is '\0'
		cmpb $117, %dl				
		je switch_u
		cmpb $85, %dl
		je switch_u
		cmpb $0, %dl 					# see if array has reached its end
		je exit							# exit the program if the array has ended
		incq %rcx 						# increment i
		jmp str_copy_roman2_loop		# return to the main loop
		
	switch_u:							# jump here if the current character is 'U' or 'u'
		addb $1, (%rsi, %rcx, 1)		# since 'V' is right next to 'U', and 'v' is right next to 'u', we only need to sum one to the value
		incq %rcx 						# increment i
		jmp str_copy_roman2_loop		# return to the main loop
		
	exit:
		ret
