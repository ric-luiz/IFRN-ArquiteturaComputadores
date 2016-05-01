verificarBisexto:

		#Primeira condição para o ano ser bisexto
		div $t0,$a1,400		#verifica se o ano é bisexto
		mfhi $t0	
		if_1: bnez $t0,fim_1
			addi $t7,$t7,1	#Adiciona mais um dia se o ano for bisexto
		fim_1:
		
		#segunda condição para o ano ser bisexto
		div $t0,$a1,400		#verifica se é divisivel por 400			
		mfhi $t0
		if_2: beq $t0,$0,fim_2
	
			div $t0,$a1,100	 #verifica se é divisivel por 100
			mfhi $t0
			if_3: beq $t0,$0,fim_2
		
				div $t0,$a1,4	#verifica se é divisivel por 4
				mfhi $t0
				if_4: bnez $t0,fim_2
					addi $t7,$t7,1	#Adiciona mais um dia se o ano for bisexto
		fim_2:
		
		jr $ra