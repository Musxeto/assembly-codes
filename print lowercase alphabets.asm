.model small
.stack 100h
.data
.code
main proc
    
    mov dl,'a'
    mov cx,26
    
    PrintNumbers:
        mov ah,02
        int 21h
        
        inc dl
        loop PrintNumbers 
        
    mov ah, 4ch
    int 21h
main endp
end main
