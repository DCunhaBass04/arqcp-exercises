.section .data
	.global current
	.global desired

.section .text
	.global needed_time # short needed_time()
	needed_time:
		movb current(%rip), %dl	#move the char "current" to the 8-bit register %dl
		movb desired(%rip), %cl	#move the char "desired" to the 8-bit register %cl
		movq $0, %rax			#move the value 0 to the 16-bit register %ax
		cmp %dl, %cl			#compare current and desired
		jg add_time				#if desired is greater than current, go to add_time
		jl remove_time			#if desired is lesser than current, go to remove_time
		jmp exit				#otherwise, jump to the exit
	add_time:
		addw $180, %ax			#add 180 seconds (3 minutes) to the %ax register
		addb $1, %dl			#add 1 degree to %dl (current)
		cmp %dl, %cl			#compare current and desired again after incrementing the former
		jg add_time				#if desired is still greater than current, loop back to add_time
		jmp exit				#otherwise, jump to the exit
	remove_time:
		addw $240, %ax			#add 240 seconds (4 minutes) to the %ax register
		subb $1, %dl			#subtract 1 degree from %dl (current)
		cmp %dl, %cl			#compare current and desired again after decrementing the former
		jl remove_time			#if desired is still lesser than current, loop back to remove_time
		jmp exit				#otherwise, jump to the exit
	exit:
		ret						#returns whatever value is in %ax
		
