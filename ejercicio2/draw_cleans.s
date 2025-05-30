    .equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32
    .equ DARK_BLUE, 0x003466
      
    .globl draw_clean
    .globl clean_stars_frame1
    .globl clean_stars_frame2
    .globl clean_stars_frame3
    .globl clean_stars_frame4
    .globl clean_stars_frame5

//En este archivo dibujamos lo que se encarga de quitar lo dibujado por un frame previo que puede molestar al frame actual.
draw_clean:
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

clean_stars_frame1: 
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 145       
    mov x2, 150
    mov x3, 150     
    mov x4, 140
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 151       
    mov x2, 155
    mov x3, 160     
    mov x4, 151
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 145       
    mov x2, 166
    mov x3, 150     
    mov x4, 156
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 134       
    mov x2, 155
    mov x3, 144     
    mov x4, 151
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    
//estrella (2x1 pegadas, abajo arcoiris)
    mov x1, 61
    mov x2, 358
    mov x3, 65    
    mov x4, 348
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 66      
    mov x2, 365
    mov x3, 76    
    mov x4, 359
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 61     
    mov x2, 374
    mov x3, 65    
    mov x4, 364
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 50      
    mov x2, 363
    mov x3, 60    
    mov x4, 359
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella (1x1, abajo de arcoiris)    
    mov x1, 49 
    mov x2, 407
    mov x3, 54     
    mov x4, 402
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 65      
    mov x2, 423
    mov x3, 70     
    mov x4, 418
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 49      
    mov x2, 439
    mov x3, 54     
    mov x4, 434
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 33       
    mov x2, 423
    mov x3, 38     
    mov x4, 418
    ldr x7, =DARK_BLUE
    bl draw_rectangle

//esatrella 8 (abajo arcoiris) 
    mov x1, 181 
    mov x2, 376
    mov x3, 186    
    mov x4, 371
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 191     
    mov x2, 382
    mov x3, 196    
    mov x4, 377
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 197     
    mov x2, 392
    mov x3, 202    
    mov x4, 387
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 191      
    mov x2, 403
    mov x3, 196    
    mov x4, 398
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 180 
    mov x2, 409
    mov x3, 185     
    mov x4, 404
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 170     
    mov x2, 403
    mov x3, 175    
    mov x4, 398
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 164     
    mov x2, 392
    mov x3, 169    
    mov x4, 387
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 170      
    mov x2, 382
    mov x3, 175    
    mov x4, 377
    ldr x7, =DARK_BLUE
    bl draw_rectangle

  

// estrellla junta (1x1 esq. inf der)
    mov x1, 454 
    mov x2, 388
    mov x3, 459     
    mov x4, 378
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 459    
    mov x2, 394
    mov x3, 469    
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 453     
    mov x2, 405
    mov x3, 458    
    mov x4, 395
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 443      
    mov x2, 394
    mov x3, 453    
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle  
//
    mov x1, 338 
    mov x2, 414
    mov x3, 343     
    mov x4, 409
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 354    
    mov x2, 430
    mov x3, 359    
    mov x4, 425
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 338     
    mov x2, 446
    mov x3, 343    
    mov x4, 441
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 322      
    mov x2, 430
    mov x3, 327    
    mov x4, 425
    ldr x7, =DARK_BLUE
    bl draw_rectangle   

// estrella (1x1 separada, esq. inf der.)   
    mov x1, 564 
    mov x2, 406
    mov x3, 569     
    mov x4, 401
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 580    
    mov x2, 422
    mov x3, 585    
    mov x4, 417
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 564    
    mov x2, 438
    mov x3, 569    
    mov x4, 433
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 548      
    mov x2, 422
    mov x3, 553    
    mov x4, 417
    ldr x7, =DARK_BLUE
    bl draw_rectangle 

// estrella 8 (esq. inf. der.)
    mov x1, 545
    mov x2, 342
    mov x3, 549     
    mov x4, 338
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 556    
    mov x2, 347
    mov x3, 560    
    mov x4, 343
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 561    
    mov x2, 358
    mov x3, 565    
    mov x4, 354
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 556      
    mov x2, 369
    mov x3, 560    
    mov x4, 365
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 545 
    mov x2, 374
    mov x3, 549     
    mov x4, 370
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 535   
    mov x2, 369
    mov x3, 539    
    mov x4, 365
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 529    
    mov x2, 358
    mov x3, 533 
    mov x4, 354
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 534      
    mov x2, 347
    mov x3, 538    
    mov x4, 343
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella (2x1 punto en medio, arrima der. cabeza gato)

    mov x1, 448  
    mov x2, 226
    mov x3, 452    
    mov x4, 216
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 459 
    mov x2, 236
    mov x3, 469     
    mov x4, 232
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 448   
    mov x2, 252
    mov x3, 452    
    mov x4, 242
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 432    
    mov x2, 236
    mov x3, 442 
    mov x4, 232
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 448      
    mov x2, 236
    mov x3, 452    
    mov x4, 232
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella (1x1 junta )
    mov x1, 478
    mov x2, 147
    mov x3, 483     
    mov x4, 142
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 483   
    mov x2, 152
    mov x3, 488    
    mov x4, 147
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 478    
    mov x2, 157
    mov x3, 483 
    mov x4, 152
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 472      
    mov x2, 152
    mov x3, 478    
    mov x4, 147
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella (1x1 separados,al frente de gato)
    mov x1, 587
    mov x2, 195
    mov x3, 592     
    mov x4, 190
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 603   
    mov x2, 211
    mov x3, 608    
    mov x4, 206
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 587    
    mov x2, 227
    mov x3, 592 
    mov x4, 222
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 571      
    mov x2, 211
    mov x3, 576    
    mov x4, 206
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// etrella (1x1 junto, esq. sup. der.)
    mov x1, 524
    mov x2, 27
    mov x3, 528     
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 529   
    mov x2, 32
    mov x3, 533    
    mov x4, 28
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 524    
    mov x2, 37
    mov x3, 528 
    mov x4, 32
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 519   
    mov x2, 32
    mov x3, 523    
    mov x4, 28
    ldr x7, = DARK_BLUE
    bl draw_rectangle
    // nuevas estrellas //
    mov x1, 83
    mov x2, 26
    mov x3, 88   
    mov x4, 21
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 93
    mov x2, 31
    mov x3, 99  
    mov x4, 26
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 99
    mov x2, 42
    mov x3, 104  
    mov x4, 37
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 93
    mov x2, 53
    mov x3, 99   
    mov x4, 47
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 83
    mov x2, 58
    mov x3, 88   
    mov x4, 53
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 72
    mov x2, 53
    mov x3, 78   
    mov x4, 47
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 67
    mov x2, 42
    mov x3, 72   
    mov x4, 37
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 72
    mov x2, 31
    mov x3, 77   
    mov x4, 26
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 60
    mov x2, 121
    mov x3, 65   
    mov x4, 116
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 65
    mov x2, 116
    mov x3, 71   
    mov x4, 111
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 71
    mov x2, 121
    mov x3, 76   
    mov x4, 116
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 65
    mov x2, 126
    mov x3, 71   
    mov x4, 121
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 551
    mov x2, 108
    mov x3, 562   
    mov x4, 103
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 567
    mov x2, 97
    mov x3, 572   
    mov x4, 87
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 567
    mov x2, 108
    mov x3, 572   
    mov x4, 103
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 578
    mov x2, 108
    mov x3, 588   
    mov x4, 103
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 567
    mov x2, 124
    mov x3, 572   
    mov x4, 114
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 312
    mov x2, 158
    mov x3, 317   
    mov x4, 153
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 327
    mov x2, 142
    mov x3, 333   
    mov x4, 137
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 344
    mov x2, 158
    mov x3, 348   
    mov x4, 153
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 327
    mov x2, 174
    mov x3, 333   
    mov x4, 169
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

clean_stars_frame2:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 538   
    mov x2, 113
    mov x3, 543     
    mov x4, 108
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 543       
    mov x2, 119
    mov x3, 548     
    mov x4, 114
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 538       
    mov x2, 124
    mov x3, 543     
    mov x4, 119
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 532       
    mov x2, 119
    mov x3, 537     
    mov x4, 114
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    
//estrella 2
    mov x1, 588
    mov x2, 357
    mov x3, 592    
    mov x4, 347
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 593      
    mov x2, 362
    mov x3, 603   
    mov x4, 358
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 588    
    mov x2, 373
    mov x3, 592   
    mov x4, 363
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 577     
    mov x2, 362
    mov x3, 587  
    mov x4, 358
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella 3    
    mov x1, 398
    mov x2, 146
    mov x3, 402    
    mov x4, 142
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 404     
    mov x2, 151
    mov x3, 408    
    mov x4, 147
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 399     
    mov x2, 156
    mov x3, 403    
    mov x4, 152
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 393      
    mov x2, 151
    mov x3, 397    
    mov x4, 147
    ldr x7, =DARK_BLUE
    bl draw_rectangle

//esatrella 4
    mov x1, 574
    mov x2, 255
    mov x3, 578    
    mov x4, 251
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 585
    mov x2, 260
    mov x3, 589    
    mov x4, 256
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 590     
    mov x2, 271
    mov x3, 594    
    mov x4, 267
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 585      
    mov x2, 281
    mov x3, 589    
    mov x4, 277
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 574
    mov x2, 287
    mov x3, 578   
    mov x4, 283
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 563     
    mov x2, 282
    mov x3, 566    
    mov x4, 278
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 558     
    mov x2, 271
    mov x3, 562    
    mov x4, 267
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 564      
    mov x2, 260
    mov x3, 568    
    mov x4, 256
    ldr x7, =DARK_BLUE
    bl draw_rectangle

  

// estrellla 5
    mov x1, 45
    mov x2, 152
    mov x3, 49     
    mov x4, 142
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 50    
    mov x2, 157
    mov x3, 60    
    mov x4, 153
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 45     
    mov x2, 168
    mov x3, 49    
    mov x4, 158
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 34      
    mov x2, 157
    mov x3, 44    
    mov x4, 153
    ldr x7, =DARK_BLUE
    bl draw_rectangle  
// estrellas 6

    mov x1, 340 
    mov x2, 388
    mov x3, 344     
    mov x4, 378
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 345    
    mov x2, 393
    mov x3, 355    
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 340     
    mov x2, 404
    mov x3, 344    
    mov x4, 394
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 329      
    mov x2, 393
    mov x3, 339    
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle   

// estrella 7  
    mov x1, 101 
    mov x2, 28
    mov x3, 105     
    mov x4, 24
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 117   
    mov x2, 44
    mov x3, 121    
    mov x4, 40
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 101    
    mov x2, 60
    mov x3, 105    
    mov x4, 56
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 85      
    mov x2, 44
    mov x3, 89    
    mov x4, 40
    ldr x7, =DARK_BLUE
    bl draw_rectangle 

// estrella 8 
    mov x1, 569
    mov x2, 23
    mov x3, 574     
    mov x4, 18
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 579    
    mov x2, 28
    mov x3, 585    
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 586    
    mov x2, 38
    mov x3, 590    
    mov x4, 34
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 580      
    mov x2, 49
    mov x3, 585    
    mov x4, 44
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 569 
    mov x2, 55
    mov x3, 574     
    mov x4, 50
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 559  
    mov x2, 49
    mov x3, 563    
    mov x4, 45
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 553    
    mov x2, 39
    mov x3, 558 
    mov x4, 34
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 559      
    mov x2, 27
    mov x3, 563    
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella 10
    mov x1, 204
    mov x2, 414
    mov x3, 208     
    mov x4, 410
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 220   
    mov x2, 430
    mov x3, 224    
    mov x4, 426
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 204    
    mov x2, 446
    mov x3, 208 
    mov x4, 442
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 188      
    mov x2, 430
    mov x3, 192    
    mov x4, 426
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// estrella 11
    mov x1, 436
    mov x2, 404
    mov x3, 440     
    mov x4, 400
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 452   
    mov x2, 420
    mov x3, 456    
    mov x4, 416
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 436    
    mov x2, 436
    mov x3, 440 
    mov x4, 432
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 420      
    mov x2, 420
    mov x3, 424    
    mov x4, 416
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// etrella 12
    mov x1, 423
    mov x2, 342
    mov x3, 427    
    mov x4, 338
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 434   
    mov x2, 347
    mov x3, 438    
    mov x4, 343
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 439    
    mov x2, 358
    mov x3, 443 
    mov x4, 354
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 434 
    mov x2, 369
    mov x3, 438    
    mov x4, 365
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 423
    mov x2, 374
    mov x3, 427     
    mov x4, 370
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 413   
    mov x2, 369
    mov x3, 417    
    mov x4, 365
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 408    
    mov x2, 358
    mov x3, 412 
    mov x4, 354
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 413   
    mov x2, 347
    mov x3, 417    
    mov x4, 343
    ldr x7, =DARK_BLUE
    bl draw_rectangle
// etrella 13
    mov x1, 35
    mov x2, 377
    mov x3, 39     
    mov x4, 373
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 46   
    mov x2, 382
    mov x3, 50    
    mov x4, 378
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 51    
    mov x2, 393
    mov x3, 55 
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 46   
    mov x2, 403
    mov x3, 50    
    mov x4, 399
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 35
    mov x2, 409
    mov x3, 39     
    mov x4, 405
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 24   
    mov x2, 403
    mov x3, 28    
    mov x4, 399
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 19    
    mov x2, 393
    mov x3, 23 
    mov x4, 388
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 24   
    mov x2, 382
    mov x3, 28    
    mov x4, 378
    ldr x7, =DARK_BLUE
    bl draw_rectangle
// etrella 14
    mov x1, 232
    mov x2, 140
    mov x3, 236     
    mov x4, 136
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 248   
    mov x2, 156
    mov x3, 252    
    mov x4, 152
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 232    
    mov x2, 172
    mov x3, 236 
    mov x4, 168
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 216   
    mov x2, 156
    mov x3, 220    
    mov x4, 152
    ldr x7, =DARK_BLUE
    bl draw_rectangle
// etrella 15
    mov x1, 470
    mov x2, 195
    mov x3, 475     
    mov x4, 190
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 486   
    mov x2, 211
    mov x3, 491    
    mov x4, 206
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 470    
    mov x2, 227
    mov x3, 475 
    mov x4, 222
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 454   
    mov x2, 211
    mov x3, 459    
    mov x4, 206
    ldr x7, =DARK_BLUE
    bl draw_rectangle
// etrella 16
    mov x1, 391
    mov x2, 27
    mov x3, 395     
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 396   
    mov x2, 32
    mov x3, 400    
    mov x4, 28
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 391    
    mov x2, 38
    mov x3, 395 
    mov x4, 33
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 386   
    mov x2, 32
    mov x3, 390    
    mov x4, 28
    ldr x7, =DARK_BLUE
    bl draw_rectangle
// etrella (1x1 junto, esq. sup. der.)
    mov x1, 571
    mov x2, 396
    mov x3, 575     
    mov x4, 392
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 587   
    mov x2, 412
    mov x3, 591    
    mov x4, 408
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 571    
    mov x2, 428
    mov x3, 575 
    mov x4, 424
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    mov x1, 555   
    mov x2, 412
    mov x3, 559    
    mov x4, 408
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

clean_stars_frame3:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 88
    mov x2, 59
    mov x3, 114
    mov x4, 54
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 99
    mov x2, 70
    mov x3, 103
    mov x4, 43
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 99
    mov x2, 58
    mov x3, 103
    mov x4, 54
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    
// 2

    mov x1, 65
    mov x2, 170
    mov x3, 69
    mov x4, 134
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 49
    mov x2, 154
    mov x3, 85
    mov x4, 150
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 54
    mov x2, 165
    mov x3, 80
    mov x4, 139
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 3

    mov x1, 227
    mov x2, 34
    mov x3, 241
    mov x4, 30
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 232
    mov x2, 39
    mov x3, 236
    mov x4, 25
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 232
    mov x2, 34
    mov x3, 236
    mov x4, 30
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 5 

    mov x1, 390
    mov x2, 118
    mov x3, 404
    mov x4, 114
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 393
    mov x2, 123
    mov x3, 399
    mov x4, 109
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 395
    mov x2, 118
    mov x3, 399
    mov x4, 114
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 6

    mov x1, 601
    mov x2, 45
    mov x3, 637
    mov x4, 41
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 617
    mov x2, 61
    mov x3, 621
    mov x4, 25
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 606
    mov x2, 56
    mov x3, 632
    mov x4, 30
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 7

    mov x1, 543
    mov x2, 161
    mov x3, 569
    mov x4, 157
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 554
    mov x2, 172
    mov x3, 558
    mov x4, 146
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 554
    mov x2, 161
    mov x3, 558
    mov x4, 157
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 8
//pasa por debajo del gato 
// 9 

    mov x1, 404
    mov x2, 38
    mov x3, 441
    mov x4, 33
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 409
    mov x2, 28
    mov x3, 436
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 410
    mov x2, 38
    mov x3, 435
    mov x4, 29
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 415
    mov x2, 29
    mov x3, 430
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 420
    mov x2, 23
    mov x3, 425
    mov x4, 18
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 10

    mov x1, 233
    mov x2, 152
    mov x3, 248
    mov x4, 148
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 239
    mov x2, 157
    mov x3, 243
    mov x4, 142
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 239
    mov x2, 152
    mov x3, 243
    mov x4, 148
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 11

    mov x1, 428
    mov x2, 280
    mov x3, 433
    mov x4, 254
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 428
    mov x2, 274
    mov x3, 433
    mov x4, 260
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 433
    mov x2, 269
    mov x3, 438
    mov x4, 264
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 419
    mov x2, 253
    mov x3, 424
    mov x4, 248
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 12

    mov x1, 603
    mov x2, 276
    mov x3, 618
    mov x4, 272
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 609
    mov x2, 281
    mov x3, 613
    mov x4, 266
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 609
    mov x2, 276
    mov x3, 613
    mov x4, 272
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 13

    mov x1, 427
    mov x2, 361
    mov x3, 453
    mov x4, 357
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 438
    mov x2, 372
    mov x3, 442
    mov x4, 346
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 438
    mov x2, 361
    mov x3, 442
    mov x4, 357
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 14

    mov x1, 246
    mov x2, 361
    mov x3, 285
    mov x4, 356
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 252
    mov x2, 370
    mov x3, 279
    mov x4, 365
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 252
    mov x2, 361
    mov x3, 279
    mov x4, 356
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 258
    mov x2, 370
    mov x3, 273
    mov x4, 365
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 263
    mov x2, 375
    mov x3, 268
    mov x4, 370
    ldr x7, =DARK_BLUE
    bl draw_rectangle


// 15

    mov x1, 185
    mov x2, 393
    mov x3, 211
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 196
    mov x2, 404
    mov x3, 200
    mov x4, 378
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 196
    mov x2, 393
    mov x3, 200
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 16

    mov x1, 397
    mov x2, 411
    mov x3, 433
    mov x4, 407
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 413
    mov x2, 427
    mov x3, 417
    mov x4, 391
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 402
    mov x2, 422
    mov x3, 428
    mov x4, 396
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 17
    mov x1, 557
    mov x2, 391
    mov x3, 593
    mov x4, 387
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 562
    mov x2, 402
    mov x3, 566
    mov x4, 376
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 573
    mov x2, 407
    mov x3, 577
    mov x4, 371
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 584
    mov x2, 402
    mov x3, 588
    mov x4, 376
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 562
    mov x2, 397
    mov x3, 588
    mov x4, 381
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 567
    mov x2, 402
    mov x3, 583
    mov x4, 376
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 18

    mov x1, 265
    mov x2, 420
    mov x3, 301
    mov x4, 416
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 281
    mov x2, 436
    mov x3, 285
    mov x4, 400
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 270
    mov x2, 431
    mov x3, 296
    mov x4, 405
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 19
    mov x1, 9
    mov x2, 413
    mov x3, 13
    mov x4, 409
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 25
    mov x2, 429
    mov x3, 29
    mov x4, 425
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 9
    mov x2, 445
    mov x3, 13
    mov x4, 441
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

clean_stars_frame4:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// 1

    mov x1, 50
    mov x2, 153
    mov x3, 65
    mov x4, 148
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 55
    mov x2, 158
    mov x3, 60
    mov x4, 143
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 55
    mov x2, 153
    mov x3, 60
    mov x4, 148
    ldr x7, =DARK_BLUE
    bl draw_rectangle
    
// 2

    mov x1, 93
    mov x2, 35
    mov x3, 108
    mov x4, 30
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 98
    mov x2, 40
    mov x3, 103
    mov x4, 25
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 98
    mov x2, 35
    mov x3, 103
    mov x4, 30
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 3

  
    mov x1, 139
    mov x2, 109
    mov x3, 149
    mov x4, 107
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 155
    mov x2, 109
    mov x3, 160
    mov x4, 107
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 166
    mov x2, 109
    mov x3, 176
    mov x4, 107
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 155
    mov x2, 126
    mov x3, 160
    mov x4, 115
    ldr x7, =DARK_BLUE
    bl draw_rectangle


// 4

    mov x1, 395
    mov x2, 162
    mov x3, 421
    mov x4, 157
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 405
    mov x2, 172
    mov x3, 410
    mov x4, 146
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 405
    mov x2, 162
    mov x3, 410
    mov x4, 157
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 5 

    mov x1, 474
    mov x2, 45
    mov x3, 512
    mov x4, 40
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 490
    mov x2, 61
    mov x3, 496
    mov x4, 24
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 480
    mov x2, 55
    mov x3, 506
    mov x4, 30
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 6

    mov x1, 549
    mov x2, 157
    mov x3, 587
    mov x4, 151
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 565
    mov x2, 173
    mov x3, 571
    mov x4, 136
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 556
    mov x2, 167
    mov x3, 580
    mov x4, 142
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 7

    mov x1, 622
    mov x2, 68
    mov x3, 640
    mov x4, 63
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 632
    mov x2, 79
    mov x3, 638
    mov x4, 52
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 632
    mov x2, 68
    mov x3, 638
    mov x4, 63
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 8

    mov x1, 451
    mov x2, 276
    mov x3, 466
    mov x4, 271
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 456
    mov x2, 281
    mov x3, 461
    mov x4, 266
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 456
    mov x2, 276
    mov x3, 461
    mov x4, 271
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 9 

    mov x1, 607
    mov x2, 289
    mov x3, 640
    mov x4, 284
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 613
    mov x2, 300
    mov x3, 618
    mov x4, 273
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 623
    mov x2, 305
    mov x3, 628
    mov x4, 268
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 633
    mov x2, 300
    mov x3, 638
    mov x4, 273
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 613
    mov x2, 294
    mov x3, 638
    mov x4, 279
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 619
    mov x2, 299
    mov x3, 632
    mov x4, 274
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 10

    mov x1, 567
    mov x2, 433
    mov x3, 605
    mov x4, 428
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 583
    mov x2, 449
    mov x3, 589
    mov x4, 412
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 574
    mov x2, 443
    mov x3, 599
    mov x4, 418
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 11

    mov x1, 395
    mov x2, 390
    mov x3, 432
    mov x4, 385
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 401
    mov x2, 401
    mov x3, 406
    mov x4, 374
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 411
    mov x2, 406
    mov x3, 416
    mov x4, 369
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 421
    mov x2, 401
    mov x3, 426
    mov x4, 374
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 401
    mov x2, 395
    mov x3, 426
    mov x4, 380
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 407
    mov x2, 400
    mov x3, 420
    mov x4, 375
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 12

    mov x1, 286
    mov x2, 363
    mov x3, 314
    mov x4, 357
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 297
    mov x2, 374
    mov x3, 303
    mov x4, 347
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 297
    mov x2, 363
    mov x3, 303
    mov x4, 357
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 13

    mov x1, 250
    mov x2, 410
    mov x3, 287
    mov x4, 405
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 266
    mov x2, 426
    mov x3, 271
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 256
    mov x2, 420
    mov x3, 281
    mov x4, 395
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 14

    mov x1, 102
    mov x2, 361
    mov x3, 139
    mov x4, 356
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 108
    mov x2, 372
    mov x3, 113
    mov x4, 345
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 118
    mov x2, 377
    mov x3, 123
    mov x4, 340
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 128
    mov x2, 372
    mov x3, 133
    mov x4, 345
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 108
    mov x2, 366
    mov x3, 133
    mov x4, 351
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 114
    mov x2, 371
    mov x3, 127
    mov x4, 346
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 15

    mov x1, 112
    mov x2, 420
    mov x3, 150
    mov x4, 415
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 128
    mov x2, 437
    mov x3, 134
    mov x4, 399
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 119
    mov x2, 430
    mov x3, 143
    mov x4, 405
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 16

    mov x1, 31
    mov x2, 394
    mov x3, 57
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 41
    mov x2, 405
    mov x3, 47
    mov x4, 378
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 41
    mov x2, 394
    mov x3, 47
    mov x4, 389
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

clean_stars_frame5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 22      
    mov x2, 111
    mov x3, 32     
    mov x4, 106
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 11      
    mov x2, 127
    mov x3, 16    
    mov x4, 117
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 11      
    mov x2, 100
    mov x3, 16    
    mov x4, 90
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 11      
    mov x2, 111
    mov x3, 16    
    mov x4, 106
    ldr x7, =DARK_BLUE
    bl draw_rectangle


// 2 
    mov x1, 142     
    mov x2, 121
    mov x3, 147   
    mov x4, 116
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 152     
    mov x2, 121
    mov x3, 157   
    mov x4, 116
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 147     
    mov x2, 116
    mov x3, 152   
    mov x4, 111
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 147    
    mov x2, 126
    mov x3, 152   
    mov x4, 121
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 3

    mov x1, 237     
    mov x2, 157
    mov x3, 264   
    mov x4, 151
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 247    
    mov x2, 167
    mov x3, 253   
    mov x4, 141
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 429     
    mov x2, 158
    mov x3, 435   
    mov x4, 152
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 413     
    mov x2, 173
    mov x3, 419   
    mov x4, 167
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 413     
    mov x2, 142
    mov x3, 419   
    mov x4, 136
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 5

    mov x1, 511     
    mov x2, 80
    mov x3, 537   
    mov x4, 75
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 521     
    mov x2, 91
    mov x3, 527   
    mov x4, 64
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 630     
    mov x2, 32
    mov x3, 635   
    mov x4, 27
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 576
    mov x2, 161
    mov x3, 581   
    mov x4, 144
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 599     
    mov x2, 252
    mov x3, 605   
    mov x4, 214
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 413     
    mov x2, 173
    mov x3, 419   
    mov x4, 167
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 9 

    mov x1, 488    
    mov x2, 298
    mov x3, 525   
    mov x4, 293
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 494     
    mov x2, 309
    mov x3, 499   
    mov x4, 282
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 504     
    mov x2, 314
    mov x3, 509   
    mov x4, 277
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 514     
    mov x2, 309
    mov x3, 519   
    mov x4, 282
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 555     
    mov x2, 396
    mov x3, 581   
    mov x4, 391
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 446
    mov x2, 448
    mov x3, 452   
    mov x4, 410
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 278     
    mov x2, 400
    mov x3, 283   
    mov x4, 373
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 288     
    mov x2, 405
    mov x3, 293   
    mov x4, 368
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 298     
    mov x2, 400
    mov x3, 303   
    mov x4, 373
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 161    
    mov x2, 439
    mov x3, 166   
    mov x4, 402
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 160     
    mov x2, 374
    mov x3, 166   
    mov x4, 347
    ldr x7, =DARK_BLUE
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
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 1     
    mov x2, 380
    mov x3, 6   
    mov x4, 375
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 11     
    mov x2, 353
    mov x3, 16   
    mov x4, 348
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 11   
    mov x2, 375
    mov x3, 16   
    mov x4, 370
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 17    
    mov x2, 364
    mov x3, 22   
    mov x4, 359
    ldr x7, =DARK_BLUE
    bl draw_rectangle

// 16

    mov x1, 8     
    mov x2, 424
    mov x3, 14   
    mov x4, 419
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
