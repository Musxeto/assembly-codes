.model small
.stack 100h
.data
    message1 db 'Ammad, $'
    message2 db 'Habshi!$'
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset message1
    mov ah, 09h
    int 21h

    mov dl, 10
    mov ah, 02
    int 21h
    
    mov dl, 13
    mov ah, 02
    int 21h

    mov dx, offset message2
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
