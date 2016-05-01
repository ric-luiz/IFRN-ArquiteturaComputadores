.data
	dataInicial: .word 19,02,1989
	dataFinal:   .word 27,04,2016
.text
	main:
		
		#ano da data inicial e final como parametro
		addi $t0,$0,8
		lw $a1,dataInicial($t0)
		lw $a2,dataFinal($t0)		
		jal calcularAno
		
		#vamos calcular o mês da data inicial e final
		addi $t0,$0,4
		lw $a1,dataInicial($t0)
		jal calcularMesInicial
		
		addi $t0,$0,4
		lw $a1,dataFinal($t0)
		jal calcularMesFinal
		
		#Agora é so adicionar os dias
		lw $a1,dataInicial		
		sub $t7,$t7,$a1 #Isso é feito pq no mes inicial fazemos junto com o mes dos dias. É para facilitar
		
		lw $a1,dataFinal
		add $t7,$t7,$a1
		
	#exit do programa
	end: addi $v0,$0,10
	     syscall
	     	     	     	     	     	     	     
########################## Bloco de funções do programa ##########################

#Calcula a quantidade de dias entre os anos
.include "calcularAno.asm"
	
#verifica se o ano é bisexto	
.include "verificarBisexto.asm"

#calcular dias passados pelo mes
.include "calcularMesInicial.asm"
.include "calcularMesFinal.asm"	