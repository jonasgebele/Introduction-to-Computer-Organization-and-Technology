adresse1: EQU 64
; Konstantendefinition

werte1: RESB 64
; Definiert und reserviert einen Speicherbereich mit 64 Bytes Platz
; und undefiniertem Inhalt
werte2: RESW 5
; Definiert und reserviert Speicherbereich mit 5 Worten (10 Bytes)

tabelle1: DB 17, 55, 68, 71
; Definiert einen Speicherbereich von 4 Bytes und initialisiert diesen
; mit den angegebenen Werten
tabelle2: DW 0x1234, 0x8888, 0x5432
; Definiert und initialisiert 3 Worte
tabelle3: DD 0x12345678, 0x88882222, 0x54329876
; Definiert und initialisiert 3 Doppelworte


MOV EAX, [adresse1]
MOV [werte1], BL
MOV AX, [tabelle2]

; ___________________________________________________

; Register Indirect Mode
MOV EAX, [EBX] ; Nimmt den Wert von EBX als Speicheradresse
; für den Lesezugriff
; In den eckigen Klammern können EAX-EDX, ESI, EBP & ESP
; verwendet werden

; Based Mode
MOV EAX, [EBX+12] ; Addiert zu EBX noch ein sogenanntes Off-
; set von 12 hinzu und nutzt das Ergebnis als effektive Speicher-
; adresse. Dabei darf das Displacement auch negativ sein
; in [] erlaubt: EAX-EDX, ESI, EDI, EBP, ESP

; Based Indexed Mode
MOV EAX, [EBX+ESI] ; Effektive Speicheradresse ist die Summe aus
; EBX und ESI. In [] erlaubt: EAX-EDI, ESI, EBP, ESP

; Based Indexed Mode with Displacement
MOV EAX, [EBX+EDX+12] ; Effektive Adresse ist Summe aus
; EBX und EDX und einem dem konstanten Offset von 12
; in [] erlaubt: EAX-EDI, ESI, EBP, ESP

; Base und Scaled Index with Displacement
MOV EAX, [EAX+ECX*2+12] ; Effektive Adresse ist das Ergebnis von
; EAX + 2 * ECX + 12, Als Skalierung sind nur 2, 4 oder 8 möglich

; _______________________________________________

fehler: 

; Unbedingter Sprung

JMP fehler ; Springe zu einer Marke

JMP 0x1234 ; Führe den Programmablauf bei EIP=0x1234 weiter

MOV EAX, 0x4567
JMP EAX ; Mache bei EIP = 0x4567 weiter