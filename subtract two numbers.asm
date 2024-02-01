.model small
.stack 100h
.data 
    inputMSG db 'Enter Two Numbers:$'
    outputMSG db 10,13,'Difference: $'
.code
main proc
    mov ax,@data
    mov ds, ax
    
    lea dx,inputMSG
    mov ah,09
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    mov ah,1
    int 21h
    
    sub bl,al
    add bl,48
    
    lea dx,outputMSG
    mov ah,09
    int 21h
     
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main
    