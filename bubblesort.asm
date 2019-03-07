.data
	myArray: .space 40
	newLine: .asciiz "\n"
	prompt1: .asciiz "Enter the number to be input\n"
.text
main:
	addi $t0, $zero, 0
	while:
		beq $t0, 40, bubblesort
		li $v0, 4
		la $a0, prompt1
		syscall
		
		li $v0, 5
		syscall
		
		move $t2, $v0
		sw $t2, myArray($t0)
		addi $t0, $t0, 4
		j while
		
bubblesort:
	addi $s0, $zero, 36
	while1:
		beq $s0, 0, print
		addi $s1, $zero, 0
		while2:
			beq $s1, $s0, el
			addi $s2, $s1, 4
			lw $s3, myArray($s1)
			lw $s4, myArray($s2)
			bgt $s3, $s4, swap
			else:
				addi $s1 $s1, 4
				j while2
		el:
			addi $s0, $s0, -4
			j while1
			
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

swap:
	addi $t0, $s3, 0
	addi $s3, $s4, 0
	addi $s4, $t0, 0
	sw $s3, myArray($s1)
	sw $s4, myArray($s2)
	j else