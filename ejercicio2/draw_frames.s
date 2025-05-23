.globl frame_1
.globl frame_2
.globl frame_3
.globl frame_4
.globl frame_5



frame_2:
    bl draw_background
	bl draw_body_2
    bl draw_letras_2
    bl draw_red_rainbow_2
    bl draw_orange_rainbow_2
    bl draw_yellow_rainbow_2
    bl draw_green_rainbow_2
    bl draw_blue_rainbow_2
    bl draw_purple_rainbow_2
    bl draw_toes_2
    bl draw_stars_2
    bl draw_tail_2
ret

frame_3: 
    bl draw_background
    bl draw_stars_3
    bl draw_letters_3
    bl draw_rainbow_all_colors
    bl draw_body_3
    bl draw_toes_3
    bl draw_tail_3

ret
