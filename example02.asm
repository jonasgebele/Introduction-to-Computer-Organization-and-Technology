; Daten liefern Wert zwischen 0 und 255
; 0 entspricht einer Temperatur von 100*
; 255 entspricht einer Temperatur von 10*

; Sensorwert liegt vor Beginn der Rechnung im 8-Bit Register BL
; Das Ergebnis soll im 32-Bit Register EAX stehen
MOV BL, 50

; 255 - S
MOV BH, 255
SUB BH, BL ; BH := BH - BL = 255 - BL

; (255 - S) * 90
MOV EAX, 0	; Erweiterung der vorzeichenlosen Zahl in BH auf 32 Bit
MOV AL, BH
MOV EBX, 90
MUL EBX	; EDX:EAX := EAX * 90

; ((255 - S) * 90) * 1/255
MOV EBX, 255 
DIV EBX 	; EAX := (EDX:EAX) / EBX = (EDX:EAX) / 255
ADD EAX, 10 ; EAX := EAX + 10