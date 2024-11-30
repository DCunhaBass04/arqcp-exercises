.section .data
    .global num

.section .text
    .global check_num

check_num:
    movl num(%rip), %eax     # eax = num
    test $1, %al             # check if num is odd
    jnz num_odd              # jump to num_odd if it is odd

    test $8000, %ax          # check if num is negative
    jz positive              # jump to positive if it is positive
    movl $1, %eax            # if it's not positive, it's even and negative
    jmp end

num_odd:
    test $8000, %ax          # check if num is negative
    jz positive_odd          # jump to positive_odd if it is positive
    movl $2, %eax            # if it's not positive, it's odd and negative
    jmp end

positive:
    movl $3, %eax            # num is positive and even
    jmp end

positive_odd:
    movl $4, %eax            # num is positive and odd
    jmp end

end:
    ret                       # return
