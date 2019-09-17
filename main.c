#include "myLib.h"
#include "main.h"
#include <stdio.h> 
#include <stdlib.h> 
#include <time.h> 

int main() {

    srand(time(0));
    initialize();

    while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;

        update();
        waitForVBlank();
        draw();
    }

}

//Display setup
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    buttons = BUTTONS;
    oldButtons = 0;

    //Drawing BG
    drawSunset();

    //Drawing Stars
    starCounter = 0;

    s1y = 0;
    // s2y = 0;
    // s3y = 0;
    s1x = starGenerator();
    s1Oldy = s1y;
    s1Oldx = s1x;
    // s2x = starGenerator();
    // s3x = starGenerator();
    s1Vel = 1;
    // s2Vel = 2;
    // s3Vel = 3;

    drawRect(s1y, s1x, STARDIMS, STARDIMS, WHITE);
    // drawRect(s2y, s2x, STARDIMS, STARDIMS, WHITE);
    // drawRect(s3y, s3x, STARDIMS, STARDIMS, WHITE);

}

//Update game logic
void update() {
    s1y += s1Vel;
    // s2y += s2Vel;
    // s3y += s3Vel;
}

//Draw objects
void draw() { 
    //Erase previous stars
    drawRect(s1Oldy, s1Oldx, STARDIMS, STARDIMS, SUNSET1);
    //Draw new stars
    drawRect(s1y, s1x, STARDIMS, STARDIMS, WHITE);
    //Update old variables
    s1Oldy = s1y;
    s1Oldx = s1x;
}

//StarGenerator generates random position for star to draw from
int starGenerator() {
    int num;
    num = rand() % 236;
    return num;
}