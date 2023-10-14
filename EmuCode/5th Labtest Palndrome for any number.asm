#Palindrome for any Number

mov ax,4554
lea si,arr
lea di,arr
mov bx,10
mov cx,0
divide:
mov dx,0
div bx
mov [si],dx
inc si  
inc si
inc cx
cmp ax,0
je go
jne divide
go:

dec si
dec si
first:
mov ax,[si]
cmp ax,[di]
je next
jne notpalindrome

next:
inc di
inc di
dec si
dec si
loop first
palindrome:
mov ax,1
ret
notpalindrome:
mov ax,0
ret


loop first



arr dw 4 dup(0)