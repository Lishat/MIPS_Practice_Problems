.data
	prompt1: .asciiz "Enter your age\n"
	prompt2: .asciiz "Your age is: "
.text
main:
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	