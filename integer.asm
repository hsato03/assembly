.data
	age: .word 20

# prints an integer to the screen
.text
	li $v0, 1
	lw $a0, age
	syscall