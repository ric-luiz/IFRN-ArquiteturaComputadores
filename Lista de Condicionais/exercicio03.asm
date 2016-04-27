#Desenvolva um programa que leia dois números e mostre o maior.

#Regra : O maior sera colocado no registrador 10, caso sejam iguais deixa o 0

#Entrada de Dados
addi $8,$0,10
addi $9,$0,10

#Seria como um if a > b
beq $8,$9,fim
	#verifica quem é maior e coloca 1 no reg 10
	slt $10,$8,$9	#Obesevação: Com O slt podemos fazer o <, se o valor a<b entao o valor 1 vai para o $10	
	beq  $10,1,maior2
	maior1: add $10,$0,$8	#se o maior for o valor do $8
		j fim
	maior2: add $10,$0,$9	#se o maior for o valor do $9	
fim:nop
