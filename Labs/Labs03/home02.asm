.model small
.stack 100h
.data
a dw 31
b dw 250
c dw 80

.code
main proc 


;if ((a > 18 && a < 30) or (a > 14 && a < 38 && b > 100)){
;   a = a+180;
;  if (c>9){
;   c = c+125;
;} else{
;  a = 0;
;  b = 1;
;}

mov ax, [a]
mov bx, [b]
mov cx, [c]

cmp ax, 18 
jg greater
jmp false 

greater: 
cmp ax, 30
jl less
jmp false 

false: 
cmp ax, 14
jg greater3
jmp ConditionFalse

greater3:
cmp ax, 38
jl less2
jmp ConditionFalse

less2:
cmp bx, 100
jg less
jmp ConditionFalse

less:
add ax, 180
cmp cx, 9
jg greater2

greater2:
add cx, 125
jmp done

ConditionFalse:
mov ax, 0
mov bx, 1
jmp done

done:
mov ax, 4Ch
int 21h
main endp
end main 
