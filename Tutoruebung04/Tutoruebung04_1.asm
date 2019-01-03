MOV EBX, ECX
ADD EBX, EBX
ADD EBX, EBX
ADD EBX, 12
ADD EBX, EAX
MOV EBX, [EBX]



MOV BX, [EAX]
ADD BX, [EAX+2]
MOV [EAX+4], BX



MOV EAX, [EBX+EAX*4]
; Oder:
ADD EAX,EAX
ADD EAX,EAX
MOV EAX,  [EAX+EBX] 





Struktur1:
resd 1; Offset 0 : Wert mit int = 4 Bytes
resd 16 ; Offset 4: feld1 mit 16 ints = 16 * 4 Bytes
	; Gesammtlänge der Struktur1 ist 4 + 16* 4 Bytes = 68 Bytes
Struktur2:
resd 8 ; Offset 0 : feld mit 8 Referenzen auf ein Struktur1-Objekt
resd 1 ; Offset 32 : info mit int = 4 Bytes
	; Gesammtlänge der Struktur2 ist 8 * 4 + 4 Bytes = 36 Bytes

MOV EDX, [EAX+32]

MOV EDX, [EAX+EBX*4]






JMP 0x100

MOV EAX, 0x100
JMP EAX










