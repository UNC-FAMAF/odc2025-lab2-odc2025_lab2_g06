	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:
	    bl frame_3		
InfLoop:
		bl frame_2
		bl delay
		
	   

		bl delay
		bl frame_5

	b InfLoop

delay:
    	movz x15, 0x100, lsl 16
delay_loop:
    	sub x15, x15, 1
    	cbnz x15, delay_loop
    	ret

