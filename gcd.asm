name "gcd"

org 100h
mov al,number1
mov bl,number2
cmp al,bl

jl lower
jmp mainloop 


lower:
mov al,number2
mov bl,number1
;jmp mainloop

mainloop:
div bl
cmp ah,0
je print
jmp ifnot


ifnot:
mov al,bl
mov bl,ah
mov ah,0


print:
mov gcd,bl

ret
number1 db 20
number2 db 50
gcd db 0


      
      