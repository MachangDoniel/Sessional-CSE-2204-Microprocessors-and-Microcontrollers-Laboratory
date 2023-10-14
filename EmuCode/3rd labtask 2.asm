mov cx,3
mov bx,0
lea si,arr1
lea di,arr2

A:
    mov bx,cx
    mov cx,[si]
    mov ax,1
    B:
        mul cx
    loop B
    
    mov [di],ax
    mov cx,bx
    inc si
    inc si
    inc di
    inc di
loop A


arr1 dw 2,3,6,7
arr2 dw 3 dup(0)