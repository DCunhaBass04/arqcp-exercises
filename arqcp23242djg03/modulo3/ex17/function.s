.section .text
	.global array_sort # void array_sort(int* ptr, int num)

	array_sort:
		cmpl $0, %esi
		je exit
		movq $0, %rax								# clean %rax
		movq $0, %rcx								# start %rcx as 0, cleaning it
		movq $0, %rdx								# clean %rdx
		movl %esi, %eax								# copy n to %eax
		decl %eax									# decrement %eax, so it only goes until the second to last position
	
	array_sort_loop1:
		cmpl %eax, %ecx 							# see if the array has reached its second to last position
		je exit										# if so, exit the method
		movl %ecx, %edx								# copy %ecx to %edx
		incl %edx									# increment %edx, so it starts after %ecx
		call array_sort_loop2						# start the second loop
		incl %ecx									# increment %ecx
		jmp array_sort_loop1						# loop the method
		
	array_sort_loop2:
		cmpl %esi, %edx								# see if the second loop has reached the end of the array
		je exit										# if so, end the second loop
		movl (%rdi, %rdx, 4), %r8d					# move *(ptr + j) to %r8d
		movl (%rdi, %rcx, 4), %r9d					# move *(ptr + i) to %r9d
		cmpl %r8d, %r9d								# compare the two elements
		jl switch_elements							# if the former is lesser than the latter, switch the elements
		incl %edx									# increment %edx
		jmp array_sort_loop2
		
	switch_elements:
		movl %r9d, (%rdi, %rdx, 4)					# put *(ptr + i) on the place of *(ptr + j)
		movl %r8d, (%rdi, %rcx, 4)					# put *(ptr + j) on the place of *(ptr + i)
		incl %edx									# increment %edx
		jmp array_sort_loop2
		
	exit:
		ret	
