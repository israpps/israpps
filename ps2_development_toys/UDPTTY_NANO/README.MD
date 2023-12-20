# UDP TYY NANO

Fusion of UDPBD driver with the DEV9 driver to create a standalone TTY module.

an excellent solution to IOP Printf piping for those who dont own a COH-H model or a DECKARD slim (and therefore cant do UART)

it's export interface remains the same as the DEV9 driver. so it can still allow usage of HDD and XFROM modules. however, since this module has its own network stack, coexistence with other network IRXes is not possible