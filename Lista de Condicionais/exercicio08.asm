#Desenvolva um programa que leia 5 números e informe e maior e o menor

#Regra: O maior valor sera armazenado no reg 15 e o menor no reg 16

addi $8,$0,20	#n1
addi $9,$0,15	#n2
addi $10,$0,20	#n3
addi $11,$0,1	#n4
addi $12,$0,1	#n5

add $15,$0,$8	#Maior
add $16,$0,$8	#Menor

#Primeiro, verificar quem é o maior de todos
slt $20,$8,$9
	beqz $20,end
		add $21,$0,$9	#Maior
	end:nop	
slt $20,$21,$10
	beqz $20,end2
		add $21,$0,$10	#Maior
	end2:nop
slt $20,$21,$11
	beqz $20,end3
		add $21,$0,$11	#Maior
	end3:nop
slt $20,$21,$12
	beqz $20,end4
		add $21,$0,$12	#Maior
	end4:nop
#Setar para o reg 15 o maior valor
add $15,$0,$21	#Maior
###############################################

#Segundo, verificar quem é o menor de todos
slt $20,$8,$9
	bnez $20,end5
		add $21,$0,$9	#Menor
	end5:nop	
slt $20,$21,$10
	bnez $20,end6
		add $21,$0,$10	#Menor
	end6:nop
slt $20,$21,$11
	bnez $20,end7
		add $21,$0,$11	#Menor
	end7:nop
slt $20,$21,$12
	bnez $20,end8
		add $21,$0,$12	#Menor
	end8:nop
#Setar para o reg 16 o menor valor
add $16,$0,$21	#Menor