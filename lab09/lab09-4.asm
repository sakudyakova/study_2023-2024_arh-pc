%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
SECTION .text
global _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi, 0
mov edi,7
call .next

.next:
pop eax
call atoi
add eax,1
mul edi
add esi,eax
cmp ecx,0h
jz .done
loop .next

.done:
mov eax, msg
call sprint
mov eax, esi
call iprintLF
call quit
ret

