.model small
.stack 100h
.data
    inputMSg db 'Enter a number: $'
    isEqu db 10,13,"Number is Equal!$"
    NotEqu db 10,13,"Number is Not Equal!$"
    number db '4'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,inputMsg
    mov ah,09
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,number
    je yes
    jne no
    
    
    yes:
        lea dx,isEqu
        mov ah,09
        int 21h
        jmp exit
    
    no:
        lea dx,NotEqu
        mov ah,09
        int 21h
        jmp exit
    
    exit:
        mov ah,4ch
        int 21h
    main endp
end main