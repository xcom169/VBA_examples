#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
  int a,b,c,d,e,f,i,j;
  printf("adja meg az evszamot: 20");
  scanf("%d", &a);
  printf("adja meg a honapot: ");
  scanf("%d", &b);
  printf("adja meg a napot: ");
  scanf("%d", &d);
  a=(a/4)+a;
  c= a/7;
  a= a - (c*7);
  printf("a=%d\n", a);
  
if ( valtozo %4 ==0) 
{print('szokoev'); }

switch(b)
  {
           case 1 : e=6; break;
           case 2 : e=2; break;
           case 3 : e=2; break;
           case 4 : e=5; break;
           case 5 : e=0; break;
           case 6 : e=3; break;
           case 7 : e=5; break;
           case 8 : e=1; break;
           case 9 : e=4; break;
           case 10 : e=6; break;
           case 11 : e=2; break;
           case 12 : e=4; break;
           
}

printf("%d\n", e);  
f = a + e + d; 
printf("%d\n", f);
i=f/7;
f=f-(i*7);
switch(f)
         {
         case 1 : printf("Hetfo"); break ;  
         case 2 : printf("kedd"); break ; 
         case 3 : printf("szerda"); break ;
         case 4 : printf("csutortok"); break ;
         case 5 : printf("pentek"); break ;
         case 6 : printf("szombat"); break ;
         case 7 : printf("vasarnap"); break ;
         case 0 : printf("vasarnap"); break;
         }
         printf("\n");
         
  system("PAUSE");	
  return 0;
}
