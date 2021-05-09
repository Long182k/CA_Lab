					.data
information:		.asciiz" Nguyen Thanh Long \n ITITRG18012 "	
infor2:				.asciiz"L"				
					.text
					.globl main


main:

la $a0, information # load the argument string
	li $v0,4 	# load the system call (print)
	syscall		# print the string
	jr $ra		# return to caller (_Start)	