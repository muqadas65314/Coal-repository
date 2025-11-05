.model small
.stack 100h
.data

msg1 db 'Enter a lowercase character: $'
msg2 db 'The uppercase character is: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; -------------------------------
    ; Show message for input
    ; -------------------------------
    mov ah, 9
    mov dx, offset msg1
    int 21h
    
    ; -------------------------------
    ; Take input character
    ; -------------------------------
    mov ah, 1
    int 21h        
    mov bl, al     
    
    
    sub bl, 32
    
    ; -------------------------------
                    
    ; -------------------------------
     mov dl, 10
     mov ah, 2
     int 21h  
             
    mov dl, 13 
    mov ah, 2    
    int 21h
    

    
    ; -------------------------------
    ; Print message for output
    ; -------------------------------
    mov ah, 9
    mov dx, offset msg2
    int 21h
    
    ; Print the uppercase character
    mov ah, 2
    mov dl, bl
    int 21h
    
    ; Exit
    mov ah, 4ch
    int 21h
main endp
end main
