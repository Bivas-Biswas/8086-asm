;    *** PRIME NUMBER ***
MOV BH,0
MOV BL,10D
INPUT:
MOV AH,1
INT 21H 
CMP AL,13D
JNE NUMBER
JMP CHECK

NUMBER:
  SUB AL,30H
  MOV CL,AL
  MOV AL,BH
  MUL BL
  ADD AL,CL
  MOV BH,AL
  JMP INPUT
  
CHECK:
    CMP BH,1
    JNE NP
    MOV CX,2
    AND AX,0
    AND BX,0
    MOV AL,BH
    DIV CX
    MOV CX,AX
    CMP DX,0
    JE NP
    
  ISPRIME:
    CMP CX,2
    JL PRIME
    AND AX,0
    AND BX,0
    MOV AL,BH
    DIV CX
    DEC CX
    CMP DX,0
    JE NP
    JMP ISPRIME
  
  PRIME:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV DL,'P'
    INT 21H
    JMP EXIT
  NP:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV DL,'N'
    INT 21H
    
  EXIT:
  HLT
     