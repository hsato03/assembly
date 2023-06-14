.data

.text
	la $t8, 0x00BADBED
	la $t9, 0xAFADA007
	
	sll $t1, $t8, 4
	and $t1, $t1, $t9
	ori $s6, $t1, 20
	
	# $s6 = 0x0bada014