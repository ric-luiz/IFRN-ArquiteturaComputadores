#Desenvolva um programa que leia dois nú́meros e informe se eles são iguais
#ou não

#Regra : se for igual retorna 0 senão retorna 1, no registrador 10

#Entrada de Dados
addi $8,$0,11
addi $9,$0,10

#inicio do if
beq $8,$9,igual
	
diferente:	addi $10,$0,1
		j fim
igual: 		addi $10,$0,0
fim:nop