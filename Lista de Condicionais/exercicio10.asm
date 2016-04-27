#Desenvolva um programa que dada uma data, representada através três
#números inteiros, um para o dia, um para o mês e outro para o ano, informe
#a data do dia seguinte.

#Regra: A data será coloca nos proprios registradores de entrada

#entrada de dados

addi $8,$0,31 #dia
addi $9,$0,12 #mes
addi $10,$0,2015 #ano

addi $21,$0,32 # Validador de Dia
addi $22,$0,13 # Validador de mes

#Somando um dia na data
addi $8,$8,1 #dia

#Verifica se vai passar para o outro mes
slt $20,$8,$21
	if1:bnez $20,fim1
		subi $8,$8,31
		addi $9,$9,1	
	fim1:
	
#Verificar se vai passar para o outro ano
slt $20,$9,$22
	if2:bnez $20,fim2
		subi $9,$9,12
		addi $10,$10,1
	fim2:
