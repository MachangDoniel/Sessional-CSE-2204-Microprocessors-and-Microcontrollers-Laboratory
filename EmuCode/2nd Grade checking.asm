#Grade Checking
mov ax,38
cmp ax,80
jae a:
cmp ax,75
jae b:
cmp ax,70
jae c:
cmp ax,65
jae d:
cmp ax,60
jae e:
cmp ax,55
jae f:
cmp ax,50
jae g:
cmp ax,45
jae h:
cmp ax,40
jae i:
mov bx,'F'
ret
a:
mov bx,'A+'
ret   
b:
mov bx,'A'
ret 
c:
mov bx,'A-'
ret 
d:
mov bx,'B+'
ret
e:
mov bx,'B-'
ret 
f:
mov bx,'C'
ret 
g:
mov bx,'C-'
ret 
h:
mov bx,'D'
ret
i:
mov bx,'D'
ret   