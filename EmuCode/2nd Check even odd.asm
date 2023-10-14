#Odd Even Checking
mov ax,7
mov bx,2
div bx
mov cx,1
cmp cx,dx
je a
jne b
a:
mov cx,1
ret
b:
mov cx,0
ret    