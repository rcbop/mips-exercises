		#################################################
		#          exe1	   MIPS assembly         		#
		#          author: Rogério Peixoto				#
		#################################################
				
		.globl	main

		# data directives
		.data
		# text assembler directive
		.text
		# $t1 = a = 1
		# $t2 = b = 3
		# $t3 = c = 5
		# $t4 = d = 10
		# $s0 = i = 0 
main:
		# int x = 5
		li	  $t1, 5
		# int y = 4
		li	  $t2, 4
		# const 3
		li    $t3, 3
		# 3 * y
		mult  $t3, $t2
		mflo  $t4
		# 3 * y + 6
		addi  $t0, $t4, 6
		# x^2
		mult  $t1, $t1
		mflo  $t4
		# 5x^2
		mult  $t1, $t4
		mflo  $t4
		# z = 5x^2 + 3y + 6
		add   $s1, $t0, $t4

		# print
		li    $v0, 1
		add   $a0, $s1, $zero
		syscall
 

