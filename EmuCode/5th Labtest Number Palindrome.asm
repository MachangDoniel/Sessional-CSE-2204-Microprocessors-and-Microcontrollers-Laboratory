#Palindrome for 3 digit number

mov ax,121
mov bx,10
mov dx,0
div bx
mov cx,dx
mov dx,0
div bx
cmp ax,cx
je palindrome
jne notpalindrome

palindrome:
mov ax,1
ret
notpalindrome:
mov ax,0
ret