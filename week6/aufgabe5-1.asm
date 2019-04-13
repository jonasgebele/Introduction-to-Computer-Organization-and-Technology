console: EQU BYTE 0x0

print_hex_digit:
; INPUT
; EAX: soll die unteren 4 Bit als hexadezimales Zeichen ausgeben
PUSH EBX
MOV EBX, EAX
AND EBX, 1111b
CMP EBX, 9
JLE print_numeric
JMP print_non_numeric
print_numeric:
ADD BL, 48
MOV BYTE [console], BL
JMP final
print_non_numeric:
ADD BL, 55
MOV BYTE [console], BL
JMP final
final:
POP EBX
RET

print_hex:
CALL print_hex_digit
SHR EAX, 4
CALL print_hex_digit
SHR EAX, 4
CALL print_hex_digit
SHR EAX, 4
CALL print_hex_digit
RET