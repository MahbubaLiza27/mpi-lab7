.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

MOV AH, 1
INT 21H 

MOV BL, AL
SUB BL, 30H

MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H

MOV CX, BX

LOOP1:

MOV BH, 0
JMP LOOP2

PRINT_NEW_LINE:
MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H

LOOP LOOP1
JMP END




LOOP2: 
MOV AH, BL
SUB AH, CL
ADD AH, 1


CMP BH, AH

JGE PRINT_NEW_LINE

MOV AH, 2
MOV DL, '*'

INT 21H

INC BH
JMP LOOP2

END:




;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN