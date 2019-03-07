.data
l1:	.word 12
l2:	.word 14
res:	.space 4
.text
.globl main
main:	lw $t0, l1($0)
	lw $t1, l2($0)
	add $t0, $t0, $t1
	sw $t0, res($0)
	li $v0, 10
	syscall