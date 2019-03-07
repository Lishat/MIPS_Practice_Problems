.data
	string1 .space 1024
	string2 .space 1024
	print1: .asciiz "Enter the first string:\n"
	print2: .asciiz "Enter the second string:\n"
	
.text
main:
	li $v0, 4
	la $a0, print1
	syscall
	
	li $v0, 8
	la $a0, string1
	li $a1, 1024
	syscall
	
	li $v0, 4
	la $a0, print2
	syscall
	
	li $v0, 8
	la $a0, string2
	li $a1, 1024
	syscall