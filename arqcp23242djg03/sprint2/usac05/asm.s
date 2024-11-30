.section .text
	.global mediana # int mediana(int* vec, int num); USAC05

	sort_array:
        cmpl $0, %esi                    # Compare size (num) with 0
        jle exit                          # End function for invalid or null siz

        movq $0, %rcx                    # Initialize first counter rcx = 0 for outer loop (i)
        movq $0, %rdx                    # Initialize second counter rdx = 0 for inner loop j=i+1,
        movq $0, %rax                    # Initialize %rax = 0
        movl %esi,%eax                   # Move array size %esi to %eax
        decl %eax                        # Decrement %eax = n-1 for first loop

    main_loop:
        cmpl %ecx,%eax                   # Compare actual size with final size(n-1)
        je exit                          # End function when counter reaches final size (n-1)
        movl %ecx, %edx                  # Move first counter %ecx to second %edx
        incl %edx                        # Increment second counter j = i+1

        call inner_loop                  # Call inner_loop to loop on every main_loop iteration returns on next line

        incl %ecx                        # Increment first counter i
        jmp main_loop                    # Jump to beginning of the main_loop


    inner_loop:         	             # Inner loop function
        cmpl %edx, %esi    		         # Compare second counter j to array size
        je exit  				         # Jump to outer loop when j reaches final size i
        movl (%rdi, %rcx, 4), %r10d      # Load vec[i] into %r10d
        movl (%rdi, %rdx, 4), %r8d       # Load vec[j] into %r8d

        cmpl %r10d, %r8d                 # Compare vec[j] to vec[i]
        jl swap_elements                 # If r8d is smaller than r10,vec[j] < vec[i],jump to swap_elements

    continue_sorting:                            # Continue here after the inner loop
        incl %edx                        # Increment j
        jmp inner_loop                   # Jump to the beginning of the inner loop


    swap_elements:       			     # Swap vec[i] and vec[j] if needed
        movl %r10d,(%rdi, %rdx, 4)       # Move vec[j] to vec[i]
        movl %r8d,(%rdi, %rcx, 4)        # Move vec[i] to vec[j]
        jmp continue_sorting    			     # Continue to the inner loop

	mediana:
		movq $0, %rax				#clean %rax
		cmpl $0, %esi
		je exit
		call sort_array
		movq $0, %rdx				#clean %rdx
		movq $0, %rax				#clean %rax
		movq $2, %rcx				#clean %rcx, passing the value 2 to it
		movl %esi, %eax				#pass "num" to %eax
		divl %ecx					#divide %eax by 2, passing the final value to %eax and the remainder to %edx
		movl (%rdi, %rax, 4), %eax	#pass the middle value to %eax (if num is 7, it will pass the element with the index 3, the 4th element) 
									#(if num is an even number, the median will be the point in the position n/2, as requested (if size is 8, median is element with index 4, the 5th element))
		jmp exit

	exit:
		ret
