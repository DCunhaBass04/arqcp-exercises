.section .text
	.global five_count # int five_count(char* ptr)
	five_count:
		movq $0, %rax # clean the %rax register
		movq $0, %rcx # set %rcx as 0
		movq $0, %rdx
		jmp five_count_loop
		
	five_count_loop:	
		movb (%rdi, %rcx, 1), %dl
		cmpb $0, %dl 			# see if array has reached its end
		je exit					# exit the program if the array has ended
		cmpb $53, %dl			# compare *(vec + i) with 5 (ascii code 35)
		je increment_counter	# if it was equal, jump to increment_counter
		incq %rcx 				# increment i
		jmp five_count_loop		# return to the main loop
		
	increment_counter:
		incq %rax				# increment the return value if it found a 5
		incq %rcx 				# increment i
		jmp five_count_loop		# return to the main loop
		
	exit:
		ret
