.model small
.stack 100h
.data
    inputMsg db 'Enter Letter in uppercase: $'
    letter db '$'
    outputMsg db 10,13,'Letter in LowerCase: $'
.code
main proc                         
    mov ax, @data
    mov ds, ax                     
    
    lea dx, inputMsg
    mov ah, 09
    int 21h
    
    mov ah, 01
    int 21h
    
    mov letter, al
    
    lea dx, outputMsg
    mov ah, 09
    int 21h
   
    add letter, 32
    
    mov dl, letter
    mov ah, 02
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
