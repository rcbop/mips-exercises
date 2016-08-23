    #################################################
    #          exe7    MIPS assembly                #
    #          author: Rogério Peixoto              #
    #################################################
    
      .globl  main

      # data directives
      .data
str:  .asciiz "Arquitetura de Computadores"
char: .word   'e'
      # text assembler directive
      .text
main:
      la    $s0, str
      la    $s1, char
      li    $s2, 0
loop:
      lb    $t0, 0($s0)
      lb    $t1, 0($s1)
      # if str[i] == char
      bne   $t0, $t1, else
      # str[i++]
      addi  $s0, $s0, 1
      # contador++
      addi  $s2, $s2, 1
else:
      addi  $s0, $s0, 1
      beq   $t0, '\0', end
      j     loop
end:  
      li    $v0, 1
      add   $a0, $s2, $zero
      syscall
      li    $v0, 10
      syscall
