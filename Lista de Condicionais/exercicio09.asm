#Desenvolva um programa que, dado três números inteiros dia, mes e ano,
#que representam o dia, o mês e o ano de uma data qualquer, informe se
#esta data é válida.

#Regra: Se a data for valida coloca 0 no reg 11 senão coloca 1

#entrada de dados

addi $8,$0,31 #dia
addi $9,$0,12 #mes
addi $10,$0,2015 #ano

addi $21,$0,31 # Validador de Dia
addi $22,$0,12 # Validador de mes

#Validar Dia
slt $20,$8,$21	
	beq $8,$21,fim1	
	bnez $20,fim1
		addi $11,$0,1
	fim1:

#validar mes
slt $20,$9,$22		
	beq $9,$22,fim2
	bnez $20,fim2
		addi $11,$0,1
	fim2:

#validar Ano	
slt $20,$10,$0
	beqz $20,fim3
		addi $11,$0,1
	fim3:

		
	