#include <stdio.h>
#include "io.h"
#include "system.h"
int main()
{
     int atual, i=0;
     //printf("Hello from Nios II!\n")
     while(i++ < 50){
             atual = IORD(EXEMPLO_NOVO_0_BASE,0);
             IOWR(EXEMPLO_NOVO_0_BASE,0,0x12345678);
     }
return 0;
}
