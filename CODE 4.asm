;DIV S ' --->AX/S(STORE: Q=AL,R=AH)
              ;FOR S--->16 BIT, {DX,AX}/S=16 BIT 
                 ;Q-->AX,R-->DX
MOV DX,1389H
MOV AX,1004H 
MOV BX,1234H
DIV BX
HLT
             