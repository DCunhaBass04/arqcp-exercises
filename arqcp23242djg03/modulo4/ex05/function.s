.section .text
	.global inc_and_cube # long inc_and_cube(short *v1, int v2)
	
	inc_and_cube:
		incw (%rdi)			# increment the first parameter
		movslq %esi, %rax	# move int v2 to the long return register %rax
		imull %esi
		imull %esi
	
	
	exit:
		ret
