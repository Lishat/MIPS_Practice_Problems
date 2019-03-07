.data
string1 .asciiz print this
.text
li $v0, 4
la $a0, string1
syscall
