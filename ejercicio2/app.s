	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:

	 bl frame_5

	.globl main

//main:
	

InfLoop:
	b InfLoop
