#Desenvolva um programa que mostre os 40 primeiros numeros pares.

#entrada
addi $8,$0,0
addi $9,$0,42

for: beq $8,$9,sair_for
	
	#######Bloco de codigo#######
	addi $2,$0,1
	add $4,$0,$8
	syscall
	#############################
	
	#Incremento e retorno
	addi $8,$8,2
	j for
sair_for:	