.data
	_VETOR: .word 0x01,0x02,0x03,0x04,0x05
.text
	
	# a0 = endereco vetor
	# a1 = tamanho vetor
	move $t0, $zero
	loop: sll $t1, $t0, 2
		 add $t2, $a0, $t1
		 sw $zero, 0($t2)
	  	 addi $t0, $t0, 1
		 slt $t3, $t0, $a1
		 bne $t3, $zero, loop
 
 	# A construção de iteração utilizada é o Repeat e o 
 	# código itera sobre um intervalo definido pelo valor de $a1 e, em cada iteração, 
 	# armazena o valor zero em uma posição de memória calculada com base 
 	# no valor atual de $t0. O loop continua até que o valor de $t0 alcance o valor de $a1.
 



