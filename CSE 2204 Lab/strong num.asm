mov al,153
mov cx,4
mov bl,10
mov dl,al  

lea si,ar

for:  
   div bl
   mov [si],ah
   mov ah,0
   inc si
   loop for 
   
lea si,ar 
lea di,ar1

mov cl,3


for1:
    mov bl,cl
    mov ax,1
    
    mov cl,3
     
    for2:
        mul [si]
    loop for2
    mov [di],al
    inc di
    mov cl,bl
    inc si
loop for1

lea si,ar1
mov cl,3 
mov al,0

for3:
    add al,[si]
    inc si
    loop for3
    
cmp al,dl
je go
mov dx,'N'
ret

go:
  mov dx,'Y'
  ret   
               
   
ret  
ar1 db 0,0,0
ar db 0,0,0