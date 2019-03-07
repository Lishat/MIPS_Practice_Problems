.data
	prompt1: .asciiz "It is True\n"
	prompt2: .asciiz "It is False\n"
	number1: .float 3.84
	number2: .float 3.84
.text
main:
	lwc1 $f0, number1
	lwc1 $f2, number2

	c.eq.s $f0, $f2
	bc1t exit
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 10
	syscall
	
exit:
	li $v0, 4
	la $a0, prompt1
	syscall