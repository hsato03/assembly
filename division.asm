.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero,  8
	
	# div $s0, $t0, $t1
	# div $s0, $t0, 10
	
	div $t0, $t1
	
	mflo $s0 # Quotient
	mfhi $s1 # Remainder
	
	li 	$v0, 1
	move $a0, $s1
	syscall
	