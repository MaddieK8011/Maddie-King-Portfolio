#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "bg.h"
#include "game.h"
#include "spritesheet.h"
#include "sound.h"
//tracks
#include "gamemusic.h"
#include "startmusic.h"
#include "losemusic.h"
// Prototypes.
void initialize();

// State Prototypes.
void goToStart();
void start();
void goToInstruct();
void instruct();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States.
enum {
    START,
    INSTRUCT,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

//handling the "push any button" lose screen
int returnToStart;
int delaycounter;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
        case START:
            start();
            break;
        case INSTRUCT:
            instruct();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA.
void initialize() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    REG_BG3CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(29) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    buttons = BUTTONS;
    oldButtons = 0;
    returnToStart = 0;

    delaycounter = 0;

    setupSounds();
    setupInterrupts();

    goToStart();
    playSoundA(startmusic_data, startmusic_length, 1);
}

// Sets up the start state.
void goToStart() {
    state = START;
    drawTitleScreen();
}

// Runs every frame of the start state.
void start() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
        playSoundA(gamemusic_data, gamemusic_length, 1);

    }
    else if(BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstruct();
    }
}

// Sets up the game state.
void goToGame() {
    state = GAME;
    //bg
    drawLevel1();
    //spritesheet
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128);
}

// Runs every frame of the game state.
void game() {
    updateGame();
    drawGame();
    if(BUTTON_PRESSED(BUTTON_START)) {
        REG_BG2HOFF = 0;
        REG_BG2VOFF = 0;
        REG_BG1HOFF = 0;
        REG_BG1VOFF = 0;
        pauseSound();
        goToPause();
    }
    if(islost) {
        REG_BG2HOFF = 0;
        REG_BG2VOFF = 0;
        REG_BG1HOFF = 0;
        REG_BG1VOFF = 0;
        stopSound();
        goToLose();
    }
}

// Sets up the instruction state.
void goToInstruct() {
    state = INSTRUCT;
    drawInstructScreen();
}

// Runs every frame of the instruction state.
void instruct() {
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
    if(BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
        playSoundA(gamemusic_data, gamemusic_length, 1);
    }
}

// Sets up the pause state.
void goToPause() {
    state = PAUSE;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    drawPauseScreen();
}

// Runs every frame of the pause state.
void pause() {
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
        playSoundA(startmusic_data, startmusic_length, 1);

    }
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        unpauseSound();
    }
}

// Sets up the win state.
void goToWin() {}

// Runs every frame of the win state.
void win() {}

// Sets up the lose state.
void goToLose() {
    state = LOSE;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    drawLoseScreen();
    playSoundA(losemusic_data, losemusic_length, 1);
}

// Runs every frame of the lose state.
void lose() {
    if(returnToStart == 1) {
        returnToStart = 0;
        goToStart();
        playSoundA(startmusic_data, startmusic_length, 1);
    }
}