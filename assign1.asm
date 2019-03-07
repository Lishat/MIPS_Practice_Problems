.data
	prompt1: .asciiz "Enter the value of a\n"
	prompt2: .asciiz "Enter the value of b\n"
	prompt3: .asciiz "The result of c is:\na + 3 * ( b + 2 )\n"
.text
main:
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 5
	syscall
	
	move $s1, $v0
	
	add $s1, $s1, 2
	mul $s1, $s1, 3
	add $s0, $s0, $s1
	
	li $v0, 4
	la $a0, prompt3
	syscall
	
	li $v0, 1
	addi $a0, $s0, 0
	syscall
	
	