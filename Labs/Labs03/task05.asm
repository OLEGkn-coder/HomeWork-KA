.model small
.stack 100h

.code 
main proc
mov ax, 200
mov dx, 100

xor dx, ax; Збергає значення ax в dx, dx результат комбінації ax і dx
xor ax, dx; Тепер у AX буде старе значення DX, оскільки попередня операція модифікувала DX так, що це XOR з початковим значенням AX дасть старе значення DX.
xor dx, ax; Тепер у DX буде старе значення AX, оскільки в AX зберігається старе значення DX, а тепер DX виконує XOR з ним і отримує старе значення AX.

mov ah, 4Ch
int 21h

main endp
end main