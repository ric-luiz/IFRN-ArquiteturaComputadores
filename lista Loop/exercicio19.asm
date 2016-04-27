#Desenvolva um programa que calcule n!

#entrada
addi $8,$0,1

addi $2,$0,5
syscall
addi $9,$2,0

addi $10,$0,1

for:beq $8,$9,sair_for

	#######Bloco de codigo#######
	mult $10,$9
	mflo $10
	#############################
	
	#Incremento e retorno
	addi $9,$9,-1
	j for
sair_for:

addi $2,$0,1
add $4,$0,$10
syscall