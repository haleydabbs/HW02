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

    //Initializing and drawing the stars
    s1y = 0;
    s1x = starGenerator();
    s1Oldy = s1y;
    s1Oldx = s1x;
    s1Vel = starSpeedGenerator();
    s2y = 0;
    s2x = starGenerator();
    s2Oldy = s2y;
    s2Oldx = s2x;
    s2Vel = starSpeedGenerator();
    drawRect(s1y, s1x, STARDIMS, STARDIMS, STARCOLOR);
    drawRect(s2y, s2x, STARDIMS, STARDIMS, STARCOLOR);

    //Initializing star catcher
    cVel = 2;
    cWidth = 20;
    cHeight = 3;
    cy = 120;
    cx = ((SCREENWIDTH/2) - (cWidth/2));
    drawRect(cy, cx, cHeight, cWidth, CATCHERCOLOR);
}

//Update game logic
void update() {

    //Update location of starcatcher
    if (BUTTON_HELD(BUTTON_LEFT)) {
        drawRect(cy, cx, cHeight, cWidth, SUNSET1);
        cx -= (cVel);
        drawRect(cy, cx, cHeight, cWidth, CATCHERCOLOR);
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        drawRect(cy, cx, cHeight, cWidth, SUNSET1);
        cx += (cVel);
        drawRect(cy, cx, cHeight, cWidth, CATCHERCOLOR);
    }

    //if stars go off edge of screen, reset
    if ((s1y >= SCREENHEIGHT) || (collision(s1x, s1y, STARDIMS, STARDIMS, cx, cy, cWidth, cHeight))) {
        starReset(1);
    } else if ((s2y >= SCREENHEIGHT) || (collision(s2x, s2y, STARDIMS, STARDIMS, cx, cy, cWidth, cHeight))) {
        starReset(2);
    }

    //Update stars' position
    s1y += s1Vel;
    s2y += s2Vel;
}

//Draw objects
void draw() { 

    //Update star position and reset to random spot at row 0
    //if the star goes past the bottom
    starDraw();

    starCatcherDraw();

}

//StarGenerator generates random position for star to draw from
int starGenerator() {
    int num;
    num = rand() % 236;
    return num;
}

//Generates a random speed for star to fall at
int starSpeedGenerator() {
    int num;
    num = (rand() % 4) + 1;
    return num;
}

//Reset the stars to a random position at top of screen
void starReset(int starNum) {

    if (starNum == 1) {
       
        //Reset y to 0 and pick a new x starting point & velocity
        s1y = 0;
        s1x = starGenerator();
        s1Vel = starSpeedGenerator();

    } else if (starNum == 2) {
       
        //Reset y to 0 and pick a new x starting point & velocity
        s2y = 0;
        s2x = starGenerator();
        s2Vel = starSpeedGenerator();

    }

}

void starDraw() {

    //Erase previous stars
    drawRect(s1Oldy, s1Oldx, STARDIMS, STARDIMS, SUNSET1);
    drawRect(s2Oldy, s2Oldx, STARDIMS, STARDIMS, SUNSET1);

    //Draw new stars
    drawRect(s1y, s1x, STARDIMS, STARDIMS, STARCOLOR);
    drawRect(s2y, s2x, STARDIMS, STARDIMS, STARCOLOR);

    //Update old variables
    s1Oldy = s1y;
    s1Oldx = s1x;
    s2Oldy = s2y;
    s2Oldx = s2x;

}

void starCatcherDraw() {
    drawRect(cy, cx, cHeight, cWidth, CATCHERCOLOR);
    cOldy = cy;
    cOldx = cx;
}