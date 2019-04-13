waschvorgang:
MOV EAX, 1; Wasserventil aufmachen
CALL aktor

wasserstand_warten:
CALL wasserstand ; Wasserstand einlesen
CMP EAX, 30
JL wasserstand_warten ; warten bis Wasserstand 30 ist

MOV EAX, 0; Wasserventil zumachen
CALL aktor

MOV EBX, 10 ; folgenden Teil 10x durchlaufen

schleife_lr:
MOV EAX, 8
CALL aktor ; Linkslauf

MOV EAX, 5
CALL warte_n ; 5 Sekunden laufen lassen

MOV EAX, 0
CALL aktor ; Trommelmotor aus

MOV EAX, 15
CALL warte_n ; 15 Sekunden Pause
 
MOV EAX, 4
CALL aktor ; Rechtslauf

MOV EAX, 5
CALL warte_n ; 5 Sekunden warten lassen

MOV EAX, 0
CALL aktor ; Motor aus

MOV EAX, 15
CALL warte_n ; 15 Sekunden Pause

DEC EBX ; Schleifenzähler dekrementieren
JNE schleife_lr

MOV EAX, 2
CALL aktor ; abpumpen

MOV EAX, 60
CALL warte_n ; Mindestzeit

warte_bis_leer:
CALL wasserstand
CMP EAX, 0 ; warten, solange EAX ungleich 0
JNE warte_bis_leer

MOV EAX, 0
CALL aktor ; alles aus
RET ; Rücksprung


