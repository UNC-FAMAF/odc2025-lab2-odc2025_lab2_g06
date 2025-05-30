Nombre y apellido 
Integrante 1: Carla Virginia Díaz Peña
Integrante 2: Guadalupe Rocío Acosta
Integrante 3: Emil Morano Firme
Integrante 4: Santiago Denis

Descripción ejercicio 1: Realizamos un meme de internet, Nyan Cat, volando sobre el espacio, con adornos circulares que sigan la tematica del meme arcoiris y el texto integrados.

Descripción ejercicio 2: Usamos el ejercicio anterior como primer frame. Para agregar movimiento, hicimos cuatro frames mas que luego pusimos el loop para dar aquella ilusión y ahora el gato viaja felizmente por el espacio.


Justificación instrucciones ARMv8: No hemos usado ninguna funcion que no este ya definida, salvo por las instrucciones "ldr" y "str" que vendrian a ser equivalentes a "ldur" y "stur" respectivamente.


# Creacion de archivos nuevos: 

> Ejercicio 1: 
* **[draw_shapes.s](./ejercicio1/draw_shapes.s)** Este archivo tiene las funciones elementales que usamos a lo largo del proyecto para pintar figura utilizada.
* **[draw_functions.s](./ejercicio1/draw_functions.s)** Este archivo tiene la llamada a funciones elementales para dibujar distintas partes en las que dividimos la imagen _(ej: cuerpo del gato, fondo, arcoiris, etc)_.

> Ejercicio 2:
* **[draw_frames.s](./ejercicio2/draw_frames.s)** Este archivo realiza la creacion de los 5 frames (llamando a las funciones definidas en cada draw_frame_i, para i=1,...,5), asignandole una etiqueta a cada uno para luego llamar de forma mas prolija en app.
* **[draw_frame_1.s](./ejercicio2/draw_frame_1.s)** Este archivo crea el primer frame de la animacion utilizando llamadas a las funciones de draw_shapes.s.
* **[draw_frame_2.s](./ejercicio2/draw_frame_2.s)** Este archivo crea el segundo frame de la animacion utilizando llamadas a las funciones de draw_shapes.s.
* **[draw_frame_3.s](./ejercicio2/draw_frame_3.s)** Este archivo crea el tercer frame de la animacion utilizando llamadas a las funciones de draw_shapes.s.
* **[draw_frame_4.s](./ejercicio2/draw_frame_4.s)** Este archivo crea el cuarto frame de la animacion utilizando llamadas a las funciones de draw_shapes.s.
* **[draw_frame_5.s](./ejercicio2/draw_frame_5.s)** Este archivo crea el quinto frame de la animacion utilizando llamadas a las funciones de draw_shapes.s.
* **[draw_cleans.s](./ejercicio2/draw_cleans.s)** Este archivo realiza una "limpieza" de lo que pudo haber quedado de un frame anterior en framebuffer que ya no necesitemos, para luego reemplazarlo por el otro frame. Hemos tratado de evitar simplemente limpiar todo el frame anterior para evitar que la pantalla titile en la animacion. Hemos sacado solamente lo que era necesario, el resto que estaba pintado y no afectaba a la animacion lo dejamos.
* **[delay.s](./ejercicio2/delay.s)** Este archivo propone el delay que luego sera usado entre cada llamada de frame de la animacion.


### Importante a saber sobre el delay: 
El delay tiene, en la linea 19, el uso de la variable **DELAY_OPERATIONS**. Si la animacion en su computadora llega a ser muy rapida o lenta, puede modificar el valor de dicha variable para que haga mas o menos operaciones respectivamente.
```
    mov x19, DELAY_OPERATIONS   
```