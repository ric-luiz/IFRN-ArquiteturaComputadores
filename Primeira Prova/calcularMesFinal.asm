calcularMesFinal:
	# i = 1
	addi $t0,$0,1
	
	while_Mes2: beq $t0,$a1,fim_Mes_While2
		slti $t1,$t0,8
		#Se o mes for menor que 08
		menorOito2: beq $t1,0,maiorOito2
		
			#Verificamos se o mes e fevereiro
			fevereiro2:bne $t0,2,fim_fevereiro2
					addi $t7,$t7,28
				j fim_calcularMes2
			fim_fevereiro2:
		
			#Verifica se o mes é impar ou par
			andi $t1,$t0,1		
			impar1_2:beq $t1,0,par1_2
				addi $t7,$t7,31
				j fim_impar1_2
			par1_2:
				addi $t7,$t7,30
			fim_impar1_2:
		
			#sair
			j fim_calcularMes2
		
		#Se o mes for maior igual a 08	
		maiorOito2:
			#Verifica se o mes é impar ou par
			andi $t1,$t0,1		
			impar2_2:beq $t1,0,par2_2
				addi $t7,$t7,30
				j fim_impar1_2
			par2_2:
				addi $t7,$t7,31
			fim_impar2_2:
		fim_calcularMes2:
		
		addi $t0,$t0,1 #i++
		j while_Mes2
		
	fim_Mes_While2: jr $ra