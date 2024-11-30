.section .text
  .global test_different
    
test_different:
  movq $0, %rcx
  movq $0, %rdx
		

loop:
  movb (%rdi, %rcx, 1), %al
  cmpb %al, (%rsi, %rcx, 1)
  jne equal

  cmpb $0, %al
  je exit

  inc %rcx
  inc %rdx
  jmp loop


equal:
  movq $1, %rax
  ret


exit:
  movq $0, %rax
  ret


    
