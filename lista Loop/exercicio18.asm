#Desenvolva um programa que calcule o valor de a n . a e n devem ser informados pelo usuario.

#entrada
#a
addi $2,$0,5
syscall 
add $8,$0,$2

#n
addi $2,$0,5
syscall
addi $9,$2,-1

addi $10,$0,0
for:beq $0,$9,sair_for

	#######Bloco de codigo#######
	mult $8,$8
	mflo $12
	add $10,$10,$12	
	#############################
	
	#Incremento e retorno
	addi $9,$9,-1
	j for
sair_for:

addi $2,$0,1
add $4,$0,$10
syscall 
