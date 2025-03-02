.model small
.stack 100h
.data
msg db "326$", 0   
space db ' ', '$'  

.code
main proc
 mov ax, @data
 mov ds, ax
 mov si, offset msg  

print_loop:
 mov dx, offset msg
 mov ah, 09h
 int 21h

 mov dx, offset space
 int 21h

 
 mov si, offset msg
 cmp byte ptr [si], '0'
 jne continue_loop
 cmp byte ptr [si+1], '0'
 jne continue_loop
 cmp byte ptr [si+2], '0'
 jne continue_loop
 jmp exit_loop  

continue_loop:
 call dec_str  
 jmp print_loop

exit_loop:
 mov ax, 4c00h
 int 21h
main endp


dec_str proc
 mov si, offset msg + 2 

decrease:
 mov al, [si]   
 cmp al, '0'    
 jne not_zero
 mov byte ptr [si], '9'
 dec si
 jmp decrease  

not_zero:
 dec byte ptr [si]   
 ret
dec_str endp

end main
