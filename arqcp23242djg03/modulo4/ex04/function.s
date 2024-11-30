.section .text
    .global sum_sub
    
    sum_sub:
		movl %edi, %eax
        addl %esi, %eax
        subl %esi, %edi
        movl %edi, (%rdx)

        ret
