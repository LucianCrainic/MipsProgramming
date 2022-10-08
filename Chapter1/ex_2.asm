.text
.globl main
main:
	lw $t1, BATMAN # LEGGO BATMAN
	lw $t2, ROBIN # LEGGO ROBIN
	
	bgt $t2,$t1, DO_IF # SE ROBIN>BATMAN SALTA E SCRIVE IN CONSOLE 
	j OUT_IF #SALTA A FINE
	
DO_IF:
	la $a0,FALSO 
	li $v0,4
	syscall
	
OUT_IF:
	lw $t0,VERO #LEGGO VERO = $t0 a 1
	li $v0, 10 #TERMINAZIONE PROGRAMMA
	syscall
	
.data
BATMAN: .word 2
ROBIN: .word 3
VERO: .word 1
FALSO: .asciiz "Batman non è maggiore di Robin"
