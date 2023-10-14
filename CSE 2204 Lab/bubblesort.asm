mov cx,5
loop1:
    mov dx,cx
    lea si,ar
    lea di,ar
    mov cx,4
    loop2:
        mov al,[si]  
        inc di
        mov bl,[di]
        cmp bl,al
        jg skip
        mov [si],bl
        mov [di],al
        skip:
            inc si
            loop loop2
    mov cx,dx
    loop  loop1
ret  

ar db 5,-40,3,2,1