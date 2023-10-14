mov ax,9
mov bx,2
div bx
cmp dx,1
jge lb
jmp llb
lb:
mov dx,1
ret
llb:
mov dx,2                                                              