#
mov cx,4
mov ax,0
mov bx,0
mov dx,0
lea si,arr1
A: 
   mov bx,cx
   
   mov ax,1
   inc dx;
   mov cx,dx
   B:
       mul [si] 
   loop B:
   mov [si],ax
   inc si
   inc si
   
   mov cx,bx
loop A:
lea si,arr1
mov cx,4
mov ax,0
mov bx,0
C:
   mov ax,[si]
   add bx,ax
   inc si
   inc si
loop C
ret
arr1 dw 2,3,5,7