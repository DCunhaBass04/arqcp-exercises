.section .text
	.global move_num_vec # int move_num_vec(int* array, int length, int* read, int* write, int num, int* vec); USAC03

	move_num_vec:
		movq $1, %rax						# Clean %rax, starting it as 1
		movq $0, %r10						# Clean %r10
		movq $0, %r11						# Clean %r11
		cmpl %esi, %r8d						# See if num of elements is bigger than the size of the array
		jg invalid_num						# if it is, return 0
		pushq %rbx							# We're going to use %rbx, so we're going to push it before using it
		movq $0, %rbx						# Clean %rbx
		movl (%rdx), %r11d					# Move the value in the read pointer to %r11d
		
	move_num_vec_loop:
		cmpl %r10d, %r8d					# See if the loop has copied the requested number of values
		je move_num_vec_end_loop			# If it has, finish the loop
		movl (%rdi, %r11, 4), %ebx			# Move *(ptr1 + i) to %ebx
		movl %ebx, (%r9, %r10, 4)			# Move *(ptr1 + i) to *(ptr2 + j)
		movq $0, %rbx	
		movl %ebx, (%rdi, %r11, 4)			# Clean *(ptr1 + i)
		incl %r10d							# Increment %r10d
		incl (%rdx)							# Increment the read pointer
		movl (%rdx), %r11d					# Move its value to %r11d
		cmpl %r11d, %esi					# See if that value has reached the array size
		jle reset_read						# If so, reset the read value
		jmp move_num_vec_loop
		
	move_num_vec_end_loop:	
		popq %rbx
		jmp exit
		
	reset_read:
		movq $0, %rbx
		movl %ebx, (%rdx)					# Set the read value to 0
		movl %ebx, %r11d
		jmp move_num_vec_loop

	invalid_num:
		movq $0, %rax						# Ready to return 0
		jmp exit


	exit:
		ret
