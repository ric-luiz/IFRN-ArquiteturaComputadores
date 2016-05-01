calcularMesInicial:
	# i = Valor inserido pelo usuario
	add $t0,$0,$a1	
	
	while_Mes: beq $t0,13,fim_Mes_While
		slti $t1,$t0,8
		#Se o mes for menor que 08
		menorOito: beq $t1,0,maiorOito
		
			#Verificamos se o mes e fevereiro
			fevereiro:bne $t0,2,fim_fevereiro
					addi $t7,$t7,28
				j fim_calcularMes
			fim_fevereiro:
		
			#Verifica se o mes é impar ou par
			andi $t1,$t0,1		
			impar1:beq $t1,0,par1
				addi $t7,$t7,31
				j fim_impar1
			par1:
				addi $t7,$t7,30
			fim_impar1:
		
			#sair
			j fim_calcularMes
		
		#Se o mes for maior igual a 08	
		maiorOito:
			#Verifica se o mes é impar ou par
			andi $t1,$t0,1		
			impar2:beq $t1,0,par2
				addi $t7,$t7,30
				j fim_impar1
			par2:
				addi $t7,$t7,31
			fim_impar2:
		fim_calcularMes:
		
		addi $t0,$t0,1 #i++
		j while_Mes
		
	fim_Mes_While: jr $ra