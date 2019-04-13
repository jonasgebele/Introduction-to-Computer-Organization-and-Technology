; Ausgangswert S im Register BL, Ergebnis soll in EAX stehen

SUB BL, 255
XOR EAX, EAX
MOV AL, BL
MOV EBX, 90
MUL EBX
MOV EBX, 255
DIV EBX
ADD EAX, 10