mov ax,0
mov di,0
mov cx,4
lea si,arr1
here:
mov ax,[si]
mul [si]
mul [si]
inc si
add di,ax
loop here
arr1 db  1,4,5,6