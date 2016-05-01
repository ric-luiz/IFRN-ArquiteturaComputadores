calcularAno:
		subu $sp,$sp,4 #separa 4 bytes para o antigo endereço da função
		sw $ra,($sp) #Armazena o antigo endereço da função
		
		jal verificarBisexto #faz uma checagem para saber se o ano anterior é bisexto
		
		#Pega o range entre as datas informadas		
		addi $a1,$a1, 1		
		
		while_Ano: beq $a1,$a2,sair_Ano
			
			#Adiciona 365 dias ao total de dias
			addi $t7,$t7,365
			jal verificarBisexto			
			
			addi $a1,$a1,1	#i++
			j while_Ano
		sair_Ano:
		
		jal verificarBisexto #faz uma checagem para saber se o ano atual é bisexto
		
		lw $ra,($sp)
		addi $sp,$sp,4 #recupera o antigo enderço para o main		
	jr $ra