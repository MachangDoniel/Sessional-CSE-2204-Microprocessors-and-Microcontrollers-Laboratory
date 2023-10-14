#Using 2 procedure
#determine maximum appeared character and print it in a string
#convert lower case to uppercase and uppercase to lowercase

main proc near

call maxOccurance
call caseChange

ret    
main endp

maxOccurance proc near
lea si,str1
mov cl,len1 
loop2:
lea di,arr1
cmp [si],' '
je ok3
mov al,[si]
sub al,'A'
mov ah,cl
mov cl,al
cmp cl,0 
je ok2
loop3:
inc di
loop loop3
ok2:
inc [di] 
mov cl,ah
ok3:
inc si
loop loop2

lea di,arr1
mov cl,26
mov dl,0
mov al,0
loop4:
cmp [di],al
jg change
jng ok4
change:
mov al,[di]
mov bl,dl
add bl,'A'
ok4:
inc si
inc dl
loop loop4

lea si,str3  
mov cl,len3
loop5:
cmp [si],' '
je ok5
inc si
loop loop5
ok5:
mov [si],' '
inc si
mov [si],bl
inc si
mov [si],'='
inc si 
add al,48
mov [si],al
ret
maxOccurance endp


caseChange proc near
lea si,str2
mov cl,len2
loop1:
low:
cmp [si],'a'
jl up:
cmp [si],'z'
jle change1
jnle up
change1:
sub [si],32
inc si
loop loop1
ret
up:
cmp [si],'A'
jl ok1
cmp [si],'Z'
jle change2
jnle ok1
change2:
add [si],32
ok1:
inc si
loop loop1 
ret
caseChange endp




str1 db "ABCDEFEDCBA AAABCAA DCA"
len1 equ ($-str1) 
arr1 db 26 dup(0)
str2 db "AbEfECBA12 $abc    A"
len2 equ ($-str2)  
str3 db "max    " 
len3 equ ($-str1)