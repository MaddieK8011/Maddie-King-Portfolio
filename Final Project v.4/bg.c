#include "mode0.h"

//tilemaps
#include "titlescreen.h"
#include "instructscreen.h"
#include "pausescreen.h"
#include "gamescreen.h"
#include "losescreen.h"
#include "gamescreen2.h"
#include "level1bg.h"
#include "level1fg.h"
#include "overlay.h"

//handles drawing the backgrounds
void drawTitleScreen() {
    REG_BG1CNT = 0;
    DMANow(3, titlescreenPal, PALETTE, 256);
    DMANow(3, titlescreenTiles, &CHARBLOCK[3], titlescreenTilesLen / 2);
    DMANow(3, titlescreenMap, &SCREENBLOCK[31], 1024 * 4);
}

void drawInstructScreen() {
    DMANow(3, instructscreenPal, PALETTE, 256);
    DMANow(3, instructscreenTiles, &CHARBLOCK[3], instructscreenTilesLen / 2);
    DMANow(3, instructscreenMap, &SCREENBLOCK[31], 1024 * 4);
}

void drawPauseScreen() {
    REG_BG1CNT = 0;
    DMANow(3, pausescreenPal, PALETTE, 256);
    DMANow(3, pausescreenTiles, &CHARBLOCK[3], pausescreenTilesLen / 2);
    DMANow(3, pausescreenMap, &SCREENBLOCK[31], 1024 * 4);
}

void drawLevel1() {
    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;;
    //bg
    DMANow(3, level1bgPal, PALETTE, 256);
    DMANow(3, level1bgTiles, &CHARBLOCK[1], level1bgTilesLen / 2);
    DMANow(3, level1bgMap, &SCREENBLOCK[29], 1024 * 4);
    //fg
    DMANow(3, level1fgPal, PALETTE, 256);
    DMANow(3, level1fgTiles, &CHARBLOCK[2], level1fgTilesLen / 2);
    DMANow(3, level1fgMap, &SCREENBLOCK[30], 1024 * 4);
    //overlay
    DMANow(3, overlayPal, PALETTE, 256);
    DMANow(3, overlayTiles, &CHARBLOCK[3], overlayTilesLen / 2);
    DMANow(3, overlayMap, &SCREENBLOCK[31], 1024 * 4);
}

void drawLoseScreen() {
    REG_BG1CNT = 0;
    DMANow(3, losescreenPal, PALETTE, 256);
    DMANow(3, losescreenTiles, &CHARBLOCK[3], losescreenTilesLen / 2);
    DMANow(3, losescreenMap, &SCREENBLOCK[31], 1024 * 4);
}