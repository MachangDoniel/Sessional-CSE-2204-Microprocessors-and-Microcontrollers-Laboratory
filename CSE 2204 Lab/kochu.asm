mov cx,4
lea si,arr1
lea di,arr2
mov bx,cx

l1:
     mov ax,[si]
     inc si
     inc si
     
     loop l1   
dec si
dec si

mov cx,4

l2: 
   mov ax,1
   mov bx,cx
   l3:
      mov dx,[si]
      mul dx
      loop l3;
   mov [di],ax
   inc di
   inc di
   dec si
   dec si
   mov cx,bx
   loop l2 



ret

arr1 dw 2,3,5,7   
arr2 dw 4dup(0)