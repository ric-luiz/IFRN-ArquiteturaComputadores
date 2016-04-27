#Desenvolva um programa que mostre todos os numeros no intervalo entre n e m. n e m devem ser informados
#pelo usuario.

#entrada
addi $2,$0,5
syscall 
add $8,$0,$2

addi $2,$0,5
syscall 
addi $9,$2,1

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