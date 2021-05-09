.data		# the data segment
.text		# the code segment
.globl main
main:
	nor $t1, $t1, $t1

	jr $ra				# return to caller (__start)
