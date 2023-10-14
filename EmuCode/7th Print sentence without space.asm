#Print sentence without space without using new string
#From "we love kuet" to "welovekuet"

mov cl,len1
lea si,str1
lea di,str1

first:
mov al,[si]
cmp al,' '
je space
mov [di],al
inc di
space:
inc si

loop first
ret


str1 db "we love kuet"
len1 equ ($-str1)