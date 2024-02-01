.model small
.stack 100h
.data
    naam db 'bad and boujee$'
.code
main proc 
    mov ax, @data
    mov ds,ax 
    
    mov dl, offset naam
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
