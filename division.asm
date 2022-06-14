;DIV S ' --->AX/S(STORE: Q=AL,R=AH)
              ;FOR S--->16 BIT, {DX,AX}/S=16 BIT 
                 ;Q-->AX,R-->DX
MOV DX,20H
MOV AX,4H 
MOV BX,1234H
DIV BX
HLT
             