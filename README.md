# Lista de Exercícios MIPS - 2015.2

Orientações:

1. Faça cada programa em um arquivo separado, com nome dado por exercício-
numero_questão.asm. Por exemplo: exercicio-1.asm.
2. Essa lista de exercício corresponde a 20 % da Nota AP1 (2 pontos).

3. Data de entrega: 25/09/2015 (Entregas após essa data serão ignoradas).

4. Coloque todos os exercícios em um único arquivo (.rar ou .zip).
5. Enviar para <...> com o seguinte título (um título diferente será desconsiderado):

[AOC-2015.2] – Entrega 1o. exercício - {NOME DO ALUNO}

Atenção: o código de todas as questões deverá estar claramente comentado, pois caso contrário a correção
será desprezada.

## Exercicio 1.

Converta os seguintes fragmentos de C para a linguagem de montagem MIPS. Assuma que as variáveis a, b, c, d e i estejam atribuídas respectivamente aos registradores $t1, $t2, $t3, $t4 e $s0 possuam valor 1, 3, 5, 10 e 0. (0,5 pontos)

    a) Imprima o valor de Z.
    int x = 5;
    int y = 4;
    𝑧 = 5𝑥 2 + 3𝑦 + 6

    b) Imprima o valor de e
    int a = 10;
    int b = 15;
    int c = 7;
    char d = ‘a’;
    if ( a<b && c!=0 && d == ‘a’ ) e = 1;

    c) Imprima o valor de b
    int a = 10; .
    if (a > 0)
    b = a + 10;
    else
    b = a - 10;

    d) Imprima o valor de a.
    int a = 0;
    int b = 15;
    for(int i=0; i<5; i++)
    {
    a += b;
    }

## Exercicio 2.

Escreva um programa em MIPS que calcula a soma dos elementos de A começando do índice primeiroIndice e terminando com o índice ultimoIndice.
De acordo com a seguinte assinatura:int sum(int A[], int primeiroIndice, int ultimoIndice) Considere A=[1,12,35,473,2,32,4] e primeiroIndice =1 e ultimoIndice=4. Imprima na tela o valor da soma. (0,25 pontos)

## Exercício 3.

Escreva um programa em linguagem de montagem MIPS em que, dada como entrada uma string de caracteres e um caractere único, no final de sua execução o registrador $2 possua o número de vezes que o caractere aparece na string. Imprima o valor do registrado $2. (0,25 pontos) Considere a string: “Arquitetura de Computadores” e o caractere ‘e’.

## Exercicio 4.

Escrever uma rotina que faz a soma de dois vetores A e B, colocando o resultado em A, ou seja, A [i] = A[i] + B[i], para i = 0, ..., n-1, usando as instruções do MIPS. Considerar $4, o ponteiro para o início do vetor A, e $5 o ponteiro para o início do vetor B. Usar $t0 e $t1 como registradores temporários. (0,5 pontos) Considere A=[1,12,35,473,2,32,4] e B=[0,3,12,32,3,4,9].

## Exercicio 5.

Faça um programa em linguagem de montagem MIPS que receba como entrada uma string com n caracteres e gere como saída uma nova string com a inversão da ordem dos caracteres.
Essa nova string também terá a troca das letras maiúsculas por minúsculas e vice-versa. Por exemplo:
se a entrada for HArdwArE a saída deverá ser eRaWDRah. A entrada deve ser lida da memória e a
saída deve ser escrita na memória. Caso a string possua algum caractere que não seja letra o valor
1 deverá ser armazenado no registrador v1 e o programa deverá ser encerrado. Lembramos que
o fim da string é dado pelo caractere nulo e que para manipular string nessa questão
recomendamos que sejam usadas variáveis do tipo ASCIIZ. (0,5 pontos)
Atenção: os caracteres deverão ser armazenados em sequência na memória.