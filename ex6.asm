.data
	# valores de 5 a 50 em hexadecimal (passo 5)
	_CONTA: .word 0x05,0x0A,0x0F,0x014,0x19,0x1E,0x23,0x28,0x2D,0x32
.text
	la	$s0, _CONTA
	lw	$t1, 16($s0)
	lw	$t2, 28($s0)
	
	add	$t3, $t1, $t2
	div	$s0, $t3, 2
		
	li	$v0, 1
	move $a0, $s0
	syscall
	
