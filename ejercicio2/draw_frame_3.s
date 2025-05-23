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

    .globl draw_body_3
    .globl draw_rainbow_all_colors
    .globl draw_toes_3
    .globl draw_stars_3
    .globl draw_letters_3
    .globl draw_tail_3

draw_background:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 0       
    mov x2, 0    
    mov x3, SCREEN_WIDTH        
    mov x4, SCREEN_HEIGH
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

draw_stars_3:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

//estrella (2x1 pegadas, arriba arcoiris)
    mov x1, 145       
    mov x2, 150
    mov x3, 150     
    mov x4, 140
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 151       
    mov x2, 155
    mov x3, 160     
    mov x4, 151
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 145       
    mov x2, 166
    mov x3, 150     
    mov x4, 156
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 134       
    mov x2, 155
    mov x3, 144     
    mov x4, 151
    ldr x7, =WHITE
    bl draw_rectangle
    
//estrella (2x1 pegadas, abajo arcoiris)
    mov x1, 61
    mov x2, 358
    mov x3, 65    
    mov x4, 348
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 66      
    mov x2, 365
    mov x3, 76    
    mov x4, 359
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 61     
    mov x2, 374
    mov x3, 65    
    mov x4, 364
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 50      
    mov x2, 363
    mov x3, 60    
    mov x4, 359
    ldr x7, =WHITE
    bl draw_rectangle

// estrella (1x1, abajo de arcoiris)    
    mov x1, 49 
    mov x2, 407
    mov x3, 54     
    mov x4, 402
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 65      
    mov x2, 423
    mov x3, 70     
    mov x4, 418
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 49      
    mov x2, 439
    mov x3, 54     
    mov x4, 434
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 33       
    mov x2, 423
    mov x3, 38     
    mov x4, 418
    ldr x7, =WHITE
    bl draw_rectangle

//esatrella 8 (abajo arcoiris) 
    mov x1, 181 
    mov x2, 376
    mov x3, 186    
    mov x4, 371
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 191     
    mov x2, 382
    mov x3, 196    
    mov x4, 377
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 197     
    mov x2, 392
    mov x3, 202    
    mov x4, 387
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 191      
    mov x2, 403
    mov x3, 196    
    mov x4, 398
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 180 
    mov x2, 409
    mov x3, 185     
    mov x4, 404
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 170     
    mov x2, 403
    mov x3, 175    
    mov x4, 398
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 164     
    mov x2, 392
    mov x3, 169    
    mov x4, 387
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 170      
    mov x2, 382
    mov x3, 175    
    mov x4, 377
    ldr x7, =WHITE
    bl draw_rectangle

//estrella 5 (atras patas gato)
    mov x1, 224      
    mov x2, 453
    mov x3, 229    
    mov x4, 442
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 234 
    mov x2, 463
    mov x3, 245     
    mov x4, 458
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 224    
    mov x2, 463
    mov x3, 229    
    mov x4, 458
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 224     
    mov x2, 477
    mov x3, 229    
    mov x4, 468
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 207      
    mov x2, 463
    mov x3, 218    
    mov x4, 458
    ldr x7, =WHITE
    bl draw_rectangle   

// estrellla junta (1x1 esq. inf der)
    mov x1, 454 
    mov x2, 388
    mov x3, 459     
    mov x4, 378
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 459    
    mov x2, 394
    mov x3, 469    
    mov x4, 389
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 453     
    mov x2, 405
    mov x3, 458    
    mov x4, 395
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 443      
    mov x2, 394
    mov x3, 453    
    mov x4, 389
    ldr x7, =WHITE
    bl draw_rectangle  
//

    mov x1, 338 
    mov x2, 414
    mov x3, 343     
    mov x4, 409
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 354    
    mov x2, 430
    mov x3, 359    
    mov x4, 425
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 338     
    mov x2, 446
    mov x3, 343    
    mov x4, 441
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 322      
    mov x2, 430
    mov x3, 327    
    mov x4, 425
    ldr x7, =WHITE
    bl draw_rectangle   

// estrella (1x1 separada, esq. inf der.)   
    mov x1, 564 
    mov x2, 406
    mov x3, 569     
    mov x4, 401
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 580    
    mov x2, 422
    mov x3, 585    
    mov x4, 417
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 564    
    mov x2, 438
    mov x3, 569    
    mov x4, 433
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 548      
    mov x2, 422
    mov x3, 553    
    mov x4, 417
    ldr x7, =WHITE
    bl draw_rectangle 

// estrella 8 (esq. inf. der.)
    mov x1, 545
    mov x2, 342
    mov x3, 549     
    mov x4, 338
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 556    
    mov x2, 347
    mov x3, 560    
    mov x4, 343
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 561    
    mov x2, 358
    mov x3, 565    
    mov x4, 354
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 556      
    mov x2, 369
    mov x3, 560    
    mov x4, 365
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 545 
    mov x2, 374
    mov x3, 549     
    mov x4, 370
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 535   
    mov x2, 369
    mov x3, 539    
    mov x4, 365
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 529    
    mov x2, 358
    mov x3, 533 
    mov x4, 354
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 534      
    mov x2, 347
    mov x3, 538    
    mov x4, 343
    ldr x7, =WHITE
    bl draw_rectangle

// estrella (2x1 punto en medio, arrima der. cabeza gato)

    mov x1, 448  
    mov x2, 226
    mov x3, 452    
    mov x4, 216
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 459 
    mov x2, 236
    mov x3, 469     
    mov x4, 232
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 448   
    mov x2, 252
    mov x3, 452    
    mov x4, 242
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 432    
    mov x2, 236
    mov x3, 442 
    mov x4, 232
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 448      
    mov x2, 236
    mov x3, 452    
    mov x4, 232
    ldr x7, =WHITE
    bl draw_rectangle

// estrella (1x1 junta )
    mov x1, 478
    mov x2, 147
    mov x3, 483     
    mov x4, 142
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 483   
    mov x2, 152
    mov x3, 488    
    mov x4, 147
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 478    
    mov x2, 157
    mov x3, 483 
    mov x4, 152
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 472      
    mov x2, 152
    mov x3, 478    
    mov x4, 147
    ldr x7, =WHITE
    bl draw_rectangle

// estrella (1x1 separados,al frente de gato)
    mov x1, 587
    mov x2, 195
    mov x3, 592     
    mov x4, 190
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 603   
    mov x2, 211
    mov x3, 608    
    mov x4, 206
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 587    
    mov x2, 227
    mov x3, 592 
    mov x4, 222
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 571      
    mov x2, 211
    mov x3, 576    
    mov x4, 206
    ldr x7, =WHITE
    bl draw_rectangle

// etrella (1x1 junto, esq. sup. der.)
    mov x1, 524
    mov x2, 27
    mov x3, 528     
    mov x4, 23
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 529   
    mov x2, 32
    mov x3, 533    
    mov x4, 28
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 524    
    mov x2, 37
    mov x3, 528 
    mov x4, 32
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 519   
    mov x2, 32
    mov x3, 523    
    mov x4, 28
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

draw_letters_3:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
// O
    mov x1, 137        
    mov x2, 94 
    mov x3, 146      
    mov x4, 58
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 147   
    mov x2, 57
    mov x3, 167      
    mov x4, 46
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 168        
    mov x2, 94 
    mov x3, 177      
    mov x4, 58
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 147        
    mov x2, 106
    mov x3, 167      
    mov x4, 95
    ldr x7, =VIOLET
    bl draw_rectangle
// D    
    mov x1, 188     
    mov x2, 106
    mov x3, 197      
    mov x4, 46
    ldr x7, =PINK
    bl draw_rectangle   

    mov x1, 198    
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 106
    mov x3, 218      
    mov x4, 95
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 219  
    mov x2, 94
    mov x3, 228      
    mov x4, 58
    ldr x7, =PINK
    bl draw_rectangle
// C
    mov x1, 239    
    mov x2, 94
    mov x3, 248      
    mov x4, 58
    ldr x7, =RED
    bl draw_rectangle 
    
    mov x1, 249     
    mov x2, 57
    mov x3, 269      
    mov x4, 46
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 249     
    mov x2, 106
    mov x3, 269      
    mov x4, 95
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 94
    mov x3, 279      
    mov x4, 83
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 69
    mov x3, 279    
    mov x4, 58
    ldr x7, =RED
    bl draw_rectangle 
// 2
    mov x1, 311
    mov x2, 69
    mov x3, 320    
    mov x4, 58
    ldr x7, =ORANGE
    bl draw_rectangle 

    mov x1, 311
    mov x2, 106
    mov x3, 350
    mov x4, 95
    ldr x7, =ORANGE
    bl draw_rectangle 

    mov x1, 321   
    mov x2, 94
    mov x3, 330  
    mov x4, 83
    ldr x7, =ORANGE
    bl draw_rectangle 

    mov x1, 331   
    mov x2, 82
    mov x3, 340  
    mov x4, 70
    ldr x7, =ORANGE
    bl draw_rectangle 

    mov x1, 341 
    mov x2, 69
    mov x3, 350  
    mov x4, 58
    ldr x7, =ORANGE
    bl draw_rectangle 

    mov x1, 321  
    mov x2, 57
    mov x3, 340  
    mov x4, 46
    ldr x7, =ORANGE
    bl draw_rectangle

// 0
    mov x1, 362     
    mov x2, 94
    mov x3, 371  
    mov x4, 58
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 372  
    mov x2, 57
    mov x3, 391  
    mov x4, 46
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 372  
    mov x2, 106
    mov x3, 391
    mov x4, 95
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 392  
    mov x2, 94
    mov x3, 402  
    mov x4, 58
    ldr x7, =YELLOW
    bl draw_rectangle

// 2

    mov x1, 413    
    mov x2, 69
    mov x3, 422    
    mov x4, 58
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 413    
    mov x2, 106
    mov x3, 453    
    mov x4, 95
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 423    
    mov x2, 94
    mov x3, 432    
    mov x4, 83
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 433    
    mov x2, 82
    mov x3, 442  
    mov x4, 70
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 443    
    mov x2, 69
    mov x3, 453    
    mov x4, 58
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 423    
    mov x2, 57
    mov x3, 442    
    mov x4, 46 
    ldr x7, =GREEN
    bl draw_rectangle

// 5

    mov x1, 464
    mov x2, 57
    mov x3, 504    
    mov x4, 46
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 464    
    mov x2, 82
    mov x3, 473    
    mov x4, 58
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 474    
    mov x2, 82
    mov x3, 493    
    mov x4, 70
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 494     
    mov x2, 94
    mov x3, 504  
    mov x4, 83
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 464    
    mov x2, 106
    mov x3, 493  
    mov x4, 95
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

draw_rainbow_all_colors:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]

// RED PART 
    mov x1, 1     
    mov x2, 238 
    mov x3, 15      
    mov x4, 218
    ldr x7, =RED
    bl draw_rectangle
    
    mov x1, 16 
    mov x2, 232 
    mov x3, 70      
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 71     
    mov x2, 238 
    mov x3, 124      
    mov x4, 218
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 125     
    mov x2, 232 
    mov x3, 180      
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 181     
    mov x2, 238 
    mov x3, 236     
    mov x4, 218
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 237     
    mov x2, 232 
    mov x3, 243      
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 243   
    mov x2, 225
    mov x3, 250     
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle

    mov x1, 251     
    mov x2, 218 
    mov x3, 256     
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle

// ORANGE PART

    mov x1, 1   
    mov x2, 259 
    mov x3, 15     
    mov x4, 239
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 16    
    mov x2, 253 
    mov x3, 70      
    mov x4, 233
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 71   
    mov x2, 259 
    mov x3, 124     
    mov x4, 239
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 125   
    mov x2, 253 
    mov x3, 180     
    mov x4, 233
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 181    
    mov x2, 259 
    mov x3, 236     
    mov x4, 239
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 237   
    mov x2, 253 
    mov x3, 242     
    mov x4, 233
    ldr x7, =ORANGE
    bl draw_rectangle

// YELLOW PART

    mov x1, 1 
    mov x2, 280 
    mov x3, 15     
    mov x4, 260
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 16     
    mov x2, 273 
    mov x3, 70     
    mov x4, 254
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 71   
    mov x2, 280 
    mov x3, 124     
    mov x4, 260
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 125   
    mov x2, 273 
    mov x3, 180     
    mov x4, 254
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 181   
    mov x2, 280 
    mov x3, 236     
    mov x4, 260
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 237   
    mov x2, 273 
    mov x3, 242     
    mov x4, 254
    ldr x7, =YELLOW
    bl draw_rectangle

// GREEN PART

    mov x1, 1    
    mov x2, 301 
    mov x3, 15   
    mov x4, 281
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 16   
    mov x2, 294 
    mov x3, 70     
    mov x4, 274
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 71   
    mov x2, 304 
    mov x3, 124     
    mov x4, 281
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 125   
    mov x2, 294 
    mov x3, 181     
    mov x4, 274
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 181   
    mov x2, 301 
    mov x3, 236     
    mov x4, 281
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 237   
    mov x2, 294 
    mov x3, 243      
    mov x4, 274
    ldr x7, =GREEN
    bl draw_rectangle

// LIGHT BLUE PART

    mov x1, 1   
    mov x2, 322 
    mov x3, 15     
    mov x4, 302
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 16   
    mov x2, 315 
    mov x3, 70      
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 71   
    mov x2, 322 
    mov x3, 124     
    mov x4, 302
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 125   
    mov x2, 315 
    mov x3, 180      
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 181   
    mov x2, 322 
    mov x3, 236     
    mov x4, 302
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 237   
    mov x2, 315 
    mov x3, 243      
    mov x4, 295
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

// VIOLET PART

    mov x1, 1  
    mov x2, 343 
    mov x3, 15     
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 16   
    mov x2, 335 
    mov x3, 70      
    mov x4, 316
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 71   
    mov x2, 343 
    mov x3, 124     
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 125   
    mov x2, 335 
    mov x3, 180      
    mov x4, 316
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 181   
    mov x2, 343 
    mov x3, 236     
    mov x4, 323
    ldr x7, =VIOLET
    bl draw_rectangle

    mov x1, 237   
    mov x2, 316 
    mov x3, 243      
    mov x4, 322
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

draw_body_3:
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
    mov x1, 233       
    mov x2, 328    
    mov x3, 259       
    mov x4, 323
    ldr x7, =VIOLET
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
    mov x3, 332       
    mov x4, 323
    ldr x7, =BREAD
    bl draw_rectangle 

//=========== CONTORNO CABEZA ================//
    mov x1, 360        
    mov x2, 273   
    mov x3, 387       
    mov x4, 267
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 353        
    mov x2, 266   
    mov x3, 359       
    mov x4, 260
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 346        
    mov x2, 259   
    mov x3, 352       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 332         
    mov x2, 252   
    mov x3, 345       
    mov x4, 247
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 326        
    mov x2, 280   
    mov x3, 331       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 319         
    mov x2, 315   
    mov x3, 325       
    mov x4, 281
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 326        
    mov x2, 321   
    mov x3, 331       
    mov x4, 316
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 333        
    mov x2, 329   
    mov x3, 338       
    mov x4, 323
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 422        
    mov x2, 315   
    mov x3, 428       
    mov x4, 280
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 416        
    mov x2, 280   
    mov x3, 422       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 416        
    mov x2, 253   
    mov x3, 402       
    mov x4, 247
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 394        
    mov x2, 259   
    mov x3, 402       
    mov x4, 253
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 388        
    mov x2, 265   
    mov x3, 394       
    mov x4, 259
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 388        
    mov x2, 265   
    mov x3, 394       
    mov x4, 259
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 416        
    mov x2, 323   
    mov x3, 422       
    mov x4, 315
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 409        
    mov x2, 329   
    mov x3, 416      
    mov x4, 323
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 401        
    mov x2, 335   
    mov x3, 409      
    mov x4, 329
    ldr x7, =BLACK
    bl draw_rectangle 

//=============> RELLENO DE CABEZA <==============//
    mov x1, 332        
    mov x2, 259   
    mov x3, 345       
    mov x4, 253
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 332         
    mov x2, 266   
    mov x3, 352       
    mov x4, 260
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 332        
    mov x2, 273   
    mov x3, 359       
    mov x4, 267
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 332         
    mov x2, 280   
    mov x3, 415       
    mov x4, 274
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 388        
    mov x2, 273   
    mov x3, 415       
    mov x4, 267
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 394        
    mov x2, 266   
    mov x3, 415       
    mov x4, 260
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 402         
    mov x2, 259   
    mov x3, 415       
    mov x4, 253
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 326        
    mov x2, 315   
    mov x3, 422       
    mov x4, 281
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 332        
    mov x2, 322   
    mov x3, 415       
    mov x4, 316
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 339        
    mov x2, 329   
    mov x3, 408       
    mov x4, 323
    ldr x7, =GRAY
    bl draw_rectangle
//=============> FACCIONES CABEZA <================//
    mov x1, 346        
    mov x2, 301   
    mov x3, 359       
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 353         
    mov x2, 294   
    mov x3, 359       
    mov x4, 288
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 395         
    mov x2, 301   
    mov x3, 408       
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 402         
    mov x2, 294   
    mov x3, 408       
    mov x4, 288
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 353        
    mov x2, 321   
    mov x3, 359       
    mov x4, 308
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 360        
    mov x2, 321   
    mov x3, 401       
    mov x4, 316
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 374        
    mov x2, 316   
    mov x3, 380       
    mov x4, 308
    ldr x7, =BLACK
    bl draw_rectangle 
    mov x1, 395        
    mov x2, 315   
    mov x3, 401       
    mov x4, 308
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 332        
    mov x2, 315   
    mov x3, 346       
    mov x4, 302
    ldr x7, =CHEEKS
    bl draw_rectangle
    mov x1, 408        
    mov x2, 315   
    mov x3, 422       
    mov x4, 302
    ldr x7, =CHEEKS
    bl draw_rectangle
    mov x1, 346        
    mov x2, 294   
    mov x3, 352       
    mov x4, 288
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 394        
    mov x2, 294   
    mov x3, 400       
    mov x4, 288
    ldr x7, =WHITE
    bl draw_rectangle
    mov x1, 394        
    mov x2, 294   
    mov x3, 400       
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

draw_toes_3: 

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 243  
    mov x2, 350
    mov x3, 249  
    mov x4, 322
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 250  
    mov x2, 329
    mov x3, 256
    mov x4, 323
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 250  
    mov x2, 350
    mov x3, 263
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 264  
    mov x2, 344
    mov x3, 268
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 277  
    mov x2, 343
    mov x3, 283  
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 283
    mov x2, 350
    mov x3, 304  
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 298  
    mov x2, 343
    mov x3, 304  
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 334  
    mov x2, 342
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

    mov x1, 368  
    mov x2, 343
    mov x3, 373  
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 375  
    mov x2, 349
    mov x3, 388  
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 389  
    mov x2, 343
    mov x3, 395  
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 250  
    mov x2, 343
    mov x3, 256  
    mov x4, 330
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 257  
    mov x2, 343
    mov x3, 263  
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 284  
    mov x2, 343
    mov x3, 297
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 340 
    mov x2, 343
    mov x3, 354  
    mov x4, 336
    ldr x7, =GRAY
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

draw_tail_3:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 196  
    mov x2, 306
    mov x3, 201  
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 202  
    mov x2, 300
    mov x3, 205  
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 206  
    mov x2, 294
    mov x3, 243  
    mov x4, 290
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 237  
    mov x2, 289
    mov x3, 243  
    mov x4, 284
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 202  
    mov x2, 311
    mov x3, 236  
    mov x4, 307
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 229  
    mov x2, 306
    mov x3, 236  
    mov x4, 303
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 237  
    mov x2, 307
    mov x3, 243  
    mov x4, 303
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 202  
    mov x2, 306
    mov x3, 228  
    mov x4, 301
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 206  
    mov x2, 300
    mov x3, 228  
    mov x4, 295
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 229   
    mov x2, 302
    mov x3, 243  
    mov x4, 295
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
