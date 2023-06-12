.data

.text
	addi $s0, $zero, 4
	
	# The last parameter (n) represents 2^n
	# ex.: 4($s0) * 2^3
	sll	$t0, $s0, 3

	li	$v0, 1
	move	$a0, $t0
	syscall
	