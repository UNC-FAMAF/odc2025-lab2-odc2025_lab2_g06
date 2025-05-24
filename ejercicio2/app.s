	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:
Loop:
		bl draw_clean
		bl frame_1
		bl delay

		bl draw_clean
		bl frame_2
		bl delay

		bl draw_clean
	    bl frame_3
		bl delay

		bl draw_clean
		bl frame_5
		bl delay

		bl draw_clean
		bl frame_1
		bl delay
		
		b Loop

delay:
    	movz x15, 0x8000, lsl 16
delay_loop:
    	sub x15, x15, 1
    	cbnz x15, delay_loop
    	ret

