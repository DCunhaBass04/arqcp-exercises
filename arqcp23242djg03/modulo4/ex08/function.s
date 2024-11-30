.section .text
  .global calc
    
calc:
  movl %edi, %ecx
  imull $4, %ecx
  addl (%rsi), %ecx

  movl %edx, %eax
  subl $6, %eax
  imull %ecx, %eax

  ret


    
