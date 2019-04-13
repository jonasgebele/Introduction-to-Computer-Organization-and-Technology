; INPUT
; EBX: Startadresse im Speicher

mirror:
PUSH EAX
PUSH EBX
PUSH ECX
PUSH EDX

XOR ECX, ECX
MOV CL, 0
zeilenschleife:

XOR EDX, EDX
MOV DL, 0
spaltenschleife:

; hier Operationen durchführen
ROL EAX, 4
; hier Operationen durchführen

INC DL

CMP DL, 7
JNG spaltenschleife

INC CL

CMP CL, 7
JNG zeilenschleife

POP EDX
POP ECX
POP EBX
POP EAX
RET