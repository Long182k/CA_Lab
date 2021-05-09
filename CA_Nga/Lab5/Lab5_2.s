.data		# the data segment
prompt:     .asciiz "Input: "
.text		# the code segment
.globl main
main:
	li	$t0, -4		# t0 = x = 2
	li	$t1, 3		# t1 = 3
	li	$t2, 2		# t2 = 2

	mult $t1, $t0	# lo = 3 * x
	mflo $t1 		# t1 = lo = 3x
	addi $t1, 7		# t1 = 3x + 7

	mult $t2, $t0	# lo = 2 * x
	mflo $t2 		# t2 = lo = 2x
	addi $t2, 8		# t2 = 2x + 8

	div	 $t1, $t2   # t1/ t2 -> hi, lo
	mfhi $t3		# t3 = hi --> remainder
	mflo $t4 		# t4 = lo --> quotient

	jr 		$ra