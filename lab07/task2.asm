%include 'in_out.asm' 
section .data 
vvodx: db "Введите x: ",0 
vvoda: db "Введите а: ",0 
vivod: db "Результат: ",0 
 
section .bss 
x: resb 80 
a: resd 1 
 
section .text 
global _start 
_start: 
 
mov eax,vvodx 
call sprint 
mov ecx,x 
mov edx,80 
call sread 
 
mov eax,x 
call atoi 
 
cmp eax,[a] 
jl _functionx 
 
mov eax,vvoda 
call sprint 
mov ecx,x 
mov edx,80 
call sread 
 
mov eax,x 
call atoi 
mov [a],eax 
 
_functiona: 
mov edx,3 
mul edx 
add eax,1 
jmp _end 
 
_functionx: 
add eax,1 
 
_end: 
mov ecx,eax 
mov eax,vivod 
call sprint 
mov eax,ecx 
call iprintLF 
call quit

