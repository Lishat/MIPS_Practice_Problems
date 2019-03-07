.data
	newLine: .asciiz "\n"
.text

main:
	addi $t0, $zero, 0
	
while:
	bge $t0, 10, exit
	addi $t0, $t0, 1
	li $v0, 1
	addi $a0, $t0, 0
	syscall
	li $v0, 4
	la $a0, newLine
	syscall
	j while
	
exit:
	li $v0, 10
	syscall