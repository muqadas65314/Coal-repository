.model small
.data
          msg db  'Enter your name : $'
.code
main proc
    
    mov ax, @data
    mov ds, ax
    mov dx, offset msg
    mov ah, 9
    int 21h

; ---- Take input characters and push them ---- 

mov cx, 0 
         
takevalue: 

        mov ah, 1          
        int 21h  
        
        
        cmp al, 13   ; if Enter key pressed, cret
        je next
        push ax    ; push character in stack
inc cx             ; count one character(increment)

jmp takevalue


 next:    
mov dl, 10
mov ah, 2
int 21h
mov dl, 13
mov ah, 2
int 21h

; ---- Pop and display (reverse order) ----
pp:  
pop dx
mov ah, 2
int 21h
loop pp


mov ah, 4Ch
int 21h
main endp
end main