    .equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ BITS_PER_PIXEL, 32
    .equ WHITE, 0xfdfdfd
    .equ GRAY, 0x999999
    .equ BLACK, 0X030105
    .equ DARK_BLUE, 0x003466
    .equ PINK, 0xff9aff
    .equ FUCSIA, 0xfc319a
    .equ CHEEKS, 0xfb9a93
    .equ BREAD, 0xfeca97
    .equ RED, 0xf90101 
    .equ ORANGE, 0xfe9900
    .equ YELLOW, 0xffff01
    .equ GREEN, 0x34ff03
    .equ LIGHT_BLUE, 0x0398fd
    .equ VIOLET, 0x6835ff
    .equ BLUE, 0x151D7E
    
    .globl draw_background_5
    .globl draw_body
    .globl draw_red_rainbow_5
    .globl draw_orange_rainbow_5
    .globl draw_yellow_rainbow_5
    .globl draw_green_rainbow_5
    .globl draw_blue_rainbow_5
    .globl draw_purple_rainbow_5
    .globl draw_toes_5
    .globl draw_stars_5
    .globl draw_letras_5
    .globl draw_body_5
    .globl draw_tail_5
    .globl draw_rainbow_circles_5


draw_background_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 1       
    mov x2, 354    
    mov x3, 431        
    mov x4, 204
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

ret 

draw_stars_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// 1
    mov x1, 1      
    mov x2, 111
    mov x3, 5 
    mov x4, 106
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 22      
    mov x2, 111
    mov x3, 32     
    mov x4, 106
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 11      
    mov x2, 127
    mov x3, 16    
    mov x4, 117
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 11      
    mov x2, 100
    mov x3, 16    
    mov x4, 90
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 11      
    mov x2, 111
    mov x3, 16    
    mov x4, 106
    ldr x7, =WHITE
    bl draw_rectangle


// 2 
    mov x1, 142     
    mov x2, 121
    mov x3, 147   
    mov x4, 116
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 152     
    mov x2, 121
    mov x3, 157   
    mov x4, 116
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 147     
    mov x2, 116
    mov x3, 152   
    mov x4, 111
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 147    
    mov x2, 126
    mov x3, 152   
    mov x4, 121
    ldr x7, =WHITE
    bl draw_rectangle

// 3

    mov x1, 237     
    mov x2, 157
    mov x3, 264   
    mov x4, 151
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 247    
    mov x2, 167
    mov x3, 253   
    mov x4, 141
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 248     
    mov x2, 156
    mov x3, 252   
    mov x4, 152
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 4

    mov x1, 397     
    mov x2, 158
    mov x3, 403   
    mov x4, 152
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 429     
    mov x2, 158
    mov x3, 435   
    mov x4, 152
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 413     
    mov x2, 173
    mov x3, 419   
    mov x4, 167
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 413     
    mov x2, 142
    mov x3, 419   
    mov x4, 136
    ldr x7, =WHITE
    bl draw_rectangle

// 5

    mov x1, 511     
    mov x2, 80
    mov x3, 537   
    mov x4, 75
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 521     
    mov x2, 91
    mov x3, 527   
    mov x4, 64
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 521     
    mov x2, 80
    mov x3, 527   
    mov x4, 75
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 6 

    mov x1, 635   
    mov x2, 37
    mov x3, 640   
    mov x4, 22
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 630     
    mov x2, 32
    mov x3, 635   
    mov x4, 27
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 635
    mov x2, 32
    mov x3, 640   
    mov x4, 27
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 7 

    mov x1, 570
    mov x2, 155
    mov x3, 587   
    mov x4, 150
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 576
    mov x2, 161
    mov x3, 581   
    mov x4, 144
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 576     
    mov x2, 155
    mov x3, 581   
    mov x4, 150
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 8

    mov x1, 583     
    mov x2, 237
    mov x3, 621   
    mov x4, 230
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 599     
    mov x2, 252
    mov x3, 605   
    mov x4, 214
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 413     
    mov x2, 173
    mov x3, 419   
    mov x4, 167
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 594     
    mov x2, 241
    mov x3, 610   
    mov x4, 225
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 599
    mov x2, 236
    mov x3, 605   
    mov x4, 230
    ldr x7, =WHITE
    bl draw_rectangle

// 9 

    mov x1, 488    
    mov x2, 298
    mov x3, 525   
    mov x4, 293
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 494     
    mov x2, 309
    mov x3, 499   
    mov x4, 282
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 504     
    mov x2, 314
    mov x3, 509   
    mov x4, 277
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 514     
    mov x2, 309
    mov x3, 519   
    mov x4, 282
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 494 
    mov x2, 303
    mov x3, 519   
    mov x4, 288
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 500
    mov x2, 308
    mov x3, 513   
    mov x4, 283
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 10

    mov x1, 565  
    mov x2, 407
    mov x3, 571   
    mov x4, 380
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 555     
    mov x2, 396
    mov x3, 581   
    mov x4, 391
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 565     
    mov x2, 396
    mov x3, 571   
    mov x4, 391
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 11

    mov x1, 430     
    mov x2, 431
    mov x3, 468   
    mov x4, 426
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 446
    mov x2, 448
    mov x3, 452   
    mov x4, 410
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 436    
    mov x2, 442
    mov x3, 462   
    mov x4, 416
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 12

    mov x1, 272  
    mov x2, 389
    mov x3, 309   
    mov x4, 384
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 278     
    mov x2, 400
    mov x3, 283   
    mov x4, 373
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 288     
    mov x2, 405
    mov x3, 293   
    mov x4, 368
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 298     
    mov x2, 400
    mov x3, 303   
    mov x4, 373
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 278     
    mov x2, 394
    mov x3, 303   
    mov x4, 379
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 284    
    mov x2, 399
    mov x3, 297   
    mov x4, 374
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 13

    mov x1, 145    
    mov x2, 423
    mov x3, 182   
    mov x4, 418
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 161    
    mov x2, 439
    mov x3, 166   
    mov x4, 402
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 151     
    mov x2, 434
    mov x3, 176   
    mov x4, 408
    ldr x7, =DARK_BLUE
    bl draw_rectangle

//14

    mov x1, 149   
    mov x2, 363
    mov x3, 177   
    mov x4, 357
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 160     
    mov x2, 374
    mov x3, 166   
    mov x4, 347
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 160    
    mov x2, 363
    mov x3, 166   
    mov x4, 357
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 15

    mov x1, 1     
    mov x2, 348
    mov x3, 6   
    mov x4, 343
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 1     
    mov x2, 380
    mov x3, 6   
    mov x4, 375
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 11     
    mov x2, 353
    mov x3, 16   
    mov x4, 348
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 11   
    mov x2, 375
    mov x3, 16   
    mov x4, 370
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 17    
    mov x2, 364
    mov x3, 22   
    mov x4, 359
    ldr x7, =WHITE
    bl draw_rectangle

// 16

    mov x1, 8     
    mov x2, 424
    mov x3, 14   
    mov x4, 419
    ldr x7, =WHITE
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

ret

draw_letras_5:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
// RED 
    mov x1, 137        
    mov x2, 94 
    mov x3, 146      
    mov x4, 58
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 147   
    mov x2, 57
    mov x3, 167      
    mov x4, 46
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 168        
    mov x2, 94 
    mov x3, 177      
    mov x4, 58
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 147        
    mov x2, 106
    mov x3, 167      
    mov x4, 95
    ldr x7, =GREEN
    bl draw_rectangle
// ORANGE    
    mov x1, 188     
    mov x2, 106
    mov x3, 197      
    mov x4, 46
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle   

    mov x1, 198    
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle 
    mov x1, 198     
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 106
    mov x3, 218      
    mov x4, 95
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle 

    mov x1, 219  
    mov x2, 94
    mov x3, 228      
    mov x4, 58
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
// YELLOW
    mov x1, 239    
    mov x2, 94
    mov x3, 248      
    mov x4, 58
    ldr x7, =VIOLET
    bl draw_rectangle 
    
    mov x1, 249     
    mov x2, 57
    mov x3, 269      
    mov x4, 46
    ldr x7, =VIOLET
    bl draw_rectangle 

    mov x1, 249     
    mov x2, 106
    mov x3, 269      
    mov x4, 95
    ldr x7, =VIOLET
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 94
    mov x3, 279      
    mov x4, 83
    ldr x7, =VIOLET
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 69
    mov x3, 279    
    mov x4, 58
    ldr x7, =VIOLET
    bl draw_rectangle 
// 2
    mov x1, 311
    mov x2, 69
    mov x3, 320    
    mov x4, 58
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 311
    mov x2, 106
    mov x3, 350
    mov x4, 95
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 321   
    mov x2, 94
    mov x3, 330  
    mov x4, 83
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 331   
    mov x2, 82
    mov x3, 340  
    mov x4, 70
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 341 
    mov x2, 69
    mov x3, 350  
    mov x4, 58
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 321  
    mov x2, 57
    mov x3, 340  
    mov x4, 46
    ldr x7, =PINK
    bl draw_rectangle

// 0
    mov x1, 362     
    mov x2, 94
    mov x3, 371  
    mov x4, 58
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 372  
    mov x2, 57
    mov x3, 391  
    mov x4, 46
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 372  
    mov x2, 106
    mov x3, 391
    mov x4, 95
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 392  
    mov x2, 94
    mov x3, 402  
    mov x4, 58
    ldr x7, =RED
    bl draw_rectangle

// 2

    mov x1, 413    
    mov x2, 69
    mov x3, 422    
    mov x4, 58
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 413    
    mov x2, 106
    mov x3, 453    
    mov x4, 95
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 423    
    mov x2, 94
    mov x3, 432    
    mov x4, 83
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 433    
    mov x2, 82
    mov x3, 442  
    mov x4, 70
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 443    
    mov x2, 69
    mov x3, 453    
    mov x4, 58
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 423    
    mov x2, 57
    mov x3, 442    
    mov x4, 46 
    ldr x7, =ORANGE
    bl draw_rectangle

// 5

    mov x1, 464
    mov x2, 57
    mov x3, 504    
    mov x4, 46
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 464    
    mov x2, 82
    mov x3, 473    
    mov x4, 58
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 474    
    mov x2, 82
    mov x3, 493    
    mov x4, 70
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 494     
    mov x2, 94
    mov x3, 504  
    mov x4, 83
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 464    
    mov x2, 106
    mov x3, 493  
    mov x4, 95
    ldr x7, =YELLOW
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_purple_rainbow_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 342
    mov x3, 15      
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle
    mov x1, 16      
    mov x2, 335
    mov x3, 69     
    mov x4, 316
    ldr x7, =VIOLET
    bl draw_rectangle
    mov x1, 70       
    mov x2, 342 
    mov x3, 125      
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle
    mov x1, 125       
    mov x2, 335
    mov x3, 179       
    mov x4, 316
    ldr x7, =VIOLET
    bl draw_rectangle
    mov x1, 180       
    mov x2, 342 
    mov x3, 228      
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle
    mov x1, 229       
    mov x2, 328 
    mov x3, 235     
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle
    mov x1, 236       
    mov x2, 322 
    mov x3, 243     
    mov x4, 316
    ldr x7, =VIOLET
    bl draw_rectangle


    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_blue_rainbow_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 322
    mov x3, 15      
    mov x4, 302
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
    mov x1, 16        
    mov x2, 315
    mov x3, 69     
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
    mov x1, 70       
    mov x2, 322  
    mov x3, 125      
    mov x4, 302
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
    mov x1, 124        
    mov x2, 315
    mov x3, 179       
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
    mov x1, 180       
    mov x2, 322 
    mov x3, 235      
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
    mov x1, 236       
    mov x2, 315
    mov x3, 243     
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
    
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_green_rainbow_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 301
    mov x3, 15      
    mov x4, 280
    ldr x7, =GREEN
    bl draw_rectangle
    mov x1, 16        
    mov x2, 294
    mov x3, 69     
    mov x4, 272
    ldr x7, =GREEN
    bl draw_rectangle
    mov x1, 70        
    mov x2, 301  
    mov x3, 125      
    mov x4, 280
    ldr x7, =GREEN
    bl draw_rectangle
    mov x1, 124        
    mov x2, 294
    mov x3, 180       
    mov x4, 272
    ldr x7, =GREEN
    bl draw_rectangle
    mov x1, 180     
    mov x2, 301 
    mov x3, 235      
    mov x4, 280
    ldr x7, =GREEN
    bl draw_rectangle
    mov x1, 236       
    mov x2, 294 
    mov x3, 243      
    mov x4, 272
    ldr x7, =GREEN
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_yellow_rainbow_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 279  
    mov x3, 15       
    mov x4, 260
    ldr x7, =YELLOW
    bl draw_rectangle
    mov x1, 16        
    mov x2, 272 
    mov x3, 69      
    mov x4, 253
    ldr x7, =YELLOW
    bl draw_rectangle
    mov x1, 70        
    mov x2, 279 
    mov x3, 125       
    mov x4, 260
    ldr x7, =YELLOW
    bl draw_rectangle
    mov x1, 126        
    mov x2, 272 
    mov x3, 180       
    mov x4, 253
    ldr x7, =YELLOW
    bl draw_rectangle
    mov x1, 181        
    mov x2, 279 
    mov x3, 235       
    mov x4, 260
    ldr x7, =YELLOW
    bl draw_rectangle
    mov x1, 236       
    mov x2, 272 
    mov x3, 243      
    mov x4, 253
    ldr x7, =YELLOW
    bl draw_rectangle
    
    
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_orange_rainbow_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 259 
    mov x3, 15       
    mov x4, 239
    ldr x7, =ORANGE
    bl draw_rectangle
    mov x1, 16        
    mov x2, 252 
    mov x3, 69      
    mov x4, 232
    ldr x7, =ORANGE
    bl draw_rectangle
    mov x1, 70        
    mov x2, 259  
    mov x3, 125       
    mov x4, 239
    ldr x7, =ORANGE
    bl draw_rectangle
    mov x1, 126        
    mov x2, 252 
    mov x3, 180       
    mov x4, 232
    ldr x7, =ORANGE
    bl draw_rectangle
    mov x1, 181        
    mov x2, 259 
    mov x3, 235       
    mov x4, 239
    ldr x7, =ORANGE
    bl draw_rectangle
    mov x1, 236        
    mov x2, 252 
    mov x3, 243       
    mov x4, 232
    ldr x7, =ORANGE
    bl draw_rectangle


    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_red_rainbow_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 219  
    mov x3, 15       
    mov x4, 238
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 16        
    mov x2, 231 
    mov x3, 69      
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 70        
    mov x2, 238  
    mov x3, 125       
    mov x4, 219
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 126        
    mov x2, 231 
    mov x3, 180       
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 181        
    mov x2, 238 
    mov x3, 235       
    mov x4, 219
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 236        
    mov x2, 232 
    mov x3, 243       
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 243        
    mov x2, 224 
    mov x3, 250      
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 250        
    mov x2, 219 
    mov x3, 256     
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle





    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_toes_5:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 228      
    mov x2, 348
    mov x3, 235     
    mov x4, 328
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 235      
    mov x2, 348
    mov x3, 256     
    mov x4, 343
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 250      
    mov x2, 342
    mov x3, 263     
    mov x4, 334
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 236      
    mov x2, 342
    mov x3, 249     
    mov x4, 329
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 250      
    mov x2, 336
    mov x3, 256     
    mov x4, 329
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 271      
    mov x2, 343
    mov x3, 276     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 277      
    mov x2, 349
    mov x3, 298     
    mov x4, 343
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 292      
    mov x2, 343
    mov x3, 298     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 277      
    mov x2, 343
    mov x3, 291     
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 333      
    mov x2, 343
    mov x3, 339     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 340      
    mov x2, 349
    mov x3, 360     
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 354      
    mov x2, 343
    mov x3, 360    
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 340      
    mov x2, 343
    mov x3, 353     
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 368      
    mov x2, 343
    mov x3, 373     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 374      
    mov x2, 349
    mov x3, 395     
    mov x4, 343
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 389      
    mov x2, 343
    mov x3, 395     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 374      
    mov x2, 343
    mov x3, 388     
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle
    

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

draw_body_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

//========================> CONTORNO TOSTADA <=====================//
    mov x1, 257       
    mov x2, 218    
    mov x3, 374       
    mov x4, 212
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 251       
    mov x2, 224    
    mov x3, 256       
    mov x4, 219
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 244       
    mov x2, 322    
    mov x3, 249       
    mov x4, 226
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 237       
    mov x2, 328    
    mov x3, 256       
    mov x4, 323
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 257       
    mov x2, 335    
    mov x3, 402       
    mov x4, 330
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 403       
    mov x2, 328    
    mov x3, 408       
    mov x4, 323
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 410       
    mov x2, 321    
    mov x3, 415       
    mov x4, 316
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 417       
    mov x2, 314    
    mov x3, 422       
    mov x4, 281
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 410       
    mov x2, 280    
    mov x3, 415       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle  
    mov x1, 395       
    mov x2, 252    
    mov x3, 409       
    mov x4, 247
    ldr x7, =BLACK
    bl draw_rectangle  
    mov x1, 388       
    mov x2, 259    
    mov x3, 395       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle  
    mov x1, 382       
    mov x2, 266    
    mov x3, 387       
    mov x4, 225
    ldr x7, =BLACK
    bl draw_rectangle  
    mov x1, 375        
    mov x2, 224    
    mov x3, 381       
    mov x4, 219
    ldr x7, =BLACK
    bl draw_rectangle  
//========================> DULCE TOSTADA <=====================//
    mov x1, 257       
    mov x2, 322    
    mov x3, 374       
    mov x4, 225
    ldr x7, =PINK
    bl draw_rectangle  
    mov x1, 271        
    mov x2, 315    
    mov x3, 277       
    mov x4, 309
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 292       
    mov x2, 308    
    mov x3, 298       
    mov x4, 302
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 264       
    mov x2, 294    
    mov x3, 270       
    mov x4, 288
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 278       
    mov x2, 280    
    mov x3, 284       
    mov x4, 274
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 306       
    mov x2, 287    
    mov x3, 312       
    mov x4, 281
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 299       
    mov x2, 266    
    mov x3, 305       
    mov x4, 260
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 271       
    mov x2, 245    
    mov x3, 277       
    mov x4, 239
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 306       
    mov x2, 238    
    mov x3, 312       
    mov x4, 232
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 327       
    mov x2, 238    
    mov x3, 333       
    mov x4, 232
    ldr x7, =FUCSIA
    bl draw_rectangle  
    mov x1, 354       
    mov x2, 252    
    mov x3, 360       
    mov x4, 246
    ldr x7, =FUCSIA
    bl draw_rectangle  
    

//========================> PAN TOSTADA <=====================//
    mov x1, 250       
    mov x2, 322    
    mov x3, 256       
    mov x4, 225
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 257       
    mov x2, 239    
    mov x3, 263       
    mov x4, 219
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 264       
    mov x2, 232    
    mov x3, 270       
    mov x4, 219
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 271       
    mov x2, 224    
    mov x3, 374       
    mov x4, 219
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 361       
    mov x2, 232    
    mov x3, 381       
    mov x4, 225
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 368       
    mov x2, 239    
    mov x3, 381       
    mov x4, 233
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 375       
    mov x2, 266    
    mov x3, 381       
    mov x4, 240
    ldr x7, =BREAD
    bl draw_rectangle 
    mov x1, 257       
    mov x2, 329    
    mov x3, 264       
    mov x4, 308
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 265       
    mov x2, 329    
    mov x3, 270       
    mov x4, 315
    ldr x7, =BREAD
    bl draw_rectangle  
    mov x1, 271        
    mov x2, 329    
    mov x3, 326       
    mov x4, 323
    ldr x7, =BREAD
    bl draw_rectangle 

//=========== CONTORNO CABEZA ================//
    mov x1, 354        
    mov x2, 273   
    mov x3, 381       
    mov x4, 267
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 347        
    mov x2, 266   
    mov x3, 353       
    mov x4, 260
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 340        
    mov x2, 259   
    mov x3, 346       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 326         
    mov x2, 252   
    mov x3, 339       
    mov x4, 247
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 320        
    mov x2, 280   
    mov x3, 325       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 313         
    mov x2, 315   
    mov x3, 319       
    mov x4, 281
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 320        
    mov x2, 321   
    mov x3, 325       
    mov x4, 316
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 327        
    mov x2, 329   
    mov x3, 332       
    mov x4, 323
    ldr x7, =BLACK
    bl draw_rectangle 

//=============> RELLENO DE CABEZA <==============//
    mov x1, 326        
    mov x2, 259   
    mov x3, 339       
    mov x4, 253
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 326         
    mov x2, 266   
    mov x3, 346       
    mov x4, 260
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 326        
    mov x2, 273   
    mov x3, 353       
    mov x4, 267
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 326         
    mov x2, 280   
    mov x3, 409       
    mov x4, 274
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 382        
    mov x2, 273   
    mov x3, 409       
    mov x4, 267
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 388        
    mov x2, 266   
    mov x3, 409       
    mov x4, 260
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 396         
    mov x2, 259   
    mov x3, 409       
    mov x4, 253
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 320        
    mov x2, 315   
    mov x3, 416       
    mov x4, 281
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 326        
    mov x2, 322   
    mov x3, 409       
    mov x4, 316
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 333        
    mov x2, 329   
    mov x3, 402       
    mov x4, 323
    ldr x7, =GRAY
    bl draw_rectangle
//=============> FACCIONES CABEZA <================//
    mov x1, 340        
    mov x2, 301   
    mov x3, 353       
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 347         
    mov x2, 294   
    mov x3, 353       
    mov x4, 288
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 389         
    mov x2, 301   
    mov x3, 402       
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 396         
    mov x2, 294   
    mov x3, 402       
    mov x4, 288
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 347        
    mov x2, 321   
    mov x3, 353       
    mov x4, 308
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 354        
    mov x2, 321   
    mov x3, 395       
    mov x4, 316
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 368        
    mov x2, 316   
    mov x3, 374       
    mov x4, 308
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 389        
    mov x2, 315   
    mov x3, 395       
    mov x4, 308
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 326        
    mov x2, 315   
    mov x3, 340       
    mov x4, 302
    ldr x7, =CHEEKS
    bl draw_rectangle
    mov x1, 402        
    mov x2, 315   
    mov x3, 416       
    mov x4, 302
    ldr x7, =CHEEKS
    bl draw_rectangle
    mov x1, 340        
    mov x2, 294   
    mov x3, 346       
    mov x4, 288
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 388        
    mov x2, 294   
    mov x3, 394       
    mov x4, 288
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 388        
    mov x2, 294   
    mov x3, 394       
    mov x4, 288
    ldr x7, =WHITE
    bl draw_rectangle

    
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

ret
draw_tail_5:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
     
    mov x1, 228      
    mov x2, 301
    mov x3, 243     
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 208     
    mov x2, 294
    mov x3, 235     
    mov x4, 288
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 194     
    mov x2, 288
    mov x3, 207     
    mov x4, 281
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 194     
    mov x2, 280
    mov x3, 200     
    mov x4, 274
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 201    
    mov x2, 273
    mov x3, 228     
    mov x4, 267
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 222    
    mov x2, 280
    mov x3, 243     
    mov x4, 274
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 236    
    mov x2, 287
    mov x3, 243     
    mov x4, 280
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 236    
    mov x2, 294
    mov x3, 243     
    mov x4, 288
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 208    
    mov x2, 287
    mov x3, 235     
    mov x4, 281
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 200  
    mov x2, 280
    mov x3, 221     
    mov x4, 274
    ldr x7, =GRAY
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

ret
draw_rainbow_circles_5:

    sub sp, sp, #40
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x7, [sp, #24]
    str x30, [sp, #32]

    mov x1, 20
    mov x2, 465
    mov x3, 14
    ldr x7, =ORANGE
    bl draw_circle

    mov x1, 53
    mov x2, 465
    mov x3, 14
    ldr x7, =YELLOW
    bl draw_circle

    mov x1, 86
    mov x2, 465
    mov x3, 14
    ldr x7, =GREEN
    bl draw_circle

    mov x1, 119
    mov x2, 465
    mov x3, 14
    ldr x7, =LIGHT_BLUE
    bl draw_circle

    mov x1, 152
    mov x2, 465
    mov x3, 14
    ldr x7, =RED
    bl draw_circle

    mov x1, 185
    mov x2, 465
    mov x3, 14
    ldr x7, =ORANGE
    bl draw_circle

    mov x1, 218
    mov x2, 465
    mov x3, 14
    ldr x7, =YELLOW
    bl draw_circle

    mov x1, 251
    mov x2, 465
    mov x3, 14
    ldr x7, =GREEN
    bl draw_circle

    mov x1, 284
    mov x2, 465
    mov x3, 14
    ldr x7, =LIGHT_BLUE
    bl draw_circle

    mov x1, 317
    mov x2, 465
    mov x3, 14
    ldr x7, =VIOLET
    bl draw_circle

    mov x1, 350
    mov x2, 465
    mov x3, 14
    ldr x7, =PINK
    bl draw_circle

    mov x1, 383
    mov x2, 465
    mov x3, 14
    ldr x7, =RED
    bl draw_circle

    mov x1, 416
    mov x2, 465
    mov x3, 14
    ldr x7, =ORANGE
    bl draw_circle

    mov x1, 449
    mov x2, 465
    mov x3, 14
    ldr x7, =YELLOW
    bl draw_circle

    mov x1, 482
    mov x2, 465
    mov x3, 14
    ldr x7, =GREEN
    bl draw_circle

    mov x1, 515
    mov x2, 465
    mov x3, 14
    ldr x7, =LIGHT_BLUE
    bl draw_circle

    mov x1, 548
    mov x2, 465
    mov x3, 14
    ldr x7, =VIOLET
    bl draw_circle

    mov x1, 581
    mov x2, 465
    mov x3, 14
    ldr x7, =PINK
    bl draw_circle

    mov x1, 614
    mov x2, 465
    mov x3, 14
    ldr x7, =RED
    bl draw_circle

    ldr x30, [sp, #32]
    ldr x7, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #40
ret

