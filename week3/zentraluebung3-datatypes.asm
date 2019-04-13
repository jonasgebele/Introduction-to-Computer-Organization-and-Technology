; Reservieren von Speicher

RESB 1 ; Rerserviert 1 Byte
RESW 1 ; Reserviert 2 Byte
RESD 1 ; Reserviert 4 Byte
RESQ 1 ; Reserviert 8 Byte

; Reservieren und Initialisieren von Speicher

DB 123 ; Wert 123
DB 72, 101, 108, 108, 111 ; Wert "Hallo"
DB 32 ; Leerzeichen
DB 119, 111, 114, 108, 100 ; "World"
DB 0 ; 0-Wert
DW 1 ; Reserviere 2 Byte mit Wert 1
DB 1
DW 2
DD 4

; Labels

parameter_1: DD 123
rueckgabewert1: RESB 5
parameter_2: DD -123
rueckgabewert2: DW 123

MOV EAX, [parameter_1]
MOV EBX, [parameter_2]
MOV [rueckgabewert1], ECX
SUB [rueckgabewert2], EDX


; Symbolische Werte

max_unsigned_byte: EQU 255
null_erminierung: EQU 0










