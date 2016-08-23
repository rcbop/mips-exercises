		#################################################
		#          exe3	   MIPS assembly         		#
		#          author: Rogério Peixoto				#
		#################################################

		.data
		.text
main:	
		# for (i=0;i<6;i++) { a++; }
		li 	 $t1, 0 
		li   $s1, 6
loop:	
		beq	 $t1, $s1, exit
		addi $t1, $t1, 1
		j	 loop
exit:
		# printf("%i",a);
		li	 $v0, 1
		add	 $a0, $t1, $zero
		syscall