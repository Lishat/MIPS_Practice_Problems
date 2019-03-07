.data
	word: .word 4
.text
main:
	li $v0, 5
	syscall
	sw $v0, word
	
	li $v0, 35
	lw $a0, word
	syscall