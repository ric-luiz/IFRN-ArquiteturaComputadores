#Desenvolva um programa que mostre todos os numeros de 1 a 100.

#entradas
add $8,$0,$0
addi $9,$0,101

for: beq $8,$9,sair_for
	
	#######Bloco de codigo#######
	addi $2,$0,1
	add $4,$0,$8
	syscall 
	#############################
	
	#Incremento e retorno
	addi $8,$8,1
	j for
sair_for:
