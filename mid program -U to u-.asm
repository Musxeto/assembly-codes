.model small
.stack 100h
.data
    alphabets db 255
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dl,'A'
    mov cx,26
    lea si,alphabets
    
    storeUpp:
        mov [si],dl
        inc dl
        inc si
        loop storeUpp
    
    mov dl,'a'
    mov cx,26
        
    storeLow:
        mov [si],dl
        inc dl
        inc si
        loop storeLow 
    
    lea si,alphabets
    PrintNumbers:
        mov dl,[si]
        cmp dl,'U'
        jl skip
        mov ah,02
        int 21h 
     skip:
        inc si
        cmp dl,117
        je exit
        jmp PrintNumbers 
    
    exit:    
    mov ah, 4ch
    int 21h
main endp
end main
