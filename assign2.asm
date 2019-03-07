.data
	prompt1: .asciiz "Enter the value of a\n"
	prompt2: .asciiz "Enter the value of b\n"
	prompt3: .asciiz "Enter the value of c\n"
	prompt4: .asciiz "The result of d is:\na - 3 * ( b + c + 8 )\n"
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
	
	li $v0, 4
	la $a0, prompt3
	syscall
	
	li $v0, 5
	syscall
	
	move $s2, $v0
	
	add $s1, $s1, $s2
	add $s1, $s1, 8
	mul $s1, $s1, 3
	sub $s0, $s0, $s1
	
	li $v0, 4
	la $a0, prompt4
	syscall
	
	li $v0, 1
	addi $a0, $s0, 0
	syscall