MOV EAX, 1
MOV EBX, 2
MOV ECX, 3
MOV EDX, 4
CALL fn_reg

fn_reg:
ADD EAX, EBX
ADD EAX, ECX
ADD EAX, EDX
RET

; Jetzt mit Speicherübergabe

fn_p1: RESD 1
fn_p2: RESD 1
fn_p3: RESD 1
fn_p4: RESD 1

MOV DWORD [fn_p1], 1
MOV DWORD [fn_p2], 2
MOV DWORD [fn_p3], 3
MOV DWORD [fn_p4], 4
CALL fn_static

fn_static:
ADD EAX, [fn_p1]
ADD EAX, [fn_p2]
ADD EAX, [fn_p3]
ADD EAX, [fn_p4]
RET

; Jetzt mit Übergabe über den Stack

PUSH DWORD 1
PUSH DWORD 2
PUSH DWORD 3
PUSH DWORD 4
CALL fn_stack
ADD ESP, 16

fn_stack:
PUSH EBP
MOV EBP, ESP
MOV EAX, [EBP+8]
ADD EAX, [EBP+12]
ADD EAX, [EBP+16]
ADD EAX, [EBP+20]
POP EBP
RET
