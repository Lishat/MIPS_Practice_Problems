.data
	prompt1: .asciiz "The number is greater than the other"
	prompt2: .asciiz "The number is less than the other"
.text

main:
	addi $t0, $zero, 10
	addi $t1, $zero, 20
	
	bgt $t0, $t1, greaterthan
	ble $t0, $t1, lessthan
	
	li $v0, 10
	syscall
	
greaterthan:
	li $v0, 4
	la $a0, prompt1
	syscall
	li $v0, 10
	syscall
	
lessthan:
	li $v0, 4
	la $a0, prompt2
	syscall
	li $v0, 10
	syscall
