		#################################################
		#          exe5	   MIPS assembly         		#
		#          author: Rogério Peixoto				#
		#################################################

		.data
		.text
main:	
		#int a = 0;
		li		$t1, 0
		#int b = 15;
		li		$t2, 15
		# for(int i = 0; i<5; i++) { a+= b; }
		li		$t3, 0
loop:
		beq		$t3, 5, end
		add		$t1, $t1, $t2
		addi	$t3, $t3, 1
		j		loop
end:	
		li		$v0, 1
		add 	$a0, $t1, $zero
		syscall
		li		$v0, 10
		syscall