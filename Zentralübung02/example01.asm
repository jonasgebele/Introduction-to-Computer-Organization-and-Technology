
MOV AX, 199
MOV BX, 198
MOV CX, 197

; Registerinhalt sind vorgegeben sein

ADD AX, 50
ADD AX, BX
ADD AX, CX

; Ergebnis nach DX und den Rest wieder auf 0

MOV DX, AX
MOV AX, 0
MOV BX, 0
MOV CX, 0