.data		# the data segment
.text		# the code segment
.globl main
main:
	# Load 0xDEADBEEF into $t1
	li $t1, 0xDEADBEEF
	# t3 = t1 AND 0xF = F
	andi $t3, $t1, 0xF
	# t2 = t3 OR t2 = F
	or $t2, $t3, $t2
	# t2 << 1 --> t2 = F0
	sll $t2, $t2, 4
	# t1 >> 1 --> t1 = 0DEADBEE
	srl $t1, $t1, 4 

	# t3 = t1 AND 0xF = E
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2
	sll $t2, $t2, 4
	srl $t1, $t1, 4

	# t3 = t1 AND 0xF = E
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2
	sll $t2, $t2, 4
	srl $t1, $t1, 4

	# t3 = t1 AND 0xF = B
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2
	sll $t2, $t2, 4
	srl $t1, $t1, 4

	# t3 = t1 AND 0xF = D
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2
	sll $t2, $t2, 4
	srl $t1, $t1, 4

	# t3 = t1 AND 0xF = A
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2
	sll $t2, $t2, 4
	srl $t1, $t1, 4

	# t3 = t1 AND 0xF = E
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2
	sll $t2, $t2, 4
	srl $t1, $t1, 4

	# t3 = t1 AND 0xF = D
	andi $t3, $t1, 0xF
	or $t2, $t3, $t2

	jr $ra				# return to caller (__start)
