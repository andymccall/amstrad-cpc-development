
/* 
 * Title:           03-setmode - C Example
 *
 * Description:     A program that sets the video mode
 * Author:          Andy McCall, mailme@andymccall.co.uk
 * 
 * Created:		    2024-08-13 @ 18:59
 * Last Updated:	2024-08-13 @ 18:59
 * 
 * Modinfo:
 * 
 */


#include <cpc.h>
#include <stdio.h>

int main(void) {

   int status;

  	cpc_ClrScr();	
   cpc_SetBorder(3);
   printf("Press any key to continue...\n");
   status = getchar();

   return 0;

}
