;Program proiect.asm
.model small
.stack 200h
.data
msg db 'introduceti literele: $'
msg1 db  10,13,'imi dai 10? $'
x db ?
.code
pstart:
mov ax, @data
mov ds, ax
;afisare mesaj

mov dx, offset msg
mov ah, 09h
int 21h

mov ah,1h
int 21H


mov x,al
cmp al,97
jl nuEste
sub x,32
nuEste:
mov dx, offset msg1
mov ah,9h
int 21h

mov dl,x
mov ah,2h
int 21h

mov ah,4ch
int 21h
END pstart
