#Sum ofnumber(1-30) divisable by 3

mov cx,30
lea si,arr

first:
mov ax,cx
mov dx,0
mov bx,3
div bx
cmp dx,0
je B
jne C
B:
mov [si],cx
inc si
inc si
loop first
cmp cx,0
je ret1
C:

loop first
cmp cx,0
je ret1


ret1:
lea di,arr2
lea si,arr
mov dx,0
mov cx,30
second:
add dx,[si]
inc si
inc si
loop second
mov [di],dx

ret

arr dw 30 dup(0)
arr2 dw 0