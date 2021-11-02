// This is Fill.asm
// Screen turns black when any key is pressed, else white

        @8192   // 
        D=A
        @count
        M=D     // count = 8192 
(LOOP)
        @i
        M=0     // i = 0
(AGAIN)
        @KBD
        D=M
        @NOPRESS
        D;JEQ   // goto NOPRESS if KBD value is 0

        @i
        D=M
        @SCREEN
        A=A+D   // Calculate byte address
        M=-1    // Fill with black
        @END
        0;JMP   // goto END
(NOPRESS)
        @i
        D=M
        @SCREEN
        A=A+D   // Calculate byte address
        M=0     // Fill with white
(END)   
        @i
        MD=M+1  // Increment i by 1
        @count
        D=D-M
        @LOOP
        D;JEQ   // goto LOOP if count - i == 0
        @AGAIN
        0;JMP   // goto AGAIN
	
	