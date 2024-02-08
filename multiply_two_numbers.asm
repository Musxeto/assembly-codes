;program to multipy two numbers
.model small
.stack 100h
.data
    inputMsg db 10,13,"Enter Two Numbers: $"
    outputMsg db 10,13,'Product is: $'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,inputMsg
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    
    mul  bl
    AAM     ;Adjust Ascii after Multiplication
    mov ch,ah
    mov cl,al
    
    lea dx,outputMsg
    mov ah,09h
    int 21h 
     
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main