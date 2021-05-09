.data		# the data segment
prompt:     .asciiz "Input: "
.text		# the code segment
.globl main
main:
	li	$t0, 1600000	# t0 = x = 1600000
	li	$t1, 80000		# t1 = y = 80000
	li	$t2, 400000		# t2 = z = 400000

	div  $t0, $t2		# t0 / t2 -> lo hi
	mflo $t3			# t3 = ( x / z )

	mult $t3, $t1		# $t3 * t1 = ( x / z ) * y
	mflo $t3			# copy Lo to $t2 = 320000

	jr 		$ra