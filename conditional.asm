.data
	prompt1: .asciiz "The Numbers are equal\n"
	prompt2: .asciiz "The Numbers aren't equal\n"
	
.text
main:
	addi $t0, $zero, 15
	addi $t1, $zero, 20
	beq  $t0, $t1, numbersEqual
	bne  $t0, $t1, numbersnotEqual
	li $v0, 10
	syscall
	
numbersEqual:
	li $v0, 4
	la $a0, prompt1
	syscall
	
numbersnotEqual:
	li $v0, 4
	la $a0, prompt2
	syscall