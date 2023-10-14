mov ax,80
mov bx,80

cmp ax,bx
jge level1

mov bx,70
cmp ax,bx
jge level2

mov bx,60
cmp ax,bx
jge level3

mov bx,50
cmp ax,bx
jge level4 

mov bx,40
cmp ax,bx
jge level5

mov bx,33
cmp ax,bx
jge level6 

mov dx,'F'  
ret

level1:
       mov dx,'A+'
       ret  

level2:
       mov dx,'A'
       ret

level3:
       mov dx,'B'
       ret

level4:
       mov dx,'C'
       ret 
       
level5:
       mov dx,'D'
       ret  
       
level6:
       mov dx,'E'
       ret  
