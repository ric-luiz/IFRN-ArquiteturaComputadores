#Desenvolva um programa que leia um numero n e determine se ne primo
#Regra, imprime 0 para não primo e 1 para primo
addi $2,$0,5
syscall
add $8,$0,$2

addi $9,$0,2
addi $10,$8,-1
addi $11,$0,1

main:
	beq $8,$9,sair_for
	beq $8,$11,sair_for
	for: beq $9,$10,sair_for
	
		div $8,$9
		mfhi $11
		
		#Imprime 0 caso não seja primo
		if: bnez $11,sair_if
			addi $2,$0,1
			addi $4,$0,0
			syscall 
			j end
		sair_if:
		
		#Incremento e retorno
		addi $9,$9,1
		j for
	sair_for:
	#Imprime 1 caso seja primo
	addi $2,$0,1
	addi $4,$0,1
	syscall

end:
