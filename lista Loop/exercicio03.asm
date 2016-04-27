#Desenvolva um programa que calcule a soma dos 200 primeiros numeros.

#entrada
addi $8,$0,1
addi $9,$0,201

for: beq $8,$9,sair_for
	
	#######Bloco de codigo#######
	add $10,$10,$8
	#############################
	
	#Incremento e retorno
	addi $8,$8,1
	j for
sair_for:

addi $2,$0,1
add $4,$0,$10
syscall 
