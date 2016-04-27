#Desenvolva um programa que leia as duas notas de um aluno nota1 e nota2
#e informe se o aluno passou, considerando o cálculo da média do IFRN.

#Regra : Se o aluno passou sera colocado 0 senão 1 no $10. As casas decimais são ignoradas

#Entrada de Dados
addi $8,$0,5	#nota1
addi $9,$0,5	#nota2
addi $20,$0,6   #Nota para passar

#A formaula é dada por (nota1*2 + nota2*3)/5
#multiplicações pelo peso
mul $8,$8,2
mul $9,$9,3

#soma das notas
add $9,$8,$9

#Divisão por 5
div $9,$9,5

#Verifica se o aluno passou
slt $10,$9,$20
	beq $10,1,fim
	passou: addi $10,$0,0
fim:nop