.section .data
	.global code
	.global currentSalary

.section .text
	.global new_salary # int new_salary()
	new_salary:
		movw code(%rip), %dx
		movw currentSalary(%rip), %ax
		cmp $10, %dx #see if code is 10
		je manager_raise
		cmp $11, %dx #see if code is 11
		je engineer_raise
		cmp $12, %dx #see if code is 12
		je technician_raise
		addw $250, %ax #add the 250 raise to the base salary
		jmp end
	manager_raise:
		addw $500, %ax
		jmp end
	engineer_raise:
		addw $400, %ax
		jmp end
	technician_raise:
		addw $300, %ax
		jmp end
 	end:
		movswl %ax, %eax
		ret
		
