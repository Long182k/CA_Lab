.data		# the data segment
.text		# the code segment
.globl main
main:
	# Load 0xDEADBEEF into $t1
	li $t1, 0xDEADBEEF
	li $t4, 0xF

	# t3 = t1 AND 0xF = F
	and $t3, $t1, $t4
	# t2 = t3 OR t2 = F
	or $t2, $t3, $t2
	# t2 << 1 --> t2 = F0
	rol $t2, $t2, 4
	# t1 >> 1 --> t1 = 0DEADBEE
	ror $t1, $t1, 4 
	
	and $t3, $t1, $t4
	or $t2, $t3, $t2
	rol $t2, $t2, 4
	ror $t1, $t1, 4 

	and $t3, $t1, $t4
	or $t2, $t3, $t2
	rol $t2, $t2, 4
	ror $t1, $t1, 4 

	and $t3, $t1, $t4
	or $t2, $t3, $t2
	rol $t2, $t2, 4
	ror $t1, $t1, 4 

	and $t3, $t1, $t4
	or $t2, $t3, $t2
	rol $t2, $t2, 4
	ror $t1, $t1, 4 

	and $t3, $t1, $t4
	or $t2, $t3, $t2
	rol $t2, $t2, 4
	ror $t1, $t1, 4 

	and $t3, $t1, $t4
	or $t2, $t3, $t2
	rol $t2, $t2, 4
	ror $t1, $t1, 4 

	and $t3, $t1, $t4
	or $t2, $t3, $t2
	
	jr $ra				# return to caller (__start)
