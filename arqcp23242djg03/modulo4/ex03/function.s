.section .text
	.global greatest # short greatest(short a, short b, short c)
	
	greatest:
		movq $0, %rax	
		movw %di, %ax			# move the short a to the register that will be returned
	
	first_comparison:
		cmpw %ax, %si			# see if the short b is greater than the short a
		jle second_comparison	# if not, jump to the second comparison
		movw %si, %ax			# if it is, move "b" to %ax
		
	second_comparison:
		cmpw %ax, %dx			# see if the short c is greater than the previous greatest one
		jle exit				# if not, end the method
		movw %dx, %ax			# if it is, move "c" to %ax
	
	exit:
		ret
