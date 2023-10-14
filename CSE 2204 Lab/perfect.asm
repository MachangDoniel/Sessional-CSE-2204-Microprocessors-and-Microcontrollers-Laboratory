mov ax,496 
mov bx,ax 

lea si,ar 
mov cx,2

div cx

mov dx,0

mov cx,ax 

for:
    mov dx,0
    mov ax,bx
    div cx
    cmp dx,0
    je go
    
    loop for
 
go:
   add [si],cx 
   loop for
  

ret 
ar dw 0
