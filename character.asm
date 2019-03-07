.data
	char: .byte 'a'

.text
main:
	li $v0, 4
	la $a0, char
	syscall