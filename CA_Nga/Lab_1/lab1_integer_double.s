
		.data		# the data segment
prompt:		.asciiz	"Enter an integer: "
result: 	.asciiz "The result is: "

#########################################################
#					TEXT SEGMENT						#
#	This is where all the instructions reside			#
#########################################################

		.text		# the code segment
		.globl main
main:
	# print out the prompt
	la $a0, prompt		
	li $v0, 4		
	syscall		
	
	# read in an integer
	li $v0, 5			
	syscall
	move $t0, $v0
	
	# double the input
	sll $t0, $t0, 1
	
	# print out the result message
	la $a0, result
	li $v0, 4
	syscall	
	
	# print out the doubled integer
	move $a0, $t0 
	li $v0, 1		
	syscall	

	jr $ra			# return to caller (__start)
