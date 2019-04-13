; INPUT
; EAX: Start der Zeichenkette im Speicher

to_upper:
MOV BL, [EAX]
CMP BL, 0
JE final

CMP BL, 97
JGE grossmachen

jetztgross:

INC EAX
JMP to_upper

grossmachen:
SUB BL, 32
JMP jetztgross

final:
RET

; unter der Annahme, dass die EIngaben schon richtig sind
