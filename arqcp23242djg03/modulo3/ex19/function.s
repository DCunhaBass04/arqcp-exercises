.section .text
	.global frequencies # void frequencies(char* ptrgrades, int num, int* ptrfreq)

	frequencies:
		movq $0, %rax								# clean %rax
		movq $0, %rcx								# start %rcx as 0, cleaning it

	clean_array:
		cmpl $21, %ecx
		je begin_frequencies_loop
		movl $0, (%rdx, %rcx, 4)
		incl %ecx
		jmp clean_array
		
	begin_frequencies_loop:
		movq $0, %rcx
		cmpl $0, %esi
		je exit

	frequencies_loop1:
		cmpl %esi, %ecx 							# see if the array has reached its second to last position
		je exit										# if so, exit the method
		movb (%rdi, %rcx, 1), %al					# move the grade to %al 
		incl (%rdx, %rax, 4)						# increment the correct position on the array ptrfreq
		incl %ecx									# increment %ecx
		jmp frequencies_loop1						# loop the method
		
	exit:
		ret	
