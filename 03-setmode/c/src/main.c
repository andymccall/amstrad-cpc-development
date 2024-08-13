
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

#define VIDEOMODE_160x200x16 0
#define VIDEOMODE_320x200x4  1
#define VIDEOMODE_640x200x2  2

#include <cpc.h>
#include <stdio.h>

int main(void) {

   int status;

   status = cpc_setmode(VIDEOMODE_160x200x16);
   printf("Screen set to Mode 0 - 160x200x16\n");
   printf("Press any key to continue...\n");
   status = getchar();

   status = cpc_setmode(VIDEOMODE_320x200x4);
   printf("Screen set to Mode 1 - 320x200x4\n");
   printf("Press any key to continue...\n");
   status = getchar();

   status = cpc_setmode(VIDEOMODE_640x200x2);
   printf("Screen set to Mode 2 - 640x200x2\n");
   printf("Press any key to continue...\n");
   status = getchar();

   return 0;

}
