    #################################################
    #          exe9    MIPS assembly                #
    #          author: Rogério Peixoto              #
    #################################################
    
    .globl  main

    # data directives
    .data 
string:     .space 40 # s0
stringInv:  .space 40 # s1
	   # text assembler directive
    .text
main:
	   # Buffer de entrada
	   la $a0, string
	   # Configura o sistema para ler caracteres
     li $v0, 8
     # Quantidade de caracteres que serão lidos
     li $a1, 40
     # Chamada no sistema operacional 
     syscall
  
     # Carrega "string" no registrado s0
     la $s0, string
     # Carrega "stringInv" no registrado s1
     la $s1, stringInv
  
     # Carregando contador no registrador "s2"
     li $s2, 0
  
loop1:
     # Carrega um byte a partir do endereço de memoria "0" de "s0" para o registrador "t0"
     lb $t0, 0($s0)
     # A cada caractere pecorrido acrescente em "1" no registrador "s2"
     addi $s2, $s2, 1
     # Carrega string[i+1]
     addi $s0, $s0, 1	
     # Caso "string" não tenha chegado ao fim, vai para "loop1"
     bne $t0,$zero , loop1
  
     # O valor do contador é subtradido de "2", para chegar ao o tamanho da "string" 
     sub $s4, $s2, 2
     # O valor do contador é subtradido de "3", para chegar ao ultimo caractere da "string" 
     sub $s2, $s2, 3
  
     # Carrega "string" no registrado "s0"
     la $s0, string
     # Vai para o ultimo caractere da "string"
     add $s0, $s0, $s2
  
     # Contador
     li $s5, 0
  
loop2:
     # Carrega um byte a partir do endereço de memoria "0" de "s0" para o registrador "t0"
     lb $t0, 0($s0)
  
     # Carregando o registrado "s2" com o valor de 91, conforme a tabela ascii 90 é o ultimo caractere maiusculo
     li $s2, 91
     # Caso "t0" seja menor que 91, o caractere será letra maiusculo e vai para L1
     blt $t0, $s2, L1
     # Passa para maiuscula
     subi $t1, $t0, 32
L1:
     # Caso "91" seja menor que "t0", o caractere será letra minuscula e vai para L2, pois a conversão ja foi feita acima
     blt $s2, $t0, L3
     # Passa para minuscula
     addi $t1, $t0, 32
L3:
     # Carrega a string invertida e com os caracteres trocados para memoria
     sb $t1, 0($s1)
     # Faz string[i-1]
     subi $s0, $s0, 1
     # Faz stringInv[i+1]
     addi $s1, $s1, 1
     # Incrementa o contador "s5"
     addi $s5, $s5, 1
     # Se "s5" for igual a quantadade de caracteres da "string" o "loop2" acaba 
     bne $s5, $s4, loop2
  
     # Buffer de entrada
	   la $a0, stringInv
	   # Configura o sistema para imprimir "stringInv"
     li $v0, 4
     # Chamada no sistema operacional 
     syscall
  
     # Configura o registrado para sair
     li $v0, 10
     syscall