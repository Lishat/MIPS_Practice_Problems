.data
	doub: .double 7.202
	zero.doub: .double 0.0
	
.text
main:
	ldc1 $f2, doub
	ldc1 $f0, zero.doub
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall
	