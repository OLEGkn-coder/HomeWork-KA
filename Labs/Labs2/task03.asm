.model small
.stack 100h
.data
 start_num db 9

.code

main proc

 mov ax, @data
 mov ds, ax

 mov cl, start_num

loop_start:
 dec cl
 cmp cl, -1
 jne loop_start

 mov ax, 4c00h
 int 21h

main endp
end main