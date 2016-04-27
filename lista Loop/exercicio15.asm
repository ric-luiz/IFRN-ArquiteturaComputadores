#Desenvolva um programa que leia n numeros e diga quantos sao pares e quantos sao  ımpares.

#Regra imprime 1 para dizer que e impar e 0 para par

#entrada
addi $8,$0,0

addi $2,$0,5
syscall 
add $9,$0,$2

for:beq $8,$9,sair_for

	#######Bloco de codigo#######
	addi $2,$0,5
	syscall 
	andi $10,$2,1
	
	addi $2,$0,1
	add $4,$0,$10
	syscall 
	#############################
	
	#Incremento e retorno
	addi $8,$8,1
	j for
sair_for: