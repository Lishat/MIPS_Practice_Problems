.data
fout: .asciiz "output.txt"			#gives output in home directory
string: .ascii "Hello World\n"
stringend:

.text

main:
    li $v0, 13
    la $a0, fout
    li $a1, 1
    li $a2, 0
    syscall 

    move $a0, $v0  
    li $v0, 15
    la $a1, string
    la $a2, stringend
    la $a3, string
    subu $a2, $a2, $a3
    syscall

    li $v0, 16 
    syscall
