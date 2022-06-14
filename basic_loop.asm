;                                                   *** LOOP INSTRUCTION***
; LOOOP TO LEBEL ---> IF CX IS NOT ZERO
;       LEBEL ABC:
;          LOOP ABC 
;    LOOP CONTINUES UPTO CX BECOME ZERO 


MOV AX,00H
MOV BX,02H
MOV CX,05H
ABC: ADD AX,BX
LOOP ABC
HLT        