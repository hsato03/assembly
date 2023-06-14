.data
	i: .word 0
	y: .word 4
	x: .word 2
	z: .word 2
.text
	lw $t0, i
	lw $t1, y
	lw $t2, x
	lw $t3, z
	
	loop:
		# verificar se i < y
		slt	$t4, $t0, $t1
		beqz  $t4, exit
	
		# lo = x * z
		mult $t2, $t3		
		# x = lo
		mflo $t2
		# i += 1
		addi $t0, $t0, 1
		j loop
	exit:
