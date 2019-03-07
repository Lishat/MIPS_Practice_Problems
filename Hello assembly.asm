.data
	msg: .asciiz "Hello assembly"
	
.text

main:
	li $v0, 4
	la $a0, msg
	syscall