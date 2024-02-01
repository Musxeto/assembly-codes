.model small
.stack 100h
.data
    inputMsg db 'Enter Two Numbers: $'
    num1 db 0
    num2 db 0
    ResMsg db 10,13,'SUM: $'
.code
main proc 
    mov ax, @data
    mov ds, ax
    
    mov dx, offset inputMsg
    mov ah, 9
    int 21h
    
    mov ah, 01
    int 21h
    sub al, '0'
    mov num1, al
    
    mov ah, 01
    int 21h
    sub al, '0'
    mov num2, al
    

    mov bl, 0
    add bl, num1
    add bl, num2
    

    mov dx, offset ResMsg
    mov ah, 09
    int 21h
    
    add bl, '0'
    mov dl, bl
    mov ah, 02
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
