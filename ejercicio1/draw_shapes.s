    .equ SCREEN_WIDTH,   640
    .equ SCREEN_HEIGH,   480
    .equ BITS_PER_PIXEL, 32

    .globl draw_pixel        //Dibuja un px en las coord (x,y) con un color. Entradas: x0=base fb; x1=x; x2=y; x7=color; 
    .globl draw_rectangle     //Dibuja un rectangulo desde (x,y) inf izq a (x',y') sup der. Entradas: x0=base fb; x1=x; x2=y; x3=x'; x4=y'; x7=color;
    .globl draw_circle        //Dibuja un circulo alrededor del punto (x,y), con un radio determinado. Entradas: x0=base fb; x1=xc(central x); x2=yc(central y); x3=r (ratius); x7=color;



//=====================================> FUNCION PIXEL <=====================================//
draw_pixel:
    //Para calcular la direccion del px en fb, necesitamos la ecuacion: Direccion de inicio + 4 * [x + (y * 640)] --> x4 = x0 + 4 * [x1 + (x2 * SCREEN_WIDTH)]
    mov x16, SCREEN_WIDTH 
    mul x16, x2, x16       // x16 = (x2 * SCREEN_WIDTH)
    add x16, x1, x16       // x16 = [x1 + (x2 * SCREEN_WIDTH)]
    lsl x16, x16, 2        // x16 = 4 * [x1 + (x2 * SCREEN_WIDTH)]
    add x16, x0, x16       // x16 = x0 + 4 * [x1 + (x2 * SCREEN_WIDTH)]
    
    stur w7, [x16]         // Pinta el pixel en la direccion seteada
ret                        // Vuelvo a la ejecucion del resto del programa


//=====================================> FUNCION RECTANGULO <=====================================//
draw_rectangle: 
	// Guardo los registros que voy a usar en la pila
	sub sp, sp, #56        // Pido memoria
	str x1, [sp]           
	str x2, [sp, #8]
	str x3, [sp, #16]
	str x4, [sp, #24]
	str x9, [sp, #32]
    str x16, [sp, #40]
	str x30, [sp, #48]

    cmp x1, x3             
    b.le dont_swap_x         // Condicion: si x1 <= x3 entonces no hago swap xs (pues x1 es la coord x inf izq y x3 la coord x sup der)
                             // Si no se cumple, hago el swap para que esten bien asignados, usando x16 como auxiliar
        mov x16, x1
        mov x1, x3 
        mov x3, x16
    dont_swap_x:

    cmp x2, x4                   
    b.le dont_swap_y           // Hago el mismo procedimiento para los y (siendo x2=y1, x4=y2)

        mov x16, x2
        mov x2, x4
        mov x4, x16
    dont_swap_y:

    mov x9, x1                 // Creo un auxiliar x9 para reiniciar el valor de x1 cada vez que pase a una nueva fila

    fill_rec:                  // Una vez bien seteadas las coord, hago el bucle donde pinto de a lineas
    cmp x2, x4
    b.gt done                  // Condicion: Si x2 > x4, significa que y1 > y2, por lo tanto ya llegue al extremo superior derecho pintando. Termino
       cmp x1, x3              
       b.gt new_row            // Condicion: Si x1 > x2 (x1 > x2), necesito subir una fila mas, pues la fila actual ya quedo terminada
           bl draw_pixel       // Si no termine la fila, pinto ese pixel y avanzo en el eje x hasta terminar la fila
           add x1, x1, #1
       b fill_rec

    new_row:
        mov x1, x9             // Reinicio x1 para pintar la nueva fila
        add x2, x2, #1
        b fill_rec

    done:

    // Devuelvo la memoria usada
	ldr x30, [sp, #48]
    ldr x16, [sp, #40]
	ldr x9, [sp, #32]
	ldr x4, [sp, #24]
	ldr x3, [sp, #16]
	ldr x2, [sp, #8]
	ldr x1, [sp]
	add sp, sp, #56
ret



draw_hline:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x8, [sp, #24]
    str x9, [sp, #32]
    str x30, [sp, #40] 
    cmp x1, x3
    b.gt end_hline

hline_loop:
    // Dibuja pixel en (x1, x2)
    mov x8, x1
    mov x9, x2
    mov x1, x8
    mov x2, x9
    bl draw_pixel

    add x1, x1, 1
    cmp x1, x3
    b.le hline_loop

end_hline:
    ldr x30, [sp, #40]
    ldr x9, [sp, #32]
    ldr x8, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
ret

//=====================================> FUNCION CIRCULO <=====================================//
draw_circle:
    // Guardar registros
    sub sp, sp, #88
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x5, [sp, #32]
    str x6, [sp, #40]
    str x7, [sp, #48]
    str x9, [sp, #56]
    str x10, [sp, #64]
    str x11, [sp, #72]
    str x30, [sp, #80]

    mov x4, x1         // xc = x
    mov x5, x2         // yc = y
    mov x6, x3         // radius = r

    mov x9, 0          // x = 0
    mov x10, x6        // y = radius
    mov x11, 1
    sub x11, x11, x6, lsl 1 // d = 1 - r

circle_loop:
    // Dibujar líneas horizontales para rellenar el círculo

    // Línea: yc + y
    sub x1, x4, x9         // x_start = xc - x
    add x3, x4, x9         // x_end   = xc + x
    add x2, x5, x10        // y = yc + y
    bl draw_hline

    // Línea: yc - y
    sub x1, x4, x9
    add x3, x4, x9
    sub x2, x5, x10
    bl draw_hline

    // Línea: yc + x
    sub x1, x4, x10
    add x3, x4, x10
    add x2, x5, x9
    bl draw_hline

    // Línea: yc - x
    sub x1, x4, x10
    add x3, x4, x10
    sub x2, x5, x9
    bl draw_hline

    // Actualizar x, y y d
    add x9, x9, 1      // x++
    cmp x9, x10
    b.ge end_circle    // while x <= y

    cmp x11, 0
    b.ge update_d_and_y

    add x11, x11, x9, lsl 1
    b circle_loop

update_d_and_y:
    sub x10, x10, 1    // y--
    add x11, x11, x9, lsl 1
    sub x11, x11, x10, lsl 1
    b circle_loop

end_circle:
    // Restaurar registros
    ldr x30, [sp, #80]
    ldr x11, [sp, #72]
    ldr x10, [sp, #64]
    ldr x9, [sp, #56]
    ldr x7, [sp, #48]
    ldr x6, [sp, #40]
    ldr x5, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #88
    ret


/* draw_circle:
    // Guardar los registros en la pila
    sub sp, sp, #88
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x5, [sp, #32]
    str x6, [sp, #40]
    str x7, [sp, #48]
    str x9, [sp, #56]
    str x10, [sp, #64]
    str x11, [sp, #72]
    str x30, [sp, #80]

    mov x4, x1                 // xc = x
    mov x5, x2                 // yc = y
    mov x6, x3                 // radius = radio

    mov x9, 0                  // x = 0
    mov x10, x6                // y = radius
    mov x11, 1                 // d = 1 - radius
    sub x11, x11, x6, lsl 1

draw_circle_loop:
    // Pintar los ocho octantes del círculo
    mov x1, x4                 // xc + x
    add x1, x1, x9
    mov x2, x5                 // yc + y
    add x2, x2, x10
    bl draw_pixel

    mov x1, x4                 // xc - x
    sub x1, x1, x9
    mov x2, x5                 // yc + y
    add x2, x2, x10
    bl draw_pixel

    mov x1, x4                 // xc + x
    add x1, x1, x9
    mov x2, x5                 // yc - y
    sub x2, x2, x10
    bl draw_pixel

    mov x1, x4                 // xc - x
    sub x1, x1, x9
    mov x2, x5                 // yc - y
    sub x2, x2, x10
    bl draw_pixel

    mov x1, x4                 // xc + y
    add x1, x1, x10
    mov x2, x5                 // yc + x
    add x2, x2, x9
    bl draw_pixel

    mov x1, x4                 // xc - y
    sub x1, x1, x10
    mov x2, x5                 // yc + x
    add x2, x2, x9
    bl draw_pixel

    mov x1, x4                 // xc + y
    add x1, x1, x10
    mov x2, x5                 // yc - x
    sub x2, x2, x9
    bl draw_pixel

    mov x1, x4                 // xc - y
    sub x1, x1, x10
    mov x2, x5                 // yc - x
    sub x2, x2, x9
    bl draw_pixel

    // Actualizar el parámetro de decisión y las coordenadas
    add x9, x9, 1              // x++
    cmp x9, x10
    b.ge end_circle            // Si x > y, termina el círculo

    cmp x11, 0
    b.ge update_d_and_y
    add x11, x11, x9, lsl 1
    b draw_circle_loop

update_d_and_y:
    sub x10, x10, 1            // y--
    add x11, x11, x9, lsl 1
    sub x11, x11, x10, lsl 1
    b draw_circle_loop

end_circle:
    // Restaurar los registros desde la pila
    ldr x30, [sp, #80]
    ldr x11, [sp, #72]
    ldr x10, [sp, #64]
    ldr x9, [sp, #56]
    ldr x7, [sp, #48]
    ldr x6, [sp, #40]
    ldr x5, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #88
    ret
    
 */











               
