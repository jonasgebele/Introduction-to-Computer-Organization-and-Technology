bargraph_display: EQU WORD 0x10

CALL step_bargraph2
CALL step_bargraph2
CALL step_bargraph2
CALL step_bargraph1
CALL step_bargraph1
CALL step_bargraph1
CALL init_bargraph

init_bargraph:
MOV WORD [bargraph_display], 0x0
RET

step_bargraph1:
SAR WORD [bargraph_display], 1
RET

step_bargraph2:
CMP WORD [bargraph_display], 0x0
JE aktivieren
JMP step_bargraph1

aktivieren:
MOV WORD [bargraph_display], 1000000000000000b
RET
