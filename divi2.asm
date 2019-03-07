.data
	enter: .asciiz "\n"
.text
main:
	addi $t0, $zero, 30
	addi $t1, $zero, 8
	
	div $t0, $t1
	mflo $s0
	mfhi $s1
	
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	li $v0, 4
	la $a0, enter
	syscall
	
	li $v0, 1
	add $a0, $zero, $s1
	syscall