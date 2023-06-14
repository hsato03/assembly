.data
	a: .word 0
	b: .word 0
	c: .word 0
	d: .word 0
	
	i: .word 0
	x: .word 4
	y: .word 6
	z: .word 2
	
	_VETOR: .word 0x01,0x02,0x03,0x04,0x05
	
	# valores de 5 a 50 em hexadecimal (passo 5)
	_CONTA: .word 0x05,0x0A,0x0F,0x014,0x19,0x1E,0x23,0x28,0x2D,0x32
.text
	# Exercicio 1
	lw $s0, x
	lw $s1, y
	lw $s2, z
	addi $t0, $s0, 300 # t0 = x + 300
	sub $t1, $t0, $s1 # t1 = t0 - y
	add $t2, $t1, $s2 # t2 = t1 + z
	addi $t3, $s0, 27 # t3 = x + 27
	add $s0, $t2, $t3 # t4 = t2((x+300)-y)+z + t3(x+27)
	
	# Exercicio 2
	lw $s0, a
	lw $s1, b
	lw $s2, c
	
	and $t0, $s0, $s1 # a & b
	nor $s0, $s0, $zero # !a
	and $t1, $s0, $s2 # !a & c
	or $t2, $t0, $t1 # (a & b) | (!a & c)
	
	# Exercicio 3
	lw	$s0, a
	lw	$s1, b
	lw	$s2, c
	lw	$s3, d
	
	add  $t0, $s0, $s1
	add  $t1, $s2, $s3
	add  $t2, $t0, $t1
	mul  $s4, $t2, 4
	
	# Exercicio 4
	la  $s4, _VETOR
	# $t0 = vetor[2]
	lw $t0, 8($s4)
	addi $t1, $t0, 1	
	# Multiplica o deslocamento por 4 (tamanho de uma palavra)
	sll $t1, $t1, 2
	
	add 	$t2, $s4, $t1
	lw	$t3, ($t2)
	sw	$t3, ($s4)
	
	# Exercicio 5
	la $t8, 0x00BADBED
	la $t9, 0xAFADA007
	
	sll $t1, $t8, 4
	and $t1, $t1, $t9
	ori $s6, $t1, 20
	# $s6 = 0x0bada014
	
	# Exercicio 6
	la	$s0, _CONTA
	lw	$t1, 16($s0)
	lw	$t2, 28($s0)
	
	add	$t3, $t1, $t2
	div	$s0, $t3, 2
	
	# Exercicio 7
	lw $t0, i
	lw $t1, y
	lw $t2, x
	lw $t3, z
	
	loop:
		# verifica se i < y
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
	
	# Exercicio 8
 	# A construção de iteração utilizada é o Repeat e o 
 	# código itera sobre um intervalo definido pelo valor de $a1 e, em cada iteração, 
 	# armazena o valor zero em uma posição de memória calculada com base 
 	# no valor atual de $t0. O loop continua até que o valor de $t0 alcance o valor de $a1.
 	