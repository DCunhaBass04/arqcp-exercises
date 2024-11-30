.section .text
	.global enqueue_value # void enqueue_value(int* array, int length, int* read, int* write, int value); USAC02

	enqueue_value:
        cmpl $0, %esi                       # Compare length with 0
        jle exit                            # End function for null or invalid size

        movq $0, %r9                        # Clear r9
        movq $0, %r10                       # Clear r10
        movq $0, %r11                       # Clear r11

        movl %esi,%r11d                     # Move size esi to r11d
        decl %r11d                          # Decrement size stored on r11d

        cmpl %r11d,(%rcx)                   # Compare value pointed by write pointer with size-1
        jg exit                             # End function if  write is bigger than size-1


    write:
        movl (%rcx), %r9d                   # Move value pointed by pointer to r9d
        movl %r8d,(%rdi,%r9,4)              # Write value r8d into array of index pointed by pointer
        addl $1,(%rcx)                      # Increment number pointed by write pointer
        cmpl (%rcx),%esi                    # Compare write +1  pointer with size
        je reset_write                      # Jump to reset_write function if write

    continue:
        movl (%rdx), %r10d                  # Move value pointed by read pointer to r10d
        cmpl (%rcx), %r10d                  # Compare value of write+1 with write  pointed by rcx and r10d pointers
        je increment_read                   # Jump to increment_read funcition if both are equal
        jmp exit                            # End function

    reset_write:
        movl $0 ,(%rcx)                     # Move 0 to value pointed by rcx write pointer
        jmp continue                        # Jump to continue

    increment_read:
        addl $1,(%rdx)                      # Increment value poined by read pointer
        jmp exit                            # End function

	exit:
		ret
