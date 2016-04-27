#Exercicio para prova de 15/04/2016

#Entrada de dados

#Dia do aniversaio
addi $2, $0, 5
syscall
add $8,$0,$2 #dia

addi $2, $0, 5
syscall
add $9,$0,$2 #mes

addi $2, $0, 5
syscall
add $10,$0,$2 #ano

#data Atual
addi $2, $0, 5
syscall
add $11,$0,$2 #dia

addi $2, $0, 5
syscall
add $12,$0,$2 #mes

addi $2, $0, 5
syscall
add $13,$0,$2 #ano

#vou manter os valores dos anos em outros registradores, pois vou precisar deles para pegar os dias do ano inicial da entrada e do final
add $20,$0,$10	#Manter ano inicial
add $21,$0,$13	#Manter ano final

#Vamos começar a partir do ano passado, pois temos garantia de um ano inteiro
# E tambem vamos colocar mais 1 ano no ano do aniversario
#sub $13,$13,1
addi $13,$13,1

for_1:beq $10,$13, sai_for_1	#inicio do for

	#-----------------------------------------bloco de codigos--------------------------------------#
	
	if_18: bne $10,$20,fim_18
		j verificacao
	fim_18:
	
	if_19: bne $10,$21,fim_19
		j verificacao
	fim_19:
	
	addi $14,$14,365	#Armazena o total de dias
	
			
	verificacao:		
	#####################primeira condição para o ano ser bisexto####################################	
	div $15,$10,400		#verifica se o ano é bisexto
	mfhi $15	
	if_1: bnez $15,fim_1
		addi $14,$14,1	#Adiciona mais um dia se o ano for bisexto
	fim_1:
	#################################################################################################
	
	#####################verificar a outra condição para o ano ser bisexto###########################
	div $15,$10,400		#verifica se é divisivel por 400			
	mfhi $15
	if_2: beqz $15,fim_2
	
		div $15,$10,100	 #verifica se é divisivel por 100
		mfhi $15
		if_3: beqz $15,fim_2
		
			div $15,$10,4	#verifica se é divisivel por 4
			mfhi $15
			if_4: bnez $15,fim_2
				addi $14,$14,1	#Adiciona mais um dia se o ano for bisexto
		
	fim_2:
	##################################################################################################
	
	#-------------------------------------------------------------------------------------------------#
	
	addi $10,$10,1 #aqui é o incrementador
	j for_1	#volta pro teste
sai_for_1:	#fim do for

#Vamos adicionar os dias do ano inicial
addi $16,$0,1	#vamos usar esse reg para a condicao de parada
addi $17,$0,8	#Esse reg serve para auxiliar a sebaer os meses que tem 30 e 31
addi $19,$9,1	# essa vai ser nossa condição de parada do for
for_2: beq $19,$16,sai_for_2

	#-----------------------------------------bloco de codigos----------------------------------------#
	slt $15,$16,$17
	#Meses de 01 ate 07
	if_6: beqz $15,else_6						
		#Verifico se é o mes colocado na entrada
		if_9: bne $16,$9,fim_9
			#Adicionamos os dias que foi inserido inicialmente	
			add $14,$14,$8
			j fim_6
		fim_9:
		
		#Caso não seja a condição acima executamos normalmente a operação de add 30 ou 31 dias ao total
		div $18,$16,2
		mfhi $18
		if_7: beqz $18,else_7
			#meses Impares
			addi $14,$14,31
			j fim_7
		else_7:
			#meses pares
			if_10: beq $16,2,else_10
				addi $14,$14,30
				j fim_10
			else_10:
				addi $14,$14,28
			fim_10:
		fim_7:
		
		j fim_6		
	#Meses de 08 ate 12
	else_6:		
		#Verifico se é o mes colocado na entrada
		if_11: bne $16,$9,fim_11
			#Adicionamos os dias que foi inserido inicialmente	
			add $14,$14,$8
			j fim_6
		fim_11:
			
		#Caso não seja a condição acima executamos normalmente a operação de add 30 ou 31 dias ao total					
		div $18,$16,2
		mfhi $18
		if_8: beqz $18,else_8
			#meses Impares
			addi $14,$14,30
			j fim_8
		else_8:
			#meses pares
			addi $14,$14,31
		fim_8:
	fim_6:
	#-------------------------------------------------------------------------------------------------#
	
	addi $16,$16,1 #aqui é o incrementador
	j for_2	#volta pro teste
sai_for_2:

#Vamos adicionar os dias do ano final
addi $16,$0,1	#vamos usar esse reg para a condicao de parada
addi $17,$0,8	#Esse reg serve para auxiliar a sebaer os meses que tem 30 e 31
addi $19,$12,1	# essa vai ser nossa condição de parada do for
for_3: beq $19,$16,sai_for_3

	#-----------------------------------------bloco de codigos----------------------------------------#
	slt $15,$16,$17
	#Meses de 01 ate 07
	if_17: beqz $15,else_17						
		#Verifico se é o mes colocado na entrada
		if_12: bne $16,$12,fim_12
			#Adicionamos os dias que foi inserido inicialmente	
			add $14,$14,$11
			j fim_17
		fim_12:
		
		#Caso não seja a condição acima executamos normalmente a operação de add 30 ou 31 dias ao total
		div $18,$16,2
		mfhi $18
		if_13: beqz $18,else_13
			#meses Impares
			addi $14,$14,31
			j fim_13
		else_13:
			#meses pares
			if_14: beq $16,2,else_14
				addi $14,$14,30
				j fim_14
			else_14:
				addi $14,$14,28
			fim_14:
		fim_13:
		
		j fim_17		
	#Meses de 08 ate 12
	else_17:		
		#Verifico se é o mes colocado na entrada
		if_15: bne $16,$12,fim_15
			#Adicionamos os dias que foi inserido inicialmente	
			add $14,$14,$8
			j fim_17
		fim_15:
			
		#Caso não seja a condição acima executamos normalmente a operação de add 30 ou 31 dias ao total					
		div $18,$16,2
		mfhi $18
		if_16: beqz $18,else_16
			#meses Impares
			addi $14,$14,30
			j fim_16
		else_16:
			#meses pares
			addi $14,$14,31
		fim_16:
	fim_17:
	#-------------------------------------------------------------------------------------------------#
	
	addi $16,$16,1 #aqui é o incrementador
	j for_3	#volta pro teste
sai_for_3:

#Imprimir valor dos dias
add $4,$14,$0
addi $2,$0,1
syscall
