.data
	string: .space 1024
	stringrev: .space 1024
	print1: .asciiz "Enter the string:\n"
	print2: .asciiz "The reversed string is:\n"
.text
main:
	li $v0, 4
	la $a0, print1
	syscall
	
	li $v0, 8
	la $a0, string
	li $a1, 1024
	syscall
	
	addi $s0, $zero, 0
strlen:
	lb $s1, string($s0)
	beqz $s1, rev
	addi $s0, $s0, 1
	j strlen
		
rev:
	add $s3, $s0, 0
	sub $s0, $s0, 2
	addi $s1, $zero, 0
check:
	lb $s2, string($s0)
	sb $s2, stringrev($s1)			
	addi $s0, $s0, -1
	addi $s1, $s1, 1
	beq $s0, -1, exit
	j check
	
exit:
	li $v0, 4
	la $a0, print2
	syscall
	
	li $v0, 4
	la $a0, stringrev
	syscall
