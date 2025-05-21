.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32
.equ ROJO, 0xFF0000
.equ GRAY, 0xAFA7A4

.globl main

main:
    // Guarda la dirección base del framebuffer en x20
    mov x20, x0
    mov x0, x20  

	bl draw_sarasa
    bl draw_star

    // Infinite Loop
InfLoop:
    b InfLoop
