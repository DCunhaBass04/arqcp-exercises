.section .data
	.global length1
	.global length2
	.global height

length1:
    .int 0

length2:
    .int 0

height:
    .int 0

.section .text
	.global getArea # int getArea()
	getArea:
		movswl length2(%rip), %eax #place length2 in the 32-bit register eax (in case the sum goes over the 16-bit limit)
		movswl length1(%rip), %edx #place length1 in the 32-bit register edx
		addl %edx, %eax #do (length1 + length2) and place it in eax
		movswl height(%rip), %edx #place height in the 32-bit register edx, reusing it
		imull %edx #multiply %edx by %eax, placing the result in eax
		movl $2, %ecx #place the value 2 in the 32-bit register ecx
		divl %ecx #divide eax by ecx, placing the result in eax

		ret
