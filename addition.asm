.data
	a: .word 15
	b: .word 25
.text
main:
	lw $t0, a($0)
	lw $t1, b($0)
	add $t0, $t0, $t1
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall