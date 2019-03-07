.data
	prompt1: .asciiz "Enter the number whose fibonacci is to be calculated:\n"
	prompt2: .asciiz "\nThe fibonacci of the number input is:\n"
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
	
	lw $a0, number		#sending the number as an argument in fibonacci function
	jal fib
	sw $v0, answer
	
	li $v0, 4
	la $a0, prompt2		#printing the prompt2
	syscall
	
	li $v0, 1
	lw $a0, answer		#printing the answer
	syscall
	
	li $v0, 10		#ending the program
	syscall
fib:
	bgt $a0, 1, fib_recurse
	move $v0, $a0
	jr $ra
fib_recurse:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	add $a0, $a0, -1
	jal fib
	lw $a0, 4($sp)
	sw $v0, 8($sp)
	add $a0, $a0, -2
	jal fib
	lw $t0, 8($sp)
	add $v0, $t0, $v0
	
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
