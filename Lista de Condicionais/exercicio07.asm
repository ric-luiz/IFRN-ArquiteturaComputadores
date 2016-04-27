#Desenvolva um programa que dado um número inteiro n, informe se o
#número é par ou ímpar.

#Regra: Colocar no $10 1 para impar e 0 para par

addi $8,$0,12	#numero

div $10,$8,2
mfhi $10

bnez $10,impar
	par: addi $10,$0,0
	     j fim
	impar: addi $10,$0,1
fim:nop