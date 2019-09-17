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
void drawSunset(u16, u16, u16, u16);
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

void drawRect(int row, int col, int width, int height, unsigned short color)
{
    int r,c;
    for(r = 0; r < height; r++) {
        for(c = 0; c < width; c++) {
            setPixel(row+r, col+c, color);
        }
    }
}

void drawSunset(u16 colorA, u16 colorB, u16 colorC, u16 colorD) {

    int x = 0;
    int y = 0;

    for (int i = 0; i < 38400; i++) {
        if ((i % 240 == 0) & (i > 239)) {
            y++;
        }
        if (y < 40) {
            setPixel(y, x + (i % 240), colorA);
        }
        else if ((y >= 40) && (y < 80)) {
            setPixel(y, x + (i % 240), colorB);
        }
        else if ((y >= 80) && (y < 120)) {
            setPixel(y, x + (i % 240), colorC);
        }
        else if (y >= 120) {
            setPixel(y, x + (i % 240), colorD);
        }
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
