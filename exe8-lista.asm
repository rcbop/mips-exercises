    #################################################
    #          exe8    MIPS assembly                #
    #          author: Rogério Peixoto              #
    #################################################
    
      .globl  main

      # data directives
      .data
      # A = [1,12,35,473,2,32,4]
A:	  .word 1,12,35,473,2,32,4
	  # B = [0,3,12,32,3,4,9].
B: 	  .word 0, 3,12, 32,3, 4,9
      # text assembler directive
      .text
main:
	  
      # sum( A[], B[])
sum: