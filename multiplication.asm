.data
	
.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	# The multiply product goes to $lo register
	mult $t0, $t1
	
	# Assign $lo value to a given register
	mflo $s0
	
	li	$v0, 1
	move $a0, $s0
	syscall
