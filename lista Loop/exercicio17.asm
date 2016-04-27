#Desenvolva um programa que leia uma quantidade inderteminada de numeros e mostre quantos numeros foram
#digitados e a soma dos mesmos. A digitacao deve acabar quando o usuario digitar 0.

#Entradas
addi $8,$0,1

while: beqz $8,sair_while

	#entrada informada pelo usuario
	addi $2,$0,5
	syscall 
	add $8,$0,$2
	
	#Qtd de numeros e soma deles
	addi $9,$9,1
	add $10,$10,$8
	
	j while

sair_while:

#Imprimir qtd de numeros
addi $2,$0,1
add $4,$0,$9
syscall 
#Imprimir Soma dos numeros
addi $2,$0,1
add $4,$0,$10
syscall 