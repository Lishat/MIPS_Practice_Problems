.data
	number1: .float 3.84
	number2: .float 2.21
	newLine: .asciiz "\n"
.text
main:
	lwc1 $f2, number1
	lwc1 $f5, number2
	add.s $f12, $f2, $f5
	
	li $v0, 2
	syscall

	li $v0, 4
	la $a0, newLine
	syscall
	
	sub.s $f12, $f2, $f5
	
	li $v0, 2
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	mul.s $f12, $f2, $f5
	
	li $v0, 2
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	div.s $f12, $f2, $f5
	
	li $v0, 2
	syscall
	