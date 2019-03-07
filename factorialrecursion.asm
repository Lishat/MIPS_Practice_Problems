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
	jal factorial
	sw $v0, answer
	
	li $v0, 4
	la $a0, prompt2		#printing the prompt2
	syscall
	
	li $v0, 1
	lw $a0, answer		#printing the answer
	syscall
	
	li $v0, 10		#ending the program
	syscall
	
factorial:
	subu $sp, $sp, 8	#alloting space for two integers i.e stack
	sw $ra, ($sp)		#stores the argument at bottom of stack
	sw $s0, 4($sp)		
	
	li $v0, 1
	beq $a0, 0, factorialDone
	
	move $s0, $a0
	sub $a0, $a0, 1		#decrementing the argument by 1
	jal factorial		#calling the factorial function again with argument less than 1

factorialDone:			#this function is called as many times due to jr $ra, normally stack accessing function
	mul $v0, $s0, $v0
	lw $ra, ($sp)
	lw $s0, 4($sp)
	addu $sp, $sp, 8	
	jr $ra			#sending to the call in main function
