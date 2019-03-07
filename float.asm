.data
	float: .float 3.141532

.text
main:
	li $v0, 2
	lwc1 $f12, float
	syscall
