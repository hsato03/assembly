.data
	x: .word 4
	y: .word 6
	z: .word 2

.text
	lw $s0, x
	lw $s1, y
	lw $s2, z
	addi $t0, $s0, 300 # t0 = x + 300
	sub $t1, $t0, $s1 # t1 = t0 - y
	add $t2, $t1, $s2 # t2 = t1 + z
	addi $t3, $s0, 27 # t3 = x + 27
	add $s0, $t2, $t3 # t4 = t2((x+300)-y)+z + t3(x+27)

	li $v0, 1
	move $a0, $s0
	syscall
