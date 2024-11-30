.section .data
	.global A
	.global B
	.global n

A:
    .int 3

B:
    .int 4
	
.section .text
    .global sigma

		sigma:
			movl $1, %edx         
			movl n(%rip), %ecx         

			movl $0, %eax       

			cmp $0, %ecx
			je zero

		sigma_loop:
			cmpl %ecx, %edx     
			jg end_loop        

			movl %edx, %eax    
			imull %edx, %eax    

			movl A(%rip), %edx        
			movl B(%rip), %edi         
			imull %edx, %edx   
			imull A(%rip), %edx     
			cdq
			idivl %esi          

			addl %eax, %esi    

			incl %edx         
			jmp sigma_loop       

		end_loop:
			movl %esi, %eax     
			ret
		
		zero:
			ret


#.section .data
#	.global A
#	.global B
#	.global n
#	A:
#		.int 3
#	B:
#		.int 4
#.section .text
#    .global sigma
#	sigma:
#		movl n(%rip), %ecx		#moves the n value to the %ecx register, this register will be decremented in the loop     
#		movq $0, %rax       	#clears the entire %rax register
#		cmp $0, %ecx			#compares n to 0
#		jle zero				#if n is lesser or equal to 0, ends the method, returning 0
#
#	sigma_loop:    
#		movl %ecx, %edx    		#moves the current i value (starts at n and decrements until it reaches 0) to %edx, not changing %ecx
#		imull %ecx, %edx    	#gets the value i² to the %edx register
#		addl %edx, %eax  		#sums the i² value to the %eax register
#		loop sigma_loop       	#repeats the label until %ecx reaches 0 (%ecx is decremented automatically)
#
#	end_loop:
#		movl A(%rip), %edx      #moves A to %edx
#		movl B(%rip), %ecx      #moves B to %ecx
#		imull %edx, %edx   		#gets A² to %edx
#		imull A(%rip), %edx		#gets A³ to %edx
#		imull %edx, %eax     	#multiplies the result of the i² summation by A³, the result is given to %eax
#		cdq						#extends %eax to %rax for the following operation, keeping the number's sign in mind
#		idivl %ecx				#divides %rax by %ecx, giving the result to %eax
#		ret
#	
#	zero:
#		ret
