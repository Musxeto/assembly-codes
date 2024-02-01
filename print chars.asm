.model medium
.stack 100h
.data
.code
main proc
   mov dl,'M'
   mov ah, 2
   INT 21h 
   mov dl,'U'
   mov ah, 2
   INT 21h
   mov dl,'s'
   mov ah, 2
   INT 21h
   mov dl,'T'
   mov ah, 2
   INT 21h
   mov dl,'a'
   mov ah, 2
   INT 21h
   mov dl,'F'
   mov ah, 2
   INT 21h
   mov dl,'@'
   mov ah, 2
   INT 21h
   mov ah,4ch
   int 21h
main endp
end main
    