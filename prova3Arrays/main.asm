.data
	myArray: .byte ' ':48
	characterer: .byte '*'
	newLine: .asciiz "\n"
.text
	main:
		lb $t7,characterer #carrega o *
		#addi $v0,$0,5
		#syscall
		jal y
		jal imprimirMatriz
								
	end:li $v0,10
	    syscall

.include "matrizChar.asm"

imprimirMatriz:
		addi $t0,$0,0	#linhas
		addi $t1,$0,0	#colunas
		
		row:beq $t0,48,end_row
									
			bne $t1,8,nao_incrementar
				addi $t1,$0,0	#colunas	
				#imprimir nova linha
				addi $v0,$0,4
				la $a0,newLine
				syscall				
																												
			nao_incrementar:
			
			#Imprimir characterer
			addi $v0,$0,11
			lb $a0,myArray($t0)
			syscall
						
			add $t0,$t0,1   #linha
			add $t1,$t1,1   #coluna
			j row
		end_row:

jr $ra