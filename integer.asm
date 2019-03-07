.data
	age: .word 12
	
.text
main:
	li $v0, 1
	lw $a0, age
	syscall