.data
	prompt: .asciiz "Enter the value of n:\n"
	result: .asciiz "The factorial of n is:\n"
.text

main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	addi $s1, $zero, 1
	addi $t0, $zero, 1
	
while:
	bge $t0, $s0, exit
	addi $t0, $t0, 1
	mul $s1, $s1, $t0 
	j while
	
exit:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	addi $a0, $s1, 0
	syscall
	
	li $v0, 10
	syscall
	