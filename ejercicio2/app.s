	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:
	bl frame_1

InfLoop:
		bl frame_2
		bl delay
	    bl frame_3
		bl delay
		bl frame_5
		bl delay
		bl frame_1

b InfLoop

