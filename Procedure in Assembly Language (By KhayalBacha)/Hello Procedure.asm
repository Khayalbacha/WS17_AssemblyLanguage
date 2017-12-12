.MODEL SMALL
.STACK 50h
.DATA
    msg DB "Hello World!$"  
   
.CODE
MAIN PROC
    
    MOV AX,@Data
    MOV DX,AX
    
    CALL Hello

    MOV AH,4CH
    INT 21H
    
MAIN ENDP
         
Hello PROC
    
   MOV AH,9H
   LEA DX,msg
   INT 21H
     
   RET 
   Hello Endp 
         
END MAIN 
