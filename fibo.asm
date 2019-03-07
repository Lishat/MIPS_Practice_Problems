.data
	prompt1: .asciiz "Enter the number whose factorial is to be calculated:\n"
	prompt2: .asciiz "\nThe factorial of the number input is:\n"
	number: .word 0
	answer: .word 0
.text
	.globl main
main:
	li $v0, 4
	la $a0, prompt1		#printing the prompt
	syscall
	
	li $v0, 5
	syscall			#storing the integer in number
	sw $v0, number
	
	lw $a0, number		#sending the number as an argument in factorial function
	jal fibo
	sw $v0, answer
	
	li $v0, 4
	la $a0, prompt2		#printing the prompt2
	syscall
	
	li $v0, 1
	lw $a0, answer		#printing the answer
	syscall
	
	li $v0, 10		#ending the program
	syscall

fibo:
	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $v0, 8($sp)
	
	bne $s0, $zero, notzero
	li $v0, 0
	j fibo
	
notzero:
	li $v0, 1
	bne $s0, $v0, grt
	li $a0, 1
	
grt:
	addi $s0, $a0, -1
	jal fibo
	move $v0, $s0
	addi $s0, $a0, -2
	jal fibo
	add $s0, $v0, $s0
	