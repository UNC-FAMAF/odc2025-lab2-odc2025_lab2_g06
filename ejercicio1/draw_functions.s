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


    .globl draw_background
    .globl draw_body
    .globl draw_red_rainbow
/*     .globl draw_star
    .globl draw_sarasa */

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

draw_red_rainbow:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]  
    str x7, [sp, #32]
    str x30, [sp, #40]
    
    mov x1, 0        
    mov x2, 231  
    mov x3, 15       
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 16        
    mov x2, 238 
    mov x3, 69      
    mov x4, 219
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 70        
    mov x2, 231  
    mov x3, 125       
    mov x4, 211
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 126        
    mov x2, 238 
    mov x3, 180       
    mov x4, 219
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 181        
    mov x2, 231 
    mov x3, 235       
    mov x4, 212
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 236        
    mov x2, 238 
    mov x3, 243       
    mov x4, 219
    ldr x7, =RED
    bl draw_rectangle
    mov x1, 243        
    mov x2, 224 
    mov x3, 250      
    mov x4, 219
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



draw_body:
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


/* dibujo_dos_circulos_ejemplo:
    sub sp, sp, #40
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x7, [sp, #24]
    str x30, [sp, #32]


    mov x1, 250
    mov x2, 180
    mov x3, 60
    ldr x7, =BLUE
    bl draw_circle

    mov x1, 350
    mov x2, 280
    mov x3, 90
    ldr x7, =DARK_GRAY
    bl draw_circle

    ldr x30, [sp, #32]
    ldr x7, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #40
ret

draw_sarasa:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]
//dibujar_rectangulo(x,y)
    mov x1, 0       
    mov x2, 100       
    mov x3, 200        
    mov x4, 310
    ldr x7, =LIGHT_GRAY
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
 */