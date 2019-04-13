MOV EAX, 12
; INPUT
; EAX Anzahl Sekunden zu warten

warte_n:
PUSH EAX
CMP EAX, 5
JL ende

CALL warte_5s
SUB EAX, 5
JMP warte_n

warte_5s:
; 5 Sekunden warten
RET

ende:
CALL warte_5s
POP EAX
RET


; Alternative Musterlösung
wait_n:
PUSH EAX
PUSH EBX
PUSH EDX
MOV EBX, 5
ADD EAX, 4
MOV EDX, 0
DIV EBX

CMP EAX, 0
JE fertig

wait_schleife:
CALL wait_5s
DEC EAX
JNE wait_schleife

fertig:
POP EDX
POP EBX
POP EAX
RET

wait_5s:
; warte 5 Sekunden
RET













