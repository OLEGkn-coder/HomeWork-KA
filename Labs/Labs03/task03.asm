.model small
.stack 100h

.data
a dw 0FFFFh
b dw 8000h 

.code
main proc 
mov ax, [a]
mov bx, [b]
and ax, bx

cmp ax, bx 
je equals
jne notequals 

equals: 
mov ax, 1
jmp done

notequals:
mov bx, 0
jmp done

done:
mov ah, 4Ch
int 21h
main endp 
end main