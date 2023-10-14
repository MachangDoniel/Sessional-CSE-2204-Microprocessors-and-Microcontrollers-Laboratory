mov cx,5
mov ax,0
mov bx,0
lea si,arr1
lea di,arr2
   here:
   mov al,[si]
   add bl,al
   inc si
   inc di
   loop here
ret

arr1 db 1,2,3,4,5
arr2 db 5 dup(0)