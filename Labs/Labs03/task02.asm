.model small
.stack 100h

.data 
a db 1 
b db 2
c db 0

.code
main proc
mov al, [a]
mov bl, [b]
mov cl, [c]
add ax, bx

cmp al, cl 
jl less0




less0: 




mov ah, 4Ch
int 21h
main endp
end main