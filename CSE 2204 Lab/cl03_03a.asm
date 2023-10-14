  
  mov cx,4
  mov al,0
  mov bx,0  
  mov dx,0
  
  lea si,arr1
  lea di,arr2
  
  here:
  mov ax,1
  here2:
  mov dx,[si]
  mul dx 
  dec [di]
  cmp [di],0
  jne here2
  inc di   
  add bx,ax
  inc si 
  inc si
  loop here
  
  
  ret
  
 
  arr1 dw 2,3,5,7   
  arr2 db 1,2,3,4