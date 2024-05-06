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
 
;MOV DH, 1        
 
MOV CX, BX
 
LOOP1:
 
MOV BH, 1
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


 
CMP BH, BL
 
JG PRINT_NEW_LINE 

MOV AL, CL
SUB AL, BH
CMP AL, 0  
JLE IF
 
MOV AH, 2
MOV DL, ' '
INT 21H

JMP LAST

IF: 
MOV AH, 2
MOV DL, '*'
INT 21H

LAST:

 
INC BH
JMP LOOP2  

 
END:
 
 
 
 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAINbh 