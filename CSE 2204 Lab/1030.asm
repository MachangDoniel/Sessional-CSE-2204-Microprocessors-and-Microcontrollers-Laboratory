mov cx,16
lea si,ar
lea di,ar1
for:
    mov ax,[si]
    
    mov bx,3;
    div bx
    
    cmp dx,0
    je go
    mov dx,0
    inc si
    inc si
    inc di
    inc di  
    loop for
go:
  mov dx,0
  mov bx,[si]
  mov [di],bx
  inc si
  inc si
  inc di
  inc di
  loop for
lea di,ar1+30 
mov cx,16 
lea si,ar2
for2:
     mov bx,[di]
     mov [si],bx
     dec di
     dec di
     inc si
     inc si
     loop for2
     
  
ret
ar dw 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
ar1 dw 16 dup(0)
ar2 dw 16 dup(0)