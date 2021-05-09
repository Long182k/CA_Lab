.data		# the data segment
.text		# the code segment
.globl main
main:
	# write number DEADBEEF to register $t1
	# li $t1, 0xDEADBEEF
	# Load half-word DEAD into $t1
	lui $t1, 0xDEAD
	# t1 = t1 OR 0xBEEF 
	ori $t1, $t1, 0xBEEF
	jr $ra				# return to caller (__start)
