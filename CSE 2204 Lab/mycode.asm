mov ax,90
cmp ax,80
jge lb  
jmp llb

lb:
mov dx,'A'
ret  

llb:

cmp ax,70

jge bb
jmp lllb

bb:
mov dx, 'B'
ret

lllb:

 cmp ax,60

jge cc
jmp llllb

cc:
mov dx,'C'
ret

llllb:
mov dx,'D'
