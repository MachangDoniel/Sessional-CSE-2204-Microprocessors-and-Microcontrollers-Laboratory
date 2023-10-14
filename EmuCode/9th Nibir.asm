

  call binaryToDecimal 
  ret




prime proc near 
    
    
    lea si,str1 
    mov ax,0
    mov bx,0
    mov bh,[si]
    inc si
    mov bl,[si]
    lea si,str2
    lea di,str3
    
    mov cl,10
    
    for1:
    mov al,[si]
    cmp al,bh
    jge nextstep 
    inc si
    loop for1
    
     
    nextstep:
    for2: 
    inc cl
    inc si
    mov [di],al
    inc di
    mov al,[si]
    cmp al,bl
    jge endloop  
    
    loop for2
    
    endloop:
    mov cl,0
    ret
    
    ret
    prime endp 





binaryToDecimal proc near 
                           lea si,binary
                           mov cl,bLen 
                           dec cl 
                           
                           
                           jump:
                           mov ax,[si]
                           sub al,30H
                           mov bh,cl
                           mov bl,2 
                           
                           start:
                           mul bl
                           loop start
                           add dx,ax 
                           inc si
                           dec bh 
                           cmp bh,0
                           je return
                           mov cl,bh
                           jmp jump
                           
                           
                           return:
                           inc dx
                           ret
                           
                           
    
    
    
    ret
    binaryToDecimal endp 








str1 db 3,45
str2 db 2,3,5,7,11,13,17,19,23,29,31,37,41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97    
str3 db 0 



binary db "111"
bLen equ ($-binary)