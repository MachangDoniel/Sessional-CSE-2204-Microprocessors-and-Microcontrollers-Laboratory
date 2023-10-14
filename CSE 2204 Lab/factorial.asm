mov cx,3
lea si,arr1
lea di,arr2
yo:
   mov bx,cx
   mov cx,[si]
   mov ax,1
   yo2:
       mul cx
       loop yo2
   mov cx,bx
   mov [di],ax
   inc si
   inc si
   inc di
   inc di
   loop yo 
ret
arr1 dw 2,5,6
arr2 dw 3dup(0)