tabelle_ziffer_zu_bitmuster:
; Segment gfe dcba
DB 0x3f ; Ziffer 0 -> .011 1111
DB 0x06 ; Ziffer 1 -> .000 0110
DB 0x5b ; Ziffer 2 -> .101 1011
DB 0x4f ; Ziffer 3 -> .100 1111
DB 0x66 ; Ziffer 4 -> .110 0110
DB 0x6d ; Ziffer 5 -> .110 1101
DB 0x7d ; Ziffer 6 -> .111 1101
DB 0x07 ; Ziffer 7 -> .000 0111
DB 0x7f ; Ziffer 8 -> .111 1111
DB 0x6f ; Ziffer 9 -> .110 1111

ausgabe_bitmuster_an_adresse:
; INPUT:
; AL Ziffernwert
; ECX Ausgabe Adresse der Anzeige
PUSH EBX ; Ver‰nderte Register retten
PUSH EDX ; Welche das genau sind, weiﬂ man meist erst nach
; dem Schreiben der Funktion...
XOR EDX, EDX ; EDX auf 0 setzen (siehe Vorlesungen)
MOV DL, AL
MOV EBX, tabelle_ziffer_zu_bitmuster ; Startadresse der Tabelle
MOV DL, [EBX+EDX] ; Einzelnes Byte aus [tabelle + Ziffer] laden
MOV [ECX], DL ; Bitmuster als Byte auf Anzeige ausgeben
POP EDX ; Registerinhalt wiederherstellen...
POP EBX ; ... in umgekehrter Reihenfolge!
RET

print_two_digits:
; IN:
; AX Zweistellige Zahl
PUSH ECX
MOV CL, 10
DIV CL ; AL = floor(AX/CL), AH = AX mod CL (Rest)
MOV ECX, ausgabe_speicherbereich
CALL ausgabe_bitmuster_an_adresse
MOV AL, AH
INC ECX
CALL ausgabe_bitmuster_an_adresse
POP ECX
RET