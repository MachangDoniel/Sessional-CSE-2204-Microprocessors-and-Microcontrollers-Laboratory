#Count vowel and consonant in string

mov cl,len
lea si,str
mov al,0
mov ah,0
mov bl,0

first:
cmp [si],'a'
jge small
cmp [si],'A'
jge cap
inc si
loop first
ret

small:
cmp [si],'z'
jle s
inc si
loop first
ret
cap:
cmp [si],'Z'
jle c
inc si
loop first
ret

s:
cmp [si],'a'
je svowel
cmp [si],'e'
je svowel
cmp [si],'i'
je svowel
cmp [si],'o'
je svowel
cmp [si],'u'
je svowel
inc bl
inc si
loop first
ret

c:
cmp [si],'A'
je cvowel
cmp [si],'E'
je cvowel
cmp [si],'I'
je cvowel
cmp [si],'O'
je cvowel
cmp [si],'U'
je cvowel
inc bl
inc si
loop first
ret

svowel:
inc al
inc si
loop first
ret

cvowel:
inc ah
inc si
loop first
ret

str db "I am Doniel Tripura"
len equ ($-str)