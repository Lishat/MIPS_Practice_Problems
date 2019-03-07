.data
	a: .word 25
	b: .word 15
.text
main:
	lw $s0, a
	lw $s1, b
	
	sub $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall