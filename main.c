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

    // Setting up Mode 3
    REG_DISPCTL = MODE3 | BG2_ENABLE;

    // Initializing Buttons
    buttons = BUTTONS;
    oldButtons = 0;

    counter = 0;

    // Drawing BG
    drawBG(SUNSET1);

    // Initializing and drawing the stars
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

    // Initializing star catcher
    cVel = 2;
    cWidth = 20;
    cHeight = 3;
    cy = 120;
    cx = ((SCREENWIDTH/2) - (cWidth/2));
    drawRect(cy, cx, cHeight, cWidth, CATCHERCOLOR);

    // Initializing points box
    pBoxX = 194;
    pBoxY = 147;
    pBoxWidth = 43;
    pBoxHeight = 10;
    drawRect(pBoxY, pBoxX, pBoxHeight, pBoxWidth, PBOXCOLOR);
}

// Function to update game logic
void update() {

    // If the game is still going
    // AKA, 7 stars have not yet been caught
    if (counter < 7) {
        
        // Update location of starcatcher
        // According to button input

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
    }

    // If stars go off edge of screen or hit points area, reset
    if ((s1y >= SCREENHEIGHT) || (collision(s1x, s1y, STARDIMS, STARDIMS, pBoxX - STARDIMS, pBoxY - STARDIMS, pBoxWidth, pBoxHeight))) {
        starReset(1, 0);
    } else if ((s2y >= SCREENHEIGHT) || (collision(s2x, s2y, STARDIMS, STARDIMS, pBoxX - STARDIMS, pBoxY - STARDIMS, pBoxWidth, pBoxHeight))) {
        starReset(2, 0);
    }

    // If stars collide, reset and add point
    if (collision(s1x, s1y, STARDIMS, STARDIMS, cx, cy, cWidth, cHeight)) {
        starReset(1, 1);
    } else if (collision(s2x, s2y, STARDIMS, STARDIMS, cx, cy, cWidth, cHeight)) {
        starReset(2, 1);
    }

    // Update stars' positions
    s1y += s1Vel;
    s2y += s2Vel;
}

//Function to draw objects
void draw() { 

    if (counter < 7) {

        //Draw stars
        starDraw();

        //Draw star catcher
        starCatcherDraw();

        //Draw points
        pointsDraw();

    } else {

        //Draw end state
        endGame();

    }

}

// Function to generate random top left corner for stars to draw at
int starGenerator() {
    int num;
    num = rand() % 236;
    return num;
}

// Function to generate a random speed for stars to fall at
int starSpeedGenerator() {
    int num;
    num = (rand() % 4) + 1;
    return num;
}

// Function to reset the stars to a random position at top of screen
void starReset(int starNum, int collideNum) {

    // See which star needs to be reset
    if (starNum == 1) {
       
        s1y = 0;
        s1x = starGenerator();
        s1Vel = starSpeedGenerator();

    } else if (starNum == 2) {
       
        s2y = 0;
        s2x = starGenerator();
        s2Vel = starSpeedGenerator();

    }

    // If reset was due to collision
    // update points counter
    if (collideNum) {
        counter++;
    }

}

//Function to draw stars
void starDraw() {

    // Erase previous stars
    drawRect(s1Oldy, s1Oldx, STARDIMS, STARDIMS, SUNSET1);
    drawRect(s2Oldy, s2Oldx, STARDIMS, STARDIMS, SUNSET1);

    // Draw new stars
    drawRect(s1y, s1x, STARDIMS, STARDIMS, STARCOLOR);
    drawRect(s2y, s2x, STARDIMS, STARDIMS, STARCOLOR);

    // Update old variables
    s1Oldy = s1y;
    s1Oldx = s1x;
    s2Oldy = s2y;
    s2Oldx = s2x;

}

// Function to draw the star catcher
void starCatcherDraw() {
    drawRect(cy, cx, cHeight, cWidth, CATCHERCOLOR);
    cOldy = cy;
    cOldx = cx;
}

// Function to draw the points in the point box
void pointsDraw() {
    if ((counter != 0) && (counter < 8)) {
        for (int i = 0; i < counter; i++) {
            drawRect(pBoxY + POINTSDIMS, pBoxX + (counter * 5), POINTSDIMS, POINTSDIMS, POINTSCOLOR);
        }
    }
}

// Function to draw end screen
void endGame() {
    drawBG(BLACK);
}