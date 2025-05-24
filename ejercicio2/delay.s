.globl delay

delay:
    sub sp, sp, #16
    str x30, [sp, #8]    // Guarda LR (x30)
    str x19, [sp]        // Guarda x19 (registro preservado)

    mov x19, 0x000F0000  // ★ Valor más manejable (ajustar según necesidad)
    
1:  // Etiqueta local para el loop
    sub x19, x19, #1
    cbnz x19, 1b         // Branch backward to local label

    ldr x19, [sp]
    ldr x30, [sp, #8]
    add sp, sp, #16
    ret
