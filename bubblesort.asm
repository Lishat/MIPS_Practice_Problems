.data
	myArray: .space 40
	newLine: .asciiz "\n"
	prompt1: .asciiz "Enter the number to be input\n"
.text
main:
	addi $t0, $zero, 0
	while:
		beq $t0, 40, print
		li $v0, 4
		la $a0, prompt1
		syscall
		
		li $v0, 5
		syscall
		
		move $t2, $v0
		sw $t2, myArray($t0)
		addi $t0, $t0, 4
		j while
		
print:
	addi $t0, $zero, 0
	loop:
		beq $t0, 40, exit
		li $v0, 1
		lw $a0, myArray($t0)
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		addi $t0, $t0, 4
		j loop
		
exit:
	li $v0, 10
	syscall
			