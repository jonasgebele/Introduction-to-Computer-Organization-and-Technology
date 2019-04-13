MOV EAX, 4

fakultaet:
; IN:
; EAX: Parameter fuer Fakultaet
PUSH ECX
PUSH EDX

MOV ECX, EAX ; n in Zaehlerregister
MOV EAX, 1

fakultaet_nochmal:
CMP ECX, 0 ; Abbruchsbedinung
JE fakultaet_return ; Springe, wenn n = 0

MUL ECX
DEC ECX

JMP fakultaet_nochmal ; Schleife

fakultaet_return:
POP EDX
POP ECX
RET ; Ergebnis in EAX