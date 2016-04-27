#Desenvolva um programa que leia um numero n e mostre a tabuada de multiplicar de n.

#entrada
addi $8,$0,1
addi $9,$0,11

addi $2,$0,5
syscall
add $10,$2,$0

for: beq $8,$9,sair_for
	
	#######Bloco de codigo#######
	addi $2,$0,1	
	mul $11,$10,$8
	mflo $4
	syscall
	#############################
	
	#Incremento e retorno
	addi $8,$8,1
	j for
sair_for: