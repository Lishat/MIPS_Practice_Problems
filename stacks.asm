.data
	newLine: .asciiz "\n"
.text
main:
	addi $s0, $zero, 10	#adds 10 to register s0
	
	jal increaseRegister	#calls function increaseRegister
	
	li $v0, 4
	la $a0, newLine		#used to print newLine
	syscall
	
	li $v0, 1
	move $a0, $s0		#used to print the original value loaded from the stack
	syscall
	
	li $v0, 10		#ends the program
	syscall
increaseRegister:
	addi $sp, $sp, -4	#allocates space to stack
	sw $s0, 0($sp)		#stores value 10 in a stack
	
	addi $s0, $s0, 30	#adds 30 to register s0
	
	li $v0, 1
	move $a0, $s0		#prints value of s0
	syscall
	
	lw $s0, 0($sp)
	addi $sp, $sp, 4	#loads old value of register from the stack and goes back to normal space
	jr $ra
