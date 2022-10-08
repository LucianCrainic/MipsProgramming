.text
.globl main
main:
	li $v0, 8 #read a string into a0
	la $a0, txt1
	move $a1, $a0
	syscall
	li $v0, 8 #read a string into a0
	la $a0, txt2
	syscall
	

	jal SIMILITUDINE
	
	move $t9,$v0
	move $a0,$t9
	li $v0,1
	syscall
	li $v0, 10 		# FINE PROGRAMMA
	syscall
SIMILITUDINE:
	li $t0,0
	li $t2,0
	li $t5, 0
CICLO:
	lb $t1, txt1($t0)
	lb $t3, txt2($t2)
	beq $t1,0,secondo
secondo:
	beq $t3,0,FINE
	beq $t1,$t3,hulk
	addi $t0,$t0,1
	addi $t2,$t2,1
	j CICLO
hulk:
	addi $t5,$t5,1
	addi $t0,$t0,1
	addi $t2,$t2,1
	j CICLO
	
FINE:
	move $v0,$t5
	jr $ra
.data
txt1: .space 200
txt2: .space 200
