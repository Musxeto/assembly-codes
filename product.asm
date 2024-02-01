.model small
.stack 100h
.data
    imsg1 db 10,13,"Enter Value 1: $" 
    imsg2 db 10,13,"Enter Value 2: $"
    omsg db 10,13,"Output is: $" 
    val1 db ?
    val2 db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
  
    lea dx, imsg1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    
    sub al, 48
    mov val1, al
    

    lea dx, imsg2
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    
    sub al, 48
    mov val2, al
    

    lea dx, omsg
    mov ah, 9
    int 21h
    
   
    mov al, val2
    mul val1
    add ax, 48  
    mov dl,al
    mov ah,2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
