#String Palindrome
mov cl,len1
lea si,str1
lea di,str1
first:
inc di
loop first

mov cl,len1
dec di
second:
mov al,[si]
cmp al,[di]
je ok
jne notpalindrome
ok:
inc si
dec di
loop second

palindrome:
mov cl,len2
lea si,palin
lea di,ans
fourth:
mov al,[si]
mov [di],al
inc di
inc si
loop fourth
ret

notpalindrome:
mov cl,len3
lea si,notpalin
lea di,ans
third:
mov al,[si]
mov [di],al
inc di
inc si
loop third
ret


str1 db "AYABCDEFEDCBAY"
len1 equ ($-str1)
palin db "Palindrome"
len2 equ ($-palin)
notpalin db "Not Palindrome"
len3 equ ($-notpalin)
ans db ""
hlt