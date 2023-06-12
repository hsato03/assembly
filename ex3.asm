.data
	a: .word 1
	b: .word 2
	c: .word 3
	d: .word 4
	
.text
	lw	$s0, a
	lw	$s1, b
	lw	$s2, c
	lw	$s3, d
	
	add  $t0, $s0, $s1
	add  $t1, $s2, $s3
	add  $t2, $t1, $t2
	mul  $s4, $t2, 4
	
	li $v0, 1
	move $a0, $s4
	syscall
	