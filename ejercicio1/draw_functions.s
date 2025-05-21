	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ BITS_PER_PIXEL, 32
    .equ LIGHT_GRAY, 0x4F4A48
    .equ GRAY, 0xAFA7A4
    .equ DARK_GRAY, 0x1C1A19
    .equ BLUE, 0x151D7E

/*     .globl draw_star
    .globl draw_sarasa */
    







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