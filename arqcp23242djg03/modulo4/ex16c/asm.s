.section .data
    .equ bitmask, 0xFFFFFFFFFFFFFFFF


.section .text
    .global join_bits
    # a in rdi, b in rsi, pos in rdx

join_bits:
    movq $bitmask, %r9 # maskHelper
    
    movq $63, %rcx # rcx = 63
    subq %rdx, %rcx # rcx = 63 - pos

    shrq %cl, %r9 # maskHelper = maskHelper >> (63 - pos)
    
    # maskB = ~maskA
    movq %r9, %r8
    notq %r8 
    
    movq %rdi, %rax # rax = a
    andq %r9, %rax # rax = a & maskA
    andq %r8, %rsi # rsi = b & maskB
    orq %rsi, %rax # rax = (a & maskA) | (b & maskB)
    ret
