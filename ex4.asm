.data						
	_VETOR: .word 0x01,0x02,0x03,0x04,0x05
.text
.globl main
main:
	la  $s4, _VETOR
	# $t0 = vetor[2]
	lw $t0, 8($s4)
	addi $t1, $t0, 1	
	# Multiplica o deslocamento por 4 (tamanho de uma palavra)
	sll $t1, $t1, 2
	
	add 	$t2, $s4, $t1
	lw	$t3, ($t2)
	sw	$t3, ($s4)
	
	li	$v0, 1
	lw	$a0, ($s4)
	syscall
	