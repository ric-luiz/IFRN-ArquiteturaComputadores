#Desenvolva um programa que leia três números (a, b e c) e deixe-os em
#ordem decrescente, ou seja, o maior deverá ficar armazenado na variável a,
#o menor na c e o outro da b.

#Regra: Os numeros serão ordenados do reg 11 à 13, do maior para o menor

#Entrada de Dados
addi $8,$0,20	#n1
addi $9,$0,40	#n2
addi $10,$0,6	#n3

add $11,$0,$8	#a
add $12,$0,$8	#b
add $13,$0,$8	#c

slt $20,$9,$8
	if1:bnez $20,else1
		add $11,$0,$9	#a
		j fim1
	else1:
		add $12,$0,$9	#b		
	fim1:
slt $20,$10,$11
	if2:bnez $20,else2
		add $13,$0,$12	#a
		add $12,$0,$11	#a
		add $11,$0,$10	#a
		j fim2
	else2:
		slt $20,$10,$12
			if3:bnez $20,else3
				add $13,$0,$12	#b
				add $12,$0,$10	#a
				j fim3
			else3:
				add $13,$0,$10	#b	
			fim3:	
	fim2:
	

	
	