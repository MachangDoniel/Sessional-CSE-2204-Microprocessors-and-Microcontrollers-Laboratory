#Count small,capital,number and special char in string

mov cl,len
lea si,str
mov al,0
mov ah,0
mov bl,0
mov bh,0

first:
cmp [si],'0'
jge number
jng other

number:
cmp [si],'9'
jg cap
inc ah
inc si
loop first

cap:
cmp [si],'A'
jl other
cmp [si],'Z'
jg small
inc bl
inc si
loop first

small:
cmp [si],'a'
jl other
cmp [si],'z'
jg other
inc al
inc si
loop first

other:
inc bh
inc si
loop first
ret

str db "123@gmailDON%"
len equ ($-str)