.data
	number1: .double 3.84
	number2: .double 2.21
	newLine: .asciiz "\n"
.text
main:
	ldc1 $f2, number1
	ldc1 $f4, number2
	add.d $f12, $f2, $f4
	
	li $v0, 3
	syscall

	li $v0, 4
	la $a0, newLine
	syscall
	
	sub.d $f12, $f2, $f4
	
	li $v0, 3
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	mul.d $f12, $f2, $f4
	
	li $v0, 3
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	div.d $f12, $f2, $f4
	
	li $v0, 3
	syscall
	
