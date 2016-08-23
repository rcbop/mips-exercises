		#################################################
		#          exe6	   MIPS assembly         		#
		#          author: Rogério Peixoto				#
		#################################################
		.globl	main

		# data directives
		.data
		# A = [1,12,35,473,2,32,4] 
A:		.word 1,12,35,473,2,32,4
		# text assembler directive
		.text
main:
		# primeiroIndice = 1 = i
		li 		$a1, 1 
		# ultimoIndice = 4 = j
		li 		$a2, 4
		# chama função
		jal		sum
		# imprime inteiro
		li		$v0, 1
		# move valor de acumulador para argumento de syscall
		add 	$a0, $s0, $zero
		syscall
		li		$v0, 10
		syscall
		# int sum(int A[], int i, int j)
sum:
		# seta acumulador para zero
		li		$s0, 0
loop:
		# carrega addr base de A em t1
		la		$t1, A
		# convert para addr valido
		sll 	$t3, $a1, 2
		# adiciona deslocamento
		add		$t1, $t1, $t3
		# acessa valor
		lw		$t4, 0($t1)
		# acumulador de valor
		add  	$s0, $s0, $t4
		# i++
		addi 	$a1, $a1, 1
		# while i < j
		bgt		$a1, $a2, end
		j 		loop
end:
		# return result;
		jr		$ra
