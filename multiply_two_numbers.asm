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
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    mov ah,1
    int 21h
    sub al,48
    
    mul  bl
    AAM     ;Adjust Ascii after Multiplication
    
    mov ch,ah
    mov cl,al
     
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