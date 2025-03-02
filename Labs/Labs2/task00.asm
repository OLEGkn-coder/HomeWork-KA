.model small 
.stack 100h 
.code

main proc
               xor ax, ax
               xor bx, bx
               xor cx, cx
               xor dx, dx
               mov ax, 100
               mov bx, 50
               add bx, ax
               mov dx, 40

        


    loop_start:
               inc cx
               cmp cx, dx
               jnz loop_start
               
               sub bx, cx

               mov ax, 4c00h
               int 21h

main endp
end main 
