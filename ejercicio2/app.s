	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:
	bl draw_clean
Loop:
	sub sp, sp, #56
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
	str x19, [sp, #40]
    str x30, [sp, #48]

	bl clean_stars_frame5
	bl frame_1
	bl delay

	bl clean_stars_frame1
	bl frame_2
	bl delay
 
	bl clean_stars_frame2
 	bl frame_3
	
	bl delay

	bl clean_stars_frame3
	bl frame_4
	bl delay

	bl clean_stars_frame4
	bl frame_5
	bl delay 
		
	b Loop

	ldr x30, [sp, #48]
	ldr x19, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #56



