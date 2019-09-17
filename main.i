# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "main.h" 1

void initialize();
void update();
void draw();


typedef unsigned short u16;



u16 buttons;
u16 oldButtons;

u16 bgColor;
# 3 "main.c" 2

int main() {

    initialize();

    while(1) {
        update();
        waitForVBlank();
        draw();
    }

}


void initialize() {

    (*(u16 *)0x4000000) = 3 | (1<<10);

    buttons = (*(volatile u16 *)0x04000130);
    oldButtons = 0;

    drawSunset(((15) | (0)<<5 | (31)<<10),((20) | (3)<<5 | (31)<<10),((23) | (6)<<5 | (31)<<10),((25) | (9)<<5 | (31)<<10));

}


void update() {

}


void draw() {

}
