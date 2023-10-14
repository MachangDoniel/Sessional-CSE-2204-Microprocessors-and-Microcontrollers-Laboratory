mov ax,371  
mov cx,3
lea si,ar 
mov bx,10

for:
    div bx
    mov [si],dx
    mov dx,0 
    inc si
    inc si
    loop for

mov cx,3 
lea si,ar
lea di,ar1

for1:
     mov bx,cx 
     mov cx,3 
      
     mov ax,1
     for2: 
          mul [si]
      loop for2
    mov [di],ax
    inc di
    inc di
    inc si
    inc si
    mov cx,bx
    loop for1

ret 
ar dw 0,0,0 
ar1 dw 0,0,0