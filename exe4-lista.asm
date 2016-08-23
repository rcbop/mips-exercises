		#################################################
		#          exe4	   MIPS assembly         		#
		#          author: Rogério Peixoto				#
		#################################################

		.data
		.text
main:	
		#int a = 10;
		li 		$t1, 10
		# if (a>0) { b = a + 10} else { b = a - 10 }
		beq		$t1, $zero, else
		addi	$t0, $t1, 10
		j		end
else:
		sub		$t0, $t1, 10
end:
		li		$v0, 1
		add 	$a0, $t0, $zero
		syscall
		li		$v0, 10
		syscall