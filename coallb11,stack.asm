.model
.stack 100h
.data 

 val dw 4,0,7,1,5,0,9,0,8  
 
 .code 
 
 main proc 
    
       mov ax,@data
       mov ds, ax 
       
       mov si, offset  val
       mov cx,9
        
       psh:
        mov ax,[si]
        cmp ax,0 
        JE skip
        push ax 
                  
       skip:
       add si,2         ; move to next element
    
      
    
       ;calling loop 
         
       loop psh
       
       
   mov cx, 6 
          
  display:
    pop ax
    mov dl, al 
    add dl, 30h       ; take lower byte
    mov ah,02h        ; DOS print character
    int 21h
    loop display 
    
    
     mov ah,4Ch
    int 21h

main endp
end main
         
       
        
       