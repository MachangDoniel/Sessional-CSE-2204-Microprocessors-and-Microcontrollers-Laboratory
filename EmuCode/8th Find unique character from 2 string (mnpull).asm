#Find unique character from 2 string
#str1="computer" & str2="controller"
#print at str3="mnpull"

main proc near
mov ah,0
mov bh,0
point:
cmp ah,len1
jl call fun1
break1:
cmp ah,len2
jl call fun2

break2:
inc ah
cmp ah,len1
jle point
ret
main endp

fun1 proc near
lea si,str1
lea di,str2
mov cl,ah
cmp cl,0
je second
loop3:
inc si
loop loop3
second:
mov cl,len2
loop1:
mov al,[si]
cmp [di],al
je break1
jne go
go:
inc di
cmp cl,1
je pb
jne npb
pb:
lea di,str3
mov al,[si]
mov cl,bh
cmp cl,0
je first
loop2:
inc di
loop loop2
first:
inc cl
mov [di],al
inc bh
npb:
loop loop1
jmp break1
ret
fun1 endp
            
            
fun2 proc near
lea si,str1
lea di,str2
mov cl,ah
cmp cl,0
je second2
loop4:
inc di
loop loop4
second2:
mov cl,len1
loop5:
mov al,[di]
cmp [si],al
je break2
jne go2
go2:
inc si
cmp cl,1
je pb2
jne npb2
pb2:
lea si,str3
mov al,[di]
mov cl,bh
cmp cl,0
je first2
loop6:
inc si
loop loop6
first2:
inc cl
mov [si],al
inc bh
npb2:
loop loop5
jmp break2
ret
fun2 endp


str1 db "computer"
len1 equ ($-str1)
str2 db "controller"
len2 equ ($-str2)
str3 db "         "