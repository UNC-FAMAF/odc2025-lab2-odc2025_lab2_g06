	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ BITS_PER_PIXEL, 32
    .equ WHITE, 0xfdfdfd
    .equ GRAY, 0x999999
    .equ BLACK, 0X030105
    .equ DARK_BLUE, 0x003466
    .equ PINK, 0xff9aff
    .equ FUCSIA, 0xfc319a
    .equ CHEEKS, 0xfb9a93
    .equ BREAD, 0xfec8a1
    .equ RED, 0xf90101
    .equ ORANGE, 0xfe9900
    .equ YELLOW, 0xffff01
    .equ GREEN, 0x34ff03
    .equ LIGHT_BLUE, 0x0398fd
    .equ VIOLET, 0x6835ff
    .equ BLUE, 0x151D7E


    .globl draw_background
    .globl draw_body
/*     .globl draw_star
    .globl draw_sarasa */

draw_background:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 0       
    mov x2, 0    
    mov x3, SCREEN_WIDTH        
    mov x4, SCREEN_HEIGH
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret




draw_body:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 270       
    mov x2, 190    
    mov x3, 380       
    mov x4, 193
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 267       
    mov x2, 196    
    mov x3, 270       
    mov x4, 193
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 380       
    mov x2, 196    
    mov x3, 383       
    mov x4, 193
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 264       
    mov x2, 270    
    mov x3, 267       
    mov x4, 196
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 383       
    mov x2, 270    
    mov x3, 386       
    mov x4, 196
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 267       
    mov x2, 273    
    mov x3, 270       
    mov x4, 270
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 380       
    mov x2, 273    
    mov x3, 383       
    mov x4, 270
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 270       
    mov x2, 273    
    mov x3, 380       
    mov x4, 276
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 270       
    mov x2, 270    
    mov x3, 380       
    mov x4, 196
    ldr x7, =PINK
    bl draw_rectangle

    


    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret




/* dibujo_dos_circulos_ejemplo:
    sub sp, sp, #40
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x7, [sp, #24]
    str x30, [sp, #32]


    mov x1, 250
    mov x2, 180
    mov x3, 60
    ldr x7, =BLUE
    bl draw_circle

    mov x1, 350
    mov x2, 280
    mov x3, 90
    ldr x7, =DARK_GRAY
    bl draw_circle

    ldr x30, [sp, #32]
    ldr x7, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #40
ret

draw_sarasa:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
//dibujar_rectangulo(x,y)
    mov x1, 0       
    mov x2, 100       
    mov x3, 200        
    mov x4, 310
    ldr x7, =LIGHT_GRAY
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
 */