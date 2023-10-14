#Find Factorial

main proc near
mov bx,6
call fact
ret
main endp

fact proc near
mov cx,bx
mov ax,1
first:
mul cx
loop first
ret
fact endp
hlt