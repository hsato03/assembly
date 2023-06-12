.data
	x: .word 2
	y: .word 3
	z: .word 4
.text
	lw $s0, x
	lw $s1, y
	lw $s2, z
	
	li $v0, 1
#	lw $a0, x # way to print with variables
	move $a0, $s0 # way to print with registers
	syscall
	
	li $v0, 1
#	lw $a0, y
	move $a0, $s1
	syscall
	
	li $v0, 1
#	lw $a0, z
	move $a0, $s2
	syscall