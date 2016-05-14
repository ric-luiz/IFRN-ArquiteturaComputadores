.data

.text

main:
	
	update:
	
		#coordenadas x e y
		addi $15,$0,5
		addi $16,$0,30	
		#Width e height da figura
		addi $17,$0,10
		addi $18,$0,10
	
		jal quadrado		
	
	j update
	
	
end: addi $2,$0,10
     syscall 

quadrado:
		addi $sp,$sp,-4 #tiramos o espaço de memoria
		sw $ra, ($sp)
		#reseta os contadores
		addi $12,$0,0
		addi $11,$0,0	
		
		
		row:beq $11,$18,end_row
			addi $16,$16,1
			
			col:beq $12,$17,end_col							
				addi $15,$15,1
				jal coordenadas
				jal desenhar_pixel
				addi $12,$12,1	
				j col
			end_col:			
			
			addi $11,$11,1
			addi $12,$0,0	#reset no contador das colunas
			sub $15,$15,$17 #reset na coordenada x
			j row
		end_row:
		
		
		lw $ra, ($sp)
		addi $sp,$sp,4			 
     jr $ra     
               
# x = $15
# y = $16
coordenadas: 
		
		add $14,$0,$0
		
		mul $14,$16,64					
		add $14,$14,$15		
		
		mul $14,$14,4	#Converte para os espaços em memoria
		
	jr $ra
	
desenhar_pixel:

		lui $9, 0x1001
		addi $10, $0,0x00ff
		add $9,$9,$14
	    sw $10, 0($9)	    
	    
	jr $ra
