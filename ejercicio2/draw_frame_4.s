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

    .globl draw_background_4
    .globl draw_body_4
    .globl draw_rainbow_all_colors_frame_4
    .globl draw_toes_4
    .globl draw_stars_4
    .globl draw_letters_4
    .globl draw_tail_4
    .globl draw_rainbow_circles_4

draw_background_4:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 1       
    mov x2, 354    
    mov x3, 426        
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

draw_stars_4:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
//----------ESTRELLAS EN MOVIMIENTO----------//
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 55
    mov x2, 158
    mov x3, 60
    mov x4, 143
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 98
    mov x2, 40
    mov x3, 103
    mov x4, 25
    ldr x7, =WHITE
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
    mov x3, 177
    mov x4, 104
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 155
    mov x2, 125
    mov x3, 160
    mov x4, 88
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 150
    mov x2, 114
    mov x3, 165
    mov x4, 99
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 155
    mov x2, 109
    mov x3, 160
    mov x4, 104
    ldr x7, =WHITE
    bl draw_rectangle

// 4

    mov x1, 395
    mov x2, 162
    mov x3, 421
    mov x4, 157
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 405
    mov x2, 172
    mov x3, 410
    mov x4, 146
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 405
    mov x2, 162
    mov x3, 410
    mov x4, 157
    ldr x7, =WHITE
    bl draw_rectangle

// 5 

    mov x1, 474
    mov x2, 45
    mov x3, 512
    mov x4, 40
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 490
    mov x2, 61
    mov x3, 496
    mov x4, 24
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 565
    mov x2, 173
    mov x3, 571
    mov x4, 136
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 632
    mov x2, 79
    mov x3, 638
    mov x4, 52
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 456
    mov x2, 281
    mov x3, 461
    mov x4, 266
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 456
    mov x2, 276
    mov x3, 461
    mov x4, 271
    ldr x7, =WHITE
    bl draw_rectangle

// 9 

    mov x1, 607
    mov x2, 289
    mov x3, 640
    mov x4, 284
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 613
    mov x2, 300
    mov x3, 618
    mov x4, 273
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 623
    mov x2, 305
    mov x3, 628
    mov x4, 268
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 633
    mov x2, 300
    mov x3, 638
    mov x4, 273
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 583
    mov x2, 449
    mov x3, 589
    mov x4, 412
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 401
    mov x2, 401
    mov x3, 406
    mov x4, 374
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 411
    mov x2, 406
    mov x3, 416
    mov x4, 369
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 421
    mov x2, 401
    mov x3, 426
    mov x4, 374
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 297
    mov x2, 374
    mov x3, 303
    mov x4, 347
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 266
    mov x2, 426
    mov x3, 271
    mov x4, 389
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 108
    mov x2, 372
    mov x3, 113
    mov x4, 345
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 118
    mov x2, 377
    mov x3, 123
    mov x4, 340
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 128
    mov x2, 372
    mov x3, 133
    mov x4, 345
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 128
    mov x2, 437
    mov x3, 134
    mov x4, 399
    ldr x7, =WHITE
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
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 41
    mov x2, 405
    mov x3, 47
    mov x4, 378
    ldr x7, =WHITE
    bl draw_rectangle

    mov x1, 41
    mov x2, 394
    mov x3, 47
    mov x4, 389
    ldr x7, =DARK_BLUE
    bl draw_rectangle


//----------   ----------//
//----------ESTRELLAS ANTIGUAS (DEL FRAME 3)----------//
// 1

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

// 4

    mov x1, 292
    mov x2, 109
    mov x3, 329
    mov x4, 104
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 308
    mov x2, 125
    mov x3, 313
    mov x4, 88
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 303
    mov x2, 114
    mov x3, 318
    mov x4, 99
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 308
    mov x2, 109
    mov x3, 313
    mov x4, 104
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

    mov x1, 420
    mov x2, 53
    mov x3, 424
    mov x4, 18
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 410
    mov x2, 49
    mov x3, 414
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 431
    mov x2, 49
    mov x3, 435
    mov x4, 23
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 404
    mov x2, 38
    mov x3, 441
    mov x4, 34
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 409
    mov x2, 44
    mov x3, 436
    mov x4, 28
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 415
    mov x2, 49
    mov x3, 430
    mov x4, 23
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

    mov x1, 402
    mov x2, 269
    mov x3, 438
    mov x4, 265
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 407
    mov x2, 279
    mov x3, 411
    mov x4, 254
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 429
    mov x2, 279
    mov x3, 433
    mov x4, 254
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 418
    mov x2, 285
    mov x3, 422
    mov x4, 249
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 407
    mov x2, 274
    mov x3, 433
    mov x4, 259
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 412
    mov x2, 280
    mov x3, 428
    mov x4, 254
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

    mov x1, 247
    mov x2, 358
    mov x3, 283
    mov x4, 354
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 252
    mov x2, 369
    mov x3, 256
    mov x4, 343
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 263
    mov x2, 374
    mov x3, 267
    mov x4, 338
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 274
    mov x2, 369
    mov x3, 278
    mov x4, 343
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 252
    mov x2, 364
    mov x3, 278
    mov x4, 348
    ldr x7, =DARK_BLUE
    bl draw_rectangle

    mov x1, 257
    mov x2, 369
    mov x3, 273
    mov x4, 343
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

draw_letters_4: //cambiado
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
// ---O---
    mov x1, 137        
    mov x2, 94 
    mov x3, 146      
    mov x4, 58
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 147   
    mov x2, 57
    mov x3, 167      
    mov x4, 46
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 168        
    mov x2, 94 
    mov x3, 177      
    mov x4, 58
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle

    mov x1, 147        
    mov x2, 106
    mov x3, 167      
    mov x4, 95
    ldr x7, =LIGHT_BLUE
    bl draw_rectangle
// ---D---  
    mov x1, 188     
    mov x2, 106
    mov x3, 197      
    mov x4, 46
    ldr x7, =VIOLET
    bl draw_rectangle   

    mov x1, 198    
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    ldr x7, =VIOLET
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    ldr x7, =VIOLET
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 106
    mov x3, 218      
    mov x4, 95
    ldr x7, =VIOLET
    bl draw_rectangle 

    mov x1, 219  
    mov x2, 94
    mov x3, 228      
    mov x4, 58
    ldr x7, =VIOLET
    bl draw_rectangle
// ---C---
    mov x1, 239    
    mov x2, 94
    mov x3, 248      
    mov x4, 58
    ldr x7, =PINK
    bl draw_rectangle 
    
    mov x1, 249     
    mov x2, 57
    mov x3, 269      
    mov x4, 46
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 249     
    mov x2, 106
    mov x3, 269      
    mov x4, 95
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 94
    mov x3, 279      
    mov x4, 83
    ldr x7, =PINK
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 69
    mov x3, 279    
    mov x4, 58
    ldr x7, =PINK
    bl draw_rectangle 
// ---2---
    mov x1, 311
    mov x2, 69
    mov x3, 320    
    mov x4, 58
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 311
    mov x2, 106
    mov x3, 350
    mov x4, 95
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 321   
    mov x2, 94
    mov x3, 330  
    mov x4, 83
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 331   
    mov x2, 82
    mov x3, 340  
    mov x4, 70
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 341 
    mov x2, 69
    mov x3, 350  
    mov x4, 58
    ldr x7, =RED
    bl draw_rectangle 

    mov x1, 321  
    mov x2, 57
    mov x3, 340  
    mov x4, 46
    ldr x7, =RED
    bl draw_rectangle

// ---0---
    mov x1, 362     
    mov x2, 94
    mov x3, 371  
    mov x4, 58
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 372  
    mov x2, 57
    mov x3, 391  
    mov x4, 46
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 372  
    mov x2, 106
    mov x3, 391
    mov x4, 95
    ldr x7, =ORANGE
    bl draw_rectangle

    mov x1, 392  
    mov x2, 94
    mov x3, 402  
    mov x4, 58
    ldr x7, =ORANGE
    bl draw_rectangle

// ---2---

    mov x1, 413    
    mov x2, 69
    mov x3, 422    
    mov x4, 58
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 413    
    mov x2, 106
    mov x3, 453    
    mov x4, 95
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 423    
    mov x2, 94
    mov x3, 432    
    mov x4, 83
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 433    
    mov x2, 82
    mov x3, 442  
    mov x4, 70
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 443    
    mov x2, 69
    mov x3, 453    
    mov x4, 58
    ldr x7, =YELLOW
    bl draw_rectangle

    mov x1, 423    
    mov x2, 57
    mov x3, 442    
    mov x4, 46 
    ldr x7, =YELLOW
    bl draw_rectangle

// ---5---

    mov x1, 464
    mov x2, 57
    mov x3, 504    
    mov x4, 46
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 464    
    mov x2, 82
    mov x3, 473    
    mov x4, 58
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 474    
    mov x2, 82
    mov x3, 493    
    mov x4, 70
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 494     
    mov x2, 94
    mov x3, 504  
    mov x4, 83
    ldr x7, =GREEN
    bl draw_rectangle

    mov x1, 464    
    mov x2, 106
    mov x3, 493  
    mov x4, 95
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

draw_rainbow_all_colors_frame_4:
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

draw_body_4:
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

//=============> RELLENO DE CABEZA <==============//   //CAMBIAR
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
//=============> FACCIONES CABEZA <================// // CAMBIAR
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

draw_tail_4: //cambiado

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 229
    mov x2, 287
    mov x3, 243  
    mov x4, 281
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 215  
    mov x2, 294
    mov x3, 228  
    mov x4, 288
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 208  
    mov x2, 301
    mov x3, 214  
    mov x4, 295
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 201  
    mov x2, 315
    mov x3, 207  
    mov x4, 302
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 208  
    mov x2, 322
    mov x3, 221  
    mov x4, 316
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 222  
    mov x2, 315
    mov x3, 228  
    mov x4, 309
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 222  
    mov x2, 308
    mov x3, 243  
    mov x4, 302
    ldr x7, =BLACK
    bl draw_rectangle

    mov x1, 229  
    mov x2, 294
    mov x3, 243  
    mov x4, 288
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 215  
    mov x2, 301
    mov x3, 243  
    mov x4, 295
    ldr x7, =GRAY
    bl draw_rectangle

    mov x1, 208   
    mov x2, 315
    mov x3, 221  
    mov x4, 302
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

draw_toes_4: //cambiado

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 235      
    mov x2, 349
    mov x3, 243     
    mov x4, 329
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 243      
    mov x2, 328
    mov x3, 256     
    mov x4, 322
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 244      
    mov x2, 349
    mov x3, 256     
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 257       
    mov x2, 343
    mov x3, 264     
    mov x4, 335
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 270      
    mov x2, 343
    mov x3, 276     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 277      
    mov x2, 350
    mov x3, 298     
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 292      
    mov x2, 343
    mov x3, 298     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 339      
    mov x2, 343
    mov x3, 345     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 346      
    mov x2, 349
    mov x3, 368     
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 362      
    mov x2, 343
    mov x3, 368     
    mov x4, 335
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 375      
    mov x2, 343
    mov x3, 382     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 383      
    mov x2, 351
    mov x3, 402     
    mov x4, 344
    ldr x7, =BLACK
    bl draw_rectangle
    mov x1, 396      
    mov x2, 343
    mov x3, 402     
    mov x4, 336
    ldr x7, =BLACK
    bl draw_rectangle
    
    mov x1, 244      
    mov x2, 343
    mov x3, 256     
    mov x4, 329
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 277      
    mov x2, 343
    mov x3, 291     
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 346      
    mov x2, 343
    mov x3, 361     
    mov x4, 336
    ldr x7, =GRAY
    bl draw_rectangle
    mov x1, 383      
    mov x2, 343
    mov x3, 395     
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


draw_rainbow_circles_4:

    sub sp, sp, #40
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x7, [sp, #24]
    str x30, [sp, #32]

    mov x1, 20
    mov x2, 465
    mov x3, 14
    ldr x7, =YELLOW
    bl draw_circle

    mov x1, 53
    mov x2, 465
    mov x3, 14
    ldr x7, =GREEN
    bl draw_circle

    mov x1, 86
    mov x2, 465
    mov x3, 14
    ldr x7, =BLUE
    bl draw_circle

    mov x1, 119
    mov x2, 465
    mov x3, 14
    ldr x7, =RED
    bl draw_circle

    mov x1, 152
    mov x2, 465
    mov x3, 14
    ldr x7, =ORANGE
    bl draw_circle

    mov x1, 185
    mov x2, 465
    mov x3, 14
    ldr x7, =YELLOW
    bl draw_circle

    mov x1, 218
    mov x2, 465
    mov x3, 14
    ldr x7, =GREEN
    bl draw_circle

    mov x1, 251
    mov x2, 465
    mov x3, 14
    ldr x7, =BLUE
    bl draw_circle

    mov x1, 284
    mov x2, 465
    mov x3, 14
    ldr x7, =VIOLET
    bl draw_circle

    mov x1, 317
    mov x2, 465
    mov x3, 14
    ldr x7, =PINK
    bl draw_circle

    mov x1, 350
    mov x2, 465
    mov x3, 14
    ldr x7, =RED
    bl draw_circle

    mov x1, 383
    mov x2, 465
    mov x3, 14
    ldr x7, =ORANGE
    bl draw_circle

    mov x1, 416
    mov x2, 465
    mov x3, 14
    ldr x7, =YELLOW
    bl draw_circle

    mov x1, 449
    mov x2, 465
    mov x3, 14
    ldr x7, =GREEN
    bl draw_circle

    mov x1, 482
    mov x2, 465
    mov x3, 14
    ldr x7, =BLUE
    bl draw_circle

    mov x1, 515
    mov x2, 465
    mov x3, 14
    ldr x7, =VIOLET
    bl draw_circle

    mov x1, 548
    mov x2, 465
    mov x3, 14
    ldr x7, =PINK
    bl draw_circle

    mov x1, 581
    mov x2, 465
    mov x3, 14
    ldr x7, =RED
    bl draw_circle

    mov x1, 614
    mov x2, 465
    mov x3, 14
    ldr x7, =ORANGE
    bl draw_circle

    ldr x30, [sp, #32]
    ldr x7, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #40
ret

