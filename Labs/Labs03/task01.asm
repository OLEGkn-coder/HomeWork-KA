.model small
.stack 100h

.code
main proc 
mov ax, 200
mov bx, 100


mov ah, 4Ch
mov al, 0
int 21h


main endp 
end main
