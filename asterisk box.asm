.model small
.stack 100h
.data
.code
main proc
    mov bx,4
    mov cx,5
    l1:
    push cx
    mov cx,bx
    l2:
    mov dx,'*'
    mov ah,2
    int 21h
    
    loop l2
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    pop cx
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    