#Desenvolva um programa que leia n numeros e mostre a soma dos mesmos.

#entrada
addi $8,$0,0 

addi $2,$0,5
syscall 
add $9,$0,$2

for: beq $8,$9,sair_for
	
	#######Bloco de codigo#######
	addi $2,$0,5	
	syscall
	add $10,$10,$2
	#############################
	
	#Incremento e retorno
	addi $8,$8,1
	j for
sair_for:

addi $2,$0,1
add $4,$0,$10
syscall 