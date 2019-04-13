;; INPUT
; EAX: erster Operand
; EDX: zweiter Operand
; ECX: Operationsnummer

; OUTPUT
; EAX: Output

sprungmarken: 
dd addieren, subtrahieren, multiplizieren, dividieren

program:
AND ECX, 0x3
MOV ECX, [ECX*4+sprungmarken]
JMP ECX

addieren:
ADD EAX, EDX
JMP fertig

subtrahieren:
SUB EAX, EDX
JMP fertig

multiplizieren:
MUL EDX
JMP fertig

dividieren:
MOV ECX, EDX
XOR EDX, EDX
DIV ECX
JMP fertig

fertig: