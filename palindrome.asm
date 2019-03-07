.data
	string: .space 1024
	print1: .asciiz "Enter the string:\n"
	print2: .asciiz "The string is a palindrome\n"
	print3: .asciiz "The string is not a palindrome\n"
	new: .asciiz "\n"
	
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
	sub $s0, $s0, 2
	addi $s1, $zero, 0
check:
	lb $s2, string($s0)
	lb $s3, string($s1)			
	addi $s0, $s0, -1
	addi $s1, $s1, 1
	beq $s0, -1, palin
	bne $s2, $s3, notpalin
	j check
	
palin:
	li $v0, 4
	la $a0, print2
	syscall
	li $v0, 10
	syscall
	
notpalin:
	li $v0, 4
	la $a0, print3
	syscall
	
	li $v0, 10
	syscall
	
			
