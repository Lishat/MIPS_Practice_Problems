.data
fin: .asciiz "input.txt"		#accepts it from home directory
string: .space 128
newLine: .asciiz "\n"
prompt: .asciiz "The string is:\n"
.text
main:
	li $v0, 13
	la $a0, fin
	li $a1, 0
	li $a2, 0
	syscall
	
	move $s0, $v0
	
	li $v0, 14
	move $a0, $s0
	la $a1, string
	li $a2, 13
	syscall
	
	li $v0, 4
	la $a0, prompt
	syscall

	li $v0, 4
	la $a0, string
	syscall
	
	li $v0, 16
	move $a0, $s0
	syscall
