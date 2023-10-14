mov ax,9999  
mov cx,4
lea si,ar 
mov bx,10

for:
    div bx
    mov [si],dx
    mov dx,0 
    inc si
    inc si
    loop for   
    
lea si,ar+6
 
lea di,ar1 
mov cx,4

for1:
     mov bx,[si]
     mov [di],bx 
     inc di
     inc di
     dec si
     dec si
     loop for1
lea si,ar
lea di,ar1
mov cx,4

for3: 
     mov bx,[si]
     
     cmp bx,[di]
     jne go:
     inc si
     inc si
     inc di 
     inc di
     loop for3
     mov dx,'Y'
     ret
           
go:
  mov dx,'N'
  ret

ret 
ar dw 0,0,0,0 
ar1 dw 0,0,0,0