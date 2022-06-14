MOV CX,0

INPUT:
    MOV AH,1
    INT 21H
    CMP AL,13D 
    JE LINE
    MOV DX,0
    MOV DL,AL
    PUSH DX
    INC CL
    JMP INPUT
    
LINE:
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
PRINT:
    MOV DX,0
    POP DX
    MOV AH,2
    INT 21H
    LOOP PRINT