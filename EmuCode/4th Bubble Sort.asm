#Bubble Sort
mov cl,5
mov bl,cl

A:
mov cl,4
lea si,arr

    B:
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
    loop B

    nonswap:
    cmp cl,0
    je break1
    loop B
    
    break1:
    dec bl
    mov cl,bl
    cmp cl,0
    je break2
    jne loop A
break2:
ret

arr db 5,4,3,2,1