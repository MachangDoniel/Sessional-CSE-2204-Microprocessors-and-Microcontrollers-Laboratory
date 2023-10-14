#Bubble Sort
mov cl,5
here:
    lea si,arr
    mov bl,cl
    mov cl,4
    here2:
       mov al,[si]
       inc si
       cmp al,[si]
       jg swap
       jng nonswap
       swap:
          mov dl,[si]
          mov [si],al
          dec si
          mov [si],dl
          inc si 
    loop here2
    cmp cl,0
    je break
       nonswap:
    
    loop here2
    cmp cl,0
    je break
    break: 
    mov cl,bl
loop here
ret
arr db 1,5,2,4,3