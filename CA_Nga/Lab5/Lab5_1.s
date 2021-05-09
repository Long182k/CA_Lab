.data		# the data segment
.text		# the code segment
.globl main
main:
	li		$t0, 12			# t0 = x
	mult	$t0, $t0		# Lo = x ^ 2
	mflo	$t1				# t1 = x^2

	li 		$t2, 3			# t2 = 3
	mult	$t1, $t2		# Lo = 3* x^2
	mflo	$t1				# t1 = 3*x^2
	
	li		$t2, 5			# t2 = 5
	mult	$t0, $t2		# Lo = 5 * x 
	mflo	$t2				# t2 = 5 * x

	add 	$t1, $t1, $t2	# t1 = 3*x^2 + 5*x
	addi	$t1, $t1, -12   
	
	jr 		$ra