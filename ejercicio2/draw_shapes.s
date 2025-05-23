    .equ SCREEN_WIDTH,   640
    .equ SCREEN_HEIGH,   480
    .equ BITS_PER_PIXEL, 32

    .globl draw_pixel       
    .globl draw_rectangle    
    .globl draw_circle       



//=====================================> FUNCION PIXEL <=====================================//
draw_pixel:
    mov x16, SCREEN_WIDTH 
    mul x16, x2, x16   
    add x16, x1, x16       
    lsl x16, x16, 2     
    add x16, x0, x16     
    
    stur w7, [x16]        
ret                      


//=====================================> FUNCION RECTANGULO <=====================================//
draw_rectangle: 
	sub sp, sp, #56      
	str x1, [sp]           
	str x2, [sp, #8]
	str x3, [sp, #16]
	str x4, [sp, #24]
	str x9, [sp, #32]
    str x16, [sp, #40]
	str x30, [sp, #48]

    cmp x1, x3             
    b.le dont_swap_x    
                            
        mov x16, x1
        mov x1, x3 
        mov x3, x16
    dont_swap_x:

    cmp x2, x4                   
    b.le dont_swap_y          

        mov x16, x2
        mov x2, x4
        mov x4, x16
    dont_swap_y:

    mov x9, x1               

    fill_rec:                  
    cmp x2, x4
    b.gt done                  
       cmp x1, x3              
       b.gt new_row            
           bl draw_pixel     
           add x1, x1, #1
       b fill_rec

    new_row:
        mov x1, x9            
        add x2, x2, #1
        b fill_rec

    done:

	ldr x30, [sp, #48]
    ldr x16, [sp, #40]
	ldr x9, [sp, #32]
	ldr x4, [sp, #24]
	ldr x3, [sp, #16]
	ldr x2, [sp, #8]
	ldr x1, [sp]
	add sp, sp, #56
ret



draw_hline:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x8, [sp, #24]
    str x9, [sp, #32]
    str x30, [sp, #40] 
    cmp x1, x3
    b.gt end_hline

hline_loop:
    mov x8, x1
    mov x9, x2
    mov x1, x8
    mov x2, x9
    bl draw_pixel

    add x1, x1, 1
    cmp x1, x3
    b.le hline_loop

end_hline:
    ldr x30, [sp, #40]
    ldr x9, [sp, #32]
    ldr x8, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

//=====================================> FUNCION CIRCULO <=====================================//
draw_circle:
    sub sp, sp, #88
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x5, [sp, #32]
    str x6, [sp, #40]
    str x7, [sp, #48]
    str x9, [sp, #56]
    str x10, [sp, #64]
    str x11, [sp, #72]
    str x30, [sp, #80]

    mov x4, x1        
    mov x5, x2         
    mov x6, x3       

    mov x9, 0        
    mov x10, x6       
    mov x11, 1
    sub x11, x11, x6, lsl 1 

circle_loop:


    sub x1, x4, x9         
    add x3, x4, x9         
    add x2, x5, x10        
    bl draw_hline

    sub x1, x4, x9
    add x3, x4, x9
    sub x2, x5, x10
    bl draw_hline

    sub x1, x4, x10
    add x3, x4, x10
    add x2, x5, x9
    bl draw_hline


    sub x1, x4, x10
    add x3, x4, x10
    sub x2, x5, x9
    bl draw_hline


    add x9, x9, 1      
    cmp x9, x10
    b.ge end_circle   

    cmp x11, 0
    b.ge update_d_and_y

    add x11, x11, x9, lsl 1
    b circle_loop

update_d_and_y:
    sub x10, x10, 1    
    add x11, x11, x9, lsl 1
    sub x11, x11, x10, lsl 1
    b circle_loop

end_circle:
    ldr x30, [sp, #80]
    ldr x11, [sp, #72]
    ldr x10, [sp, #64]
    ldr x9, [sp, #56]
    ldr x7, [sp, #48]
    ldr x6, [sp, #40]
    ldr x5, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #88
ret
ret
