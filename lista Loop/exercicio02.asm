#Desenvolva um programa que mostre os numeros de 200 ate 1.

#entrada
addi $8,$0,200
addi $9,$0,-1

for:beq $8,$9,sair_for

	#######Bloco de codigo#######
	addi $2,$0,1
	add $4,$0,$8
	syscall 
	#############################
	
	#Incremento e retorno
	addi $8,$8,-1
	j for
sair_for: