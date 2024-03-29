#include "myLib.h"

u16 *videoBuffer = (u16 *)0x6000000;
int collided = 0;

//Function to set a single pixel
void setPixel(int row, int col, unsigned short color)
{
    videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

//Function to draw rectangles
void drawRect(int row, int col, int height, int width, unsigned short color)
{
    int r,c;
    for(r = 0; r < height; r++) {
        for(c = 0; c < width; c++) {
            setPixel(row+r, col+c, color);
        }
    }
}

//Drawing background for the game
void drawBG(u16 color) {

    for (int i = 0; i < SCREENSIZE; i++) {
        videoBuffer[i] = color;
    }

}

//Function to delay for animation purposes
void waitForVBlank()
{
    while(SCANLINECOUNTER > 160);
    while(SCANLINECOUNTER < 160);
}

//Function to detect collision
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {
    if (((colA + widthA) > (colB)) && ((colB + widthB) > colA) && ((rowA + heightA) > (rowB)) && ((rowB + heightB > (rowA))) && (collided == 0)) {
        return 1;
        collided = 1;
    }
    return 0;
    collided = 0;
}

