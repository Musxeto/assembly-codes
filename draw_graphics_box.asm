;program to draw box with graphics
.model small
.stack 100h
.data
.code
main proc
    mov ah,06h
    mov al,10
    mov bh,00100000b
    mov ch,0
    mov cl,0
    mov dh,15
    mov dl,15
    int 10h
    
    mov ah,4ch
    int 21h
    main endp
end main