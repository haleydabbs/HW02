#include "myLib.h"
#include "main.h"

int main() {

    initialize();

    while(1) {
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

    drawSunset(SUNSET1,SUNSET2,SUNSET3,SUNSET4);

}

//Update game logic
void update() {

}

//Draw objects
void draw() {

}