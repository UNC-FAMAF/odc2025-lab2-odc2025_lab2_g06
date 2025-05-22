.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32


.globl main

main:
    // Guarda la dirección base del framebuffer en x20
    mov x20, x0
    mov x0, x20  

	bl draw_background
	bl draw_body
    bl draw_red_rainbow
    bl draw_orange_rainbow
    bl draw_yellow_rainbow
    bl draw_green_rainbow
    bl draw_blue_rainbow
    bl draw_purple_rainbow
    // Infinite Loop
InfLoop:
    b InfLoop
