# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 26 "myLib.h"
extern u16 *videoBuffer;
# 55 "myLib.h"
void setPixel(int row, int col, u16 color);
void drawRect(int row, int col, int height, int width, u16 color);
void drawBG();
void fillScreen(u16 color);
void waitForVBlank();
# 79 "myLib.h"
extern u16 oldButtons;
extern u16 buttons;
# 89 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "myLib.c" 2

u16 *videoBuffer = (u16 *)0x6000000;
int collided = 0;


void setPixel(int row, int col, unsigned short color)
{
    videoBuffer[((row)*(240)+(col))] = color;
}


void drawRect(int row, int col, int height, int width, unsigned short color)
{
    int r,c;
    for(r = 0; r < height; r++) {
        for(c = 0; c < width; c++) {
            setPixel(row+r, col+c, color);
        }
    }
}


void drawBG() {

    for (int i = 0; i < 38400; i++) {
        videoBuffer[i] = ((15) | (0)<<5 | (31)<<10);
    }

}


void waitForVBlank()
{
    while((*(volatile u16 *)0x4000006) > 160);
    while((*(volatile u16 *)0x4000006) < 160);
}


int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {
    if (((colA + widthA) > (colB)) && ((colB + widthB) > colA) && ((rowA + heightA) > (rowB)) && ((rowB + heightB > (rowA))) && (collided == 0)) {
        return 1;
        collided = 1;
    }
    return 0;
    collided = 0;
}
