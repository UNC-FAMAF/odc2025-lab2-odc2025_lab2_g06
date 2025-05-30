[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/VsnOOl0p)

# 🚀 Laboratorio de Organización y Arquitectura de Computadoras

**Resolución de ejercicios prácticos usando Assembler ARMv8 sobre emulación de Raspberry Pi 3 y framebuffer.**

---

## 📺 Especificaciones técnicas

- Resolución: `640x480` píxeles, formato `ARGB` 32 bits.
- Registro `X0`: contiene la dirección base del FrameBuffer.
- El código de cada ejercicio está en `app.s`.
- El archivo `start.s` inicializa el FrameBuffer. **(NO MODIFICAR)**

---

## 👩‍💻 Autores

| Nombre                         | Rol                |
|-------------------------------|--------------------|
| Carla Virginia Díaz Peña      | Integrante 1       |
| Guadalupe Rocío Acosta        | Integrante 2       |
| Emil Morano Firme             | Integrante 3       |
| Santiago Denis                | Integrante 4       |

---

## 📝 Descripción de los ejercicios

### 🎨 Ejercicio 1: Nyan Cat

Creamos un meme animado del famoso **Nyan Cat**, volando por el espacio con fondo estrellado. Incluye detalles circulares con temática de arcoíris y texto integrado, todo dibujado desde cero.

### 🌀 Ejercicio 2: Animación

Partimos del frame del ejercicio anterior, y agregamos cuatro nuevos frames para generar una animación en bucle. El resultado: Nyan Cat viaja alegremente por el espacio.

---

## 📁 Estructura del Proyecto

### 📂 Ejercicio 1

- **[app.s](./ejercicio1/app.s)**  → Código principal que llama a las funciones de animación.
- **[start.s](./ejercicio1/start.s)** → Inicialización del hardware.
- **[Makefile](./ejercicio1/Makefile)** → Script de compilación.
- **[memmap](./ejercicio1/memmap)** → Mapeo de memoria.
- **[draw_shapes.s](./ejercicio1/draw_shapes.s)** → Funciones básicas para dibujar figuras.
- **[draw_functions.s](./ejercicio1/draw_functions.s)** → Agrupación de funciones para dibujar partes específicas (fondo, cuerpo, arcoíris, etc.).

### 📂 Ejercicio 2

- **[app.s](./ejercicio2/app.s)** → Controlador de animación por frames.
- **[start.s](start.s)** → Inicialización (idéntico al ejercicio 1).
- **[Makefile](Makefile)** → Script de compilación.
- **[memmap](memmap)** → Mapeo de memoria.
- **[draw_frames.s](./ejercicio2/draw_frames.s)** → Gestor de los 5 frames de animación.
- **[draw_frame_1.s](./ejercicio2/draw_frame_1.s)** Este archivo crea el primer frame de la animación utilizando llamadas a las funciones de draw_shapes.s.
- **[draw_frame_2.s](./ejercicio2/draw_frame_2.s)** Este archivo crea el segundo frame.
- **[draw_frame_3.s](./ejercicio2/draw_frame_3.s)** Este archivo crea el tercer frame.
- **[draw_frame_4.s](./ejercicio2/draw_frame_4.s)** Este archivo crea el cuarto frame.
- **[draw_frame_5.s](./ejercicio2/draw_frame_5.s)** Este archivo crea el quinto frame.
- **[draw_cleans.s](./ejercicio2/draw_cleans.s)** → Limpieza inteligente del frame anterior, evitando que titile la pantalla.
- **[delay.s](./ejercicio2/delay.s)** → Generador de retraso entre frames.

---

## 🎬 Demo

🖥 Podés ver una demostración del proyecto en el siguiente link:  
👉 [Demo en Padlet](https://padlet.com/odcfamaf/odc_labs2-cg1xb0a4lbdwq7lk/wish/E851Q0rL3eR0WVAb)


## Uso

El archivo _Makefile_ contiene lo necesario para construir el proyecto.
Se pueden utilizar otros archivos **.s** si les resulta práctico para emprolijar el código y el Makefile los ensamblará.

**Para correr el proyecto ejecutar**

```bash
$ make runQEMU
```
Esto construirá el código y ejecutará qemu para su emulación.

Si qemu se queja con un error parecido a `qemu-system-aarch64: unsupported machine type`, prueben cambiar `raspi3` por `raspi3b` en la receta `runQEMU` del **Makefile** (línea 23 si no lo cambiaron).

**Para correr el gpio manager**

```bash
$ make runGPIOM
```

Ejecutar *luego* de haber corrido qemu.


### Importante a saber sobre el delay: 
El delay tiene, en la linea 19, el uso de la variable **DELAY_OPERATIONS**. Si la animacion en su computadora llega a ser muy rapida o lenta, puede modificar el valor de dicha variable para que haga mas o menos operaciones respectivamente.
```
    mov x19, DELAY_OPERATIONS   
```

## Como correr qemu y gcc usando Docker containers

Los containers son maquinas virtuales livianas que permiten correr procesos individuales como el qemu y gcc.

Para seguir esta guia primero tienen que instala docker y asegurarse que el usuario que vayan a usar tenga permiso para correr docker (ie dockergrp) o ser root

### Linux
 * Para construir el container hacer
```bash
docker build -t famaf/rpi-qemu .
```
 * Para arrancarlo
```bash
xhost +
cd rpi-asm-framebuffer
docker run -dt --name rpi-qemu --rm -v $(pwd):/local --privileged -e "DISPLAY=${DISPLAY:-:0.0}" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
```
 * Para correr el emulador y el simulador de I/O
```bash
docker exec -d rpi-qemu make runQEMU
docker exec -it rpi-qemu make runGPIOM
```
 * Para terminar el container
```bash
docker kill rpi-qemu
```

### MacOS
En MacOS primero tienen que [instalar un X server](https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb) (i.e. XQuartz)
 * Para construir el container hacer
```bash
docker build -t famaf/rpi-qemu .
```
 * Para arrancarlo
```bash
xhost +
cd rpi-asm-framebuffer
docker run -dt --name rpi-qemu --rm -v $(pwd):/local --privileged -e "DISPLAY=host.docker.internal:0" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
```
 * Para correr el emulador y el simulador de I/O
```bash
docker exec -d rpi-qemu make runQEMU
docker exec -it rpi-qemu make runGPIOM
```
 * Para terminar el container
```bash
docker kill rpi-qemu
```
----------------------------------
### Otros comandos utiles
```bash
# Correr el container en modo interactivo
docker run -it --rm -v $(pwd):/local --privileged -e "DISPLAY=${DISPLAY:-:0.0}" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
# Correr un shell en el container
docker exec -it rpi-qemu /bin/bash
```