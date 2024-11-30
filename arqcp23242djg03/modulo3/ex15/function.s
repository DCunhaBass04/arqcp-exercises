.section .text
	.global sum_third_byte # int sum_third_byte(long* ptr, int num)

	sum_third_byte:
		movq $0, %rax							# clean %rax
		movq $0, %rcx							# start %rcx as 0
		movq $2, %rdx							# put the value 2 in %rdx (the third index)
		jmp sum_third_byte_loop
	
	sum_third_byte_loop:
		cmpl %esi, %ecx 						# see if the array has reached its end
		je exit									# if so, exit the method
		addb (%rdi, %rdx, 1), %al				# add the third byte of the value to %al
		addq $8, %rdi							# go to the next array position
		incl %ecx								# increment %ecx
		jmp sum_third_byte_loop					# loop the method
		
	exit:
		movsbl %al, %eax						# transform %al to %eax, keeping the number's sign in mind
		ret	
