	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:

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


InfLoop:
	b InfLoop
