; AND D,S ---> D.S --> ST0RE IN D
; OR D,S --> D+S -->D 
; XOR D,S --> D'S+S'D -->D 
;NOT D ---> D'--->D
MOV AX,45A8H
MOV CX,0E87H
;AND CX,AX

;OR CX,AX
;XOR CX,AX
NOT AX
HLT

