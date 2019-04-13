MOV EAX, 5

fakultaet:
; In:
; EAX: Parameter fuer Fakultaet
;
PUSH EBX
PUSH EDX

CMP EAX, 0
JE fakultaet_n_null

MOV EBX, EAX
DEC EAX
CALL fakultaet
MUL EBX
JMP fakultaet_return


fakultaet_n_null:
MOV EAX, 1


fakultaet_return:
POP EDX
POP EBX
RET