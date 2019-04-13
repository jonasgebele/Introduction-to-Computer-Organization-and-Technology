MOV EAX, [wasch_program]
MOV DX, 50
MOV EBX, zeitdauer_tabelle
ADD DX, [EBX+EAX*8]
ADD DX, [EBX+EAX*8+2]
ADD DX, [EBX+EAX*8+4]
MOV [zeitdauer], DX

; das ganze ohne Multiplikation

MOV EAX, [wasch_program]
ADD EAX, EAX
ADD EAX, EAX
ADD EAX, EAX
MOV DX, 50
MOV EBX, zeitdauer_tabelle
ADD DX, [EAX+EBX]
ADD DX, [EAX+EBX+2]
ADD DX, [EAX+EBX+4]