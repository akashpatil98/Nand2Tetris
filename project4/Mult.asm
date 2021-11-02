// This is the code Mult.asm 
// Function: R2 = R1 * R0

	@0
	D = A
	@2
	M = D
	
	@R1
	D = M 
	@n 
	M = D
	
	@R0
	D = M
	@const
	M = D
	
	@i
	M = 0
	
	(LOOP)
		@i
		D = M
		@n
		D = D - M
		@END
		D; JGE
		
		@const
		D = M
		@R2
		M = M + D
		
		@i
		M = M + 1
		
	@LOOP
	0; JMP
	
	(END)
	@END 
	0; JMP