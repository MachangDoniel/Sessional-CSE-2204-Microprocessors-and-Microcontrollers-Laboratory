mov ax,0
mov bx,0
mov cx,4       
lea si,arr1
lea di,arr2
here:
mov ax,[si]
cmp [si],2
jge lb
lb:
dec [si]
mul [si]
cmp [si],2
jge lb
jmp llb
llb:
inc si
mov [di],ax
loop here
ret
arr1 db 3,7,6
arr2 db 3 dup(0)