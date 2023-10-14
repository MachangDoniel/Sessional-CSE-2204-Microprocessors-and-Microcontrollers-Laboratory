mov ax,7
mov bx,2
div bx 

mov bx,0
cmp dx,bx
jg a
jmp b

a:
  mov bx,'o'
  ret
b:
  mov bx,'e';
ret