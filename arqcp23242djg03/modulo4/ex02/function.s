.section .text
    .global sum2_n
    
    sum2_n:
		movq $0, %rax
        cmpl $0, %edi
        jle exit
        
        movq $0, %rcx
		movq $0, %rdx


    loop:
        addq %rcx, %rax

        incq %rcx
		cmpq %rdi, %rcx
        jg exit
        jmp loop
    
    exit:
		imulq %rax, %rax
        ret
		