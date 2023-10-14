#Reverse each word from a sentence
#From "we love kuet" to "ew evol teuk"

mov cl,len1
lea si,str1
lea di,str2
mov bl,0
first:
cmp [si]," "
je space
jae notspace
space:
mov dx,si
dec si
mov al,cl
mov cl,bl
second:
mov bl,[si]
mov [di],bl
inc di
dec si
loop second
mov bl,0
inc di
mov [di],' '
mov si,dx
inc si
mov cl,al
loop first
ret
notspace:
inc si
inc bl
loop first

mov dx,si
dec si
mov al,cl
mov cl,bl
third:
mov bl,[si]
mov [di],bl
inc di
dec si
loop third
mov bl,0
inc di
mov [di]," "
mov si,dx
inc si
mov cl,al

ret

str1 db "we love kuet"
len1 equ ($-str1)
str2 db "            "  