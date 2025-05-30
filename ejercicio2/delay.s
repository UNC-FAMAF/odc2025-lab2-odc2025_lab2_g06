.equ DELAY_OPERATIONS,  0x08000000

.globl delay

//La funcion que provoca delay en la animacion forzando a la cpu a realizar DELAY_OPERATIONS operaciones.
delay:
    sub sp, sp, #16
    str x30, [sp, #8]    
    str x19, [sp]        

    mov x19, DELAY_OPERATIONS   
    
1: 
    sub x19, x19, #1
    cbnz x19, 1b        

    ldr x19, [sp]
    ldr x30, [sp, #8]
    add sp, sp, #16
    ret
