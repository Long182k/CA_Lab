.data		# the data segment
.text		# the code segment
.globl main
main:
	li		$t0, 0xFFF			# Operand 1
	li 		$t1, 0xFFF			# Operand 2

	mult	$t0, $t1			# $t0 * $t1 = Hi and Lo registers
	mflo	$t2					# copy Lo to $t2
	
	jr 		$ra