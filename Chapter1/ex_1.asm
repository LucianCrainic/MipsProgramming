.text
.globl main

main:
lw $t1,pippo
lw $t2,paperino
add $t0,$t1,$t2

li $v0,10
syscall

.data
pippo: .word 4
paperino: .word 6
