#Desenvolva um programa que leia três números e mostre o maior.

#Regra : O maior sera colocado no registrador 11, caso sejam iguais deixa o 0. O reg 20 serve para verificar quem é maior(recebe 0 ou 1)

#Entrada de Dados
addi $8,$0,19
addi $9,$0,12
addi $10,$0,40

#Verifica as 2 primeiras variaveis para pegar a maior
beq $8,$9,fim
	#verifica quem é maior e coloca 1 no reg 20
	slt $20,$8,$9	#Obesevação: Com O slt podemos fazer o <, se o valor a<b entao o valor 1 vai para o $20	
	beq  $20,1,maior2
	maior1: add $11,$0,$8	#se o maior for o valor do $8
		j fim
	maior2: add $11,$0,$9	#se o maior for o valor do $9	
fim:nop

#Agora vamos verificar o maior do ultimo teste com o terceiro elemento
beq $11,$10,fim2
	#verifica quem é maior e coloca 1 no reg 20
	slt $20,$11,$10	#Obesevação: Com O slt podemos fazer o <, se o valor a<b entao o valor 1 vai para o $20
	beq  $20,1,maior4
	maior3: add $11,$0,$11	#se o maior for o valor do $11
		j fim2
	maior4: add $11,$0,$10	#se o maior for o valor do $10
fim2:nop