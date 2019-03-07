.data
	string: .space 1024
	print1: .asciiz "Enter the string whose length is to be found\n"
	print2: .asciiz "The length of the string is\n"
	
.text
main:
	li $v0, 4
	la $a0, print1
	syscall
	
	li $v0, 8
	la $a0, string
	li $a1, 1024
	syscall
	
	li $v0, 4
	la $a0, print2
	syscall
	
	addi $s0, $zero, 0
	strlen:
		lb $s1, string($s0)
		beqz $s1, exit
		addi $s0, $s0, 1
		j strlen
		
	exit:
		sub $s0, $s0, 1
		
		li $v0, 1
		addi $a0, $s0, 0
		syscall
		
		li $v0, 10
		syscall
		  
