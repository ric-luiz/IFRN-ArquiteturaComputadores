#Desenvolva um programa que mostre todos os numeros entre 1 e 200 que sao multiplos de 3.

#entrada
addi $8,$0,3
addi $9,$0,201

for:beq $8,$9,sair_for

	#######Bloco de codigo#######
	addi $2,$0,1
	add $4,$0,$8
	syscall 
	#############################
	
	#Incremento e retorno
	addi $8,$8,3
	j for
sair_for: