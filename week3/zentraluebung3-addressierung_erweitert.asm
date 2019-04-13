; Direkte Adressierung

MOV EAX, [20] ; Liest einen 32 Bit-Wert ein, der an der Adresse 20
; beginnt. D.h. es wird auf die Speicheradressen 20 bis 23 zugegriffen
MOV [22], AX ; Schreibt den 16 Bit-Wert des Registers AX in den
; Speicher an die Byte-Adressen 22 und 23
MOV BL, [27] ; Liest ein Byte aus der Speicherzelle 27 und schreib es in BL
ADD EAX, [30] ; Addiert zu EAX den 32-Bit-Wert ab Speicherzelle 30
SUB [32], BX ; Zieht vom 16-Bit-Wert ab Speicherzelle 32 den Wert in BX ab


; Symbolische Adressen

adresse1: EQU 0x1770 ; Konstantendefinition, welche biem Speicherzugriff zur Adresse wird
werte1: RESB 64 ; Definiert und reserviert einen Speicherereich mit 64 Bytes
; Platz und undefiniertem Inhalt
werte2: RESW 5 ; Definiert und reserviert Speicherbereich mit 5 Worten = 10 Byte
tabelle1: DB 17, 55, 68, 71 ; Definiert einen Speicherbereich von 4 Bytes
; und initalisiert diesen mit den angegebenen Werten.
tabelle2: DW 0x1234, 0x8888, 0x5432 ; Definiert und initalisiert 3 Worte
tabelle3: DD 0x12345678, 0x88882222, 0x54329876 ; Definiert und 
; initalisiert 3 Doppelworte
 
  
; Indirekte Adressierung

; Register Indirect Mode
MOV EAX, [EBX]
; Nimmt den Wert von EBX als Speicheradresse für Lesezugriff. In den eckigen
; Klammern können EAX-EDX, ESI, EBP und ESP verwendet werden

; Based Mode
MOV EAX, [EBX+12]
; Addiert zu EBX noch ein sogenanntes Offset von 12 hinzu und nutzt
; das Ergebnis als effektive Speicheradresse.

; Based Indexed Mode
MOV EAX, [EBX+ESI]
; Effektive Speicheradresse ist die Summe aus EBX und ESI

; Based Indexed Mode with Displacement
MOV EAX, [EBX+EDX+12]

; Base and Scale Index with Displacement
MOV EAX, [EAX+ECX*2+12]
