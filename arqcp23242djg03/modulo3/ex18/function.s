.section .text
	.global sort_without_reps

    sort_without_reps:
		movq $0, %rax		# clean %rax
		movq $0, %rcx		# clean %rcx
		cmpl $0, %edx		# see if size is 0
		je exit				# if it is, exit the entire method
		movl %edx, %r8d		# move size to %r8w
		decl %r8d
			
	array_sort_loop1:
		cmpl %r8d, %ecx					# see if the array has reached its second to last position
		je end_loop						# if so, go to the next part
		movl %ecx, %r9d					# copy %ecx to %r9d
		incl %r9d						# increment %r9d, so it starts after %ecx
		call array_sort_loop2			# start the second loop
		incl %ecx						# increment %ecx
		jmp array_sort_loop1			# loop the method
		
	array_sort_loop2:
		cmpl %edx, %r9d					# see if the second loop has reached the end of the array
		je exit							# if so, end the second loop
		movw (%rdi, %r9, 2), %r10w		# move *(ptr1 + j) to %r10w
		movw (%rdi, %rcx, 2), %r11w		# move *(ptr1 + i) to %r11w
		cmpw %r10w, %r11w				# compare the two elements
		jg switch_elements				# if the former is greater than the latter, switch the elements
		incl %r9d						# increment %r9d
		jmp array_sort_loop2			# loop the method

	switch_elements:
		movw %r11w, (%rdi, %r9, 2)		# put *(ptr + i) on the place of *(ptr1 + j)
		movw %r10w, (%rdi, %rcx, 2)		# put *(ptr + j) on the place of *(ptr1 + i)
		incl %r9d						# increment %r9d
		jmp array_sort_loop2

	end_loop:
		movq $0, %rcx					# clean %rcx
		movq $0, %r8					# clean r8
		movw (%rdi, %rcx, 2), %r8w		# move the *ptr1 to %r8w
		movw %r8w, (%rsi, %rcx, 2)		# move the %r8w to *ptr2
		incl %ecx					
		movq $1, %rax					# 1 element added
		movq $0, %r10					# clean %r10

	
	start_second_loop:
		cmpl %ecx, %edx					# see if the loop has reached the end of the first array
		je exit							# if so, exit the method
		movw (%rdi, %rcx, 2), %r8w		# move *(ptr1 + i) to %r8w
		cmpw %r8w, (%rdi, %r10, 2)		# compare *(ptr1 + i) to *(ptr1 + i - 1)
		jne add_element					# if they're not equal, add *(ptr1 + i) to the second array
		incl %ecx
		incl %r10d
		jmp start_second_loop			# loop the method
	
	add_element:
		movw %r8w, (%rsi, %rax, 2)		# move *(ptr1 + i) to *(ptr2 + j)
		incl %ecx
		incl %r10d
		incl %eax						# 1 more element added
		jmp start_second_loop			# loop the previous method
	
	exit:
        ret



