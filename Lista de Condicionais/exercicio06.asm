#Desenvolva um programa que leia dois nú́meros a e b e deixe-os em ordem
#crescente, ou seja, o menor deverá ficar armazenado na variável a e o maior
#na variável b.

#Regra : Os numeros serão colocados (menor para o maior) no reg $8,$9 respectivamente

#Entrada de Dados
addi $8,$0,50	#a
addi $9,$0,6	#b

slt $10,$8,$9
#Verifica se é diferente de 0, ou seja se $8 é maior que $9
bne $10,0,end
	add  $20,$0,$9
	add  $9,$0,$8
	add  $8,$0,$20
end:nop

