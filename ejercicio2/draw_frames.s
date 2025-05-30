	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32
    .equ DARK_BLUE, 0x003466

.globl frame_1
.globl frame_2
.globl frame_3
.globl frame_4
.globl frame_5

frame_1:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
    bl draw_background_1
    bl draw_body_1
    bl draw_letters_1
    bl draw_red_rainbow_1
    bl draw_orange_rainbow_1
    bl draw_yellow_rainbow_1
    bl draw_green_rainbow_1
    bl draw_blue_rainbow_1
    bl draw_purple_rainbow_1
    bl draw_toes_1
    bl draw_stars_1
    bl draw_rainbow_circles_1
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

ret

frame_2:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
    bl draw_background_2
	bl draw_body_2
    bl draw_letters_2
    bl draw_red_rainbow_2
    bl draw_orange_rainbow_2
    bl draw_yellow_rainbow_2
    bl draw_green_rainbow_2
    bl draw_blue_rainbow_2
    bl draw_purple_rainbow_2
    bl draw_toes_2
    bl draw_stars_2
    bl draw_tail_2
    bl draw_rainbow_circles_2
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

frame_3: 
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
    bl draw_background_3
    bl draw_stars_3
    bl draw_letters_3
    bl draw_rainbow_all_colors
    bl draw_body_3
    bl draw_toes_3
    bl draw_tail_3
    bl draw_rainbow_circles_3
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

ret
frame_4: 
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
    bl draw_background_4
    bl draw_stars_4
    bl draw_letters_4
    bl draw_rainbow_all_colors_frame_4
    bl draw_body_4
    bl draw_toes_4
    bl draw_tail_4
    bl draw_rainbow_circles_4
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

ret

frame_5:
sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
     bl draw_background_5
	 bl draw_blue_rainbow_5
	 bl draw_green_rainbow_5
	 bl draw_red_rainbow_5
     bl draw_orange_rainbow_5
     bl draw_purple_rainbow_5
	 bl draw_yellow_rainbow_5
     bl draw_letras_5
     bl draw_stars_5
     bl draw_toes_5
     bl draw_body_5
	 bl draw_tail_5
     bl draw_rainbow_circles_5
     ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret


