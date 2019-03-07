.data
	string: .space 1024
	print1: .asciiz "Enter the string:\n"
	print2: .asciiz "The capitalized string is:\n"
	space: .asciiz " "
	enter: .asciiz "\n"
.text
main:
	li $v0, 4
	la $a0, print1
	syscall
	
	li $v0, 8
	la $a0, string
	li $a1, 1024
	syscall
	
	addi $t0, $zero, 0
	lb $s2, space($t0)
	lb $s3, enter($t0)
	addi $s0, $zero, -1
strlen:
	addi $s0, $s0, 1
	lb $s1, string($s0)
	beqz $s1, exit
	beq $s1, $s2, strlen
	beq $s1, $s3, strlen
	addi $s1, $s1, -32
	sb $s1, string($s0)
	j strlen
	
exit:
	li $v0, 4
	la $a0, print2
	syscall
	
	li $v0, 4
	la $a0, string
	syscall
