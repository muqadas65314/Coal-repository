
.model small
.stack  100h
.data 

 m1 db ' Name : Muqadas khan Niazi$'  
m2 db '  Father Name :  Muhammad Fateh Ullah khan $'
m3 db '  Address :  XYZ$'
 m4 db ' Email :  xyz@g,ail.com $' 
 
.code
main proc
      ;-----------------------------------------------------------------
      ;-----------------------------------------------------------------
      mov ax,@data
      mov ds,ax  ; ax ka data move krwaia h  to the  access variable 
      mov dl,m1
      mov dx,offset m1     ; for address of next
       
      mov ah,9
      int 21h
      
      mov dx, 10
      mov ah, 2
      int 21h
       
       mov dx, 13
       mov ah, 2 ;  go start of the line  
      int 21h
      ;---------------------------------------------------------------------
      ;---------------------------------------------------------------------
       
      mov ax,@data
      mov ds,ax  ; ax ka data move krwaia h  to the  access variable 
      mov dl,m2
      mov dx,offset m2     ; foe address of next     
      
      mov ah,9 ; service routine to print string
      int 21h
         
      mov dx, 10
      mov ah, 2
      int 21h
       
       mov dx, 13
       mov ah, 2 ;  go start of the line  
      int 21h
      
      ;------------------------------------------------------------------------
      ;------------------------------------------------------------------------
       mov ax,@data
      mov ds,ax  ; ax ka data move krwaia h  to the  access variable 
      mov dl,m3
      mov dx,offset m3    ; foe address of next 
      mov ah,9 ; service routine to print string
       int 21h
         
          mov dx, 10
      mov ah, 2
      int 21h
       
       mov dx, 13
       mov ah, 2 ;  go start of the line  
      int 21h
     ;-----------------------------------------------------------------------------
    ;------------------------------------------------------------------------------
     mov ax,@data
      mov ds,ax  ; ax ka data move krwaia h  to the  access variable 
      mov dl,m4
      mov dx,offset m4    ; foe address of next
      mov ah,9 ; service routine to print string
      int 21h
         
      mov dx, 10
      mov ah, 2
      int 21h
       
       mov dx, 13
       mov ah, 2 ;  go start of the line  
      int 21h
       
    
       mov ah,4ch
       int 21h
        main endp
end main
        
