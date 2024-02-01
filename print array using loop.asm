.model small
.stack 100h
.data
    outputMsg db 'BILALSULTAN MOTA REAL!$'
.code
main proc
    mov ax, @data
    mov ds, ax

    lea si, outputMsg 
    mov cx,22
printLoop:
    mov dl, [si]          

    mov ah, 02       
    int 21h

    inc si           
    loop printLoop    

    mov ah, 4ch
    int 21h
main endp
end main
