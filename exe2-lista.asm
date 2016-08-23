		#################################################
		#          exe2	   MIPS assembly         		#
		#          author: Rogério Peixoto				#
		#################################################
				
		.globl	main

		# data directives
		.data
		# text assembler directive
		.text
main:
		# if ( a < b && c != 0 && d == 'a') e = 1;
		# $t1 = a = 10;
		li   $t1, 10
		# $t2 = b = 15
		li   $t2, 15
		# $t3 = c = 7;
		li   $t3, 7
		# $t4 = d = 'a';
		li   $t4, 'a'

		bgt  $t1, $t2,   end
		beq  $t3, $zero, end
		li   $s1, 'a'
		bne  $t4, $s1,   end
		# e = 1 
		li   $t0, 1
		li   $v0, 1
		add  $a0, $t0, $zero
		syscall
end:
		li	 $v0, 10
		syscall