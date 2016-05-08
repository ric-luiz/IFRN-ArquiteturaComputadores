verificarBisexto:

		#Primeira condição para o ano ser bisexto
		div $t0,$a1,400		#verifica se o ano é bisexto
		mfhi $t0	
		if_1: bnez $t0,fim_1
			addi $t7,$t7,1	#Adiciona mais um dia se o ano for bisexto
			
			#verifica se o numero é primo
			addi $23,$0,1	# 1
			addi $22,$a1,1  # ano + 1
			for_ano: beq $23,$22,fim_for_ano
				
				div $22,$23
				mfhi $21
				bne $21,$0,nao_divisivel
					addi $20,$20,1
				nao_divisivel:							
			
				addi $23,$23,1 #i++
				j for_ano
			fim_for_ano:
			
			bne $20,2,naoPrimo
				addi $v0,$0,1
				add $a0,$0,$23
				syscall
			naoPrimo:
			
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
					
					#verifica se o numero é primo
					addi $23,$0,1	# 1
					addi $22,$a1,1  # ano + 1
					for_ano2: beq $23,$22,fim_for_ano2
				
							div $22,$23
							mfhi $21
							bne $21,$0,nao_divisivel2
							addi $20,$20,1
						nao_divisivel2:							
			
						addi $23,$23,1 #i++
						j for_ano
					fim_for_ano2:
			
				bne $20,2,naoPrimo2
					addi $v0,$0,1
					add $a0,$0,$23
					syscall
				naoPrimo2:
				
		fim_2:
		
		jr $ra
