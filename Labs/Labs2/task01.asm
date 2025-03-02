.model small
.stack 100h
 

.code
main proc
 mov cx, 0
 mov dx, 10

loop_start:
 inc cx
 cmp cx, 10
 jnz loop_start

 mov ax, 4c00h
 int 21h

main endp
end main 


  