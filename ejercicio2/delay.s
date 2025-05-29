.globl delay

delay:
    sub sp, sp, #16
    str x30, [sp, #8]    
    str x19, [sp]        

    mov x19, 0x01000000  
    //mov x19, 0x20000000  
    
1: 
    sub x19, x19, #1
    cbnz x19, 1b        

    ldr x19, [sp]
    ldr x30, [sp, #8]
    add sp, sp, #16
    ret
