.data
	message: .asciiz "Hello everyone, My Name is Subhadeep\n"
.text
main:
	jal displayMessage
	
	addi $s0, $zero, 8
	
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	li $v0, 10
	syscall
	
displayMessage:
	li $v0, 4
	la $a0, message
	syscall
	
	jr $ra