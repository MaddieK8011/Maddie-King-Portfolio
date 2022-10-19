#include "mode0.h"
#include "spritesheet.h"
#include "game.h"
#include "sound.h"
//sfx
#include "bulletfire.h"
#include "hitsound.h"
#include "powerupsound.h"

//constants
#define SCREENHEIGHT 160
#define SCREENWIDTH 240
#define FISHCOUNT 10
#define SHARKCOUNT 2
#define STARCOUNT 2 //abrev. for starfish
#define EELCOUNT 2
#define PBULLETCOUNT 10 //player bullets
#define EBULLETCOUNT 20 //enemy bullets

//timers
int pbullettimer;
int fishtimer;
int fishbullettimer;
int sharktimer;
int sharkbullettimer;
int startimer;
int starbullettimer;
int eeltimer;
int eelbullettimer;
int poweruptimer;
int starpowertimer;
int sharkpowertimer;
int shieldpowertimer;
int rainbowtimer;

//sprites
SPRITE sub;
SPRITE fish[FISHCOUNT];
SPRITE shark[SHARKCOUNT];
SPRITE star[STARCOUNT];
SPRITE eel[EELCOUNT];
SPRITE pbullet[PBULLETCOUNT];
SPRITE ebullet[EBULLETCOUNT];
SPRITE shpowerup; //shark powerup
SPRITE stpowerup; //star powerup
SPRITE shieldpowerup;

//anistate
enum{
    INACTIVE,
    ACTIVE
};

//shadowOam
OBJ_ATTR shadowOAM[128];

//score
int score;

//lives
int lives;

//cheat
int isSharkMode;

//hit sfx (I had problems with putting this in the hit method)
int gotHit;

//initialization
void initGame() {
    //init methods
    initSub();
    initFish();
    initShark();
    initStar();
    initEel();
    initPBullet();
    initEBullet();
    initShPowerup();
    initStPowerup();
    initShieldPowerup();

    //variables
    islost = 0;
    vOff1 = 0;
    hOff1 = 0;

    score = 0;
    lives = 3;
    gotHit = 0;

    //timers
    pbullettimer = 50;
    fishtimer = 120;
    fishbullettimer = 50;
    sharktimer = 0;
    sharkbullettimer = 20;
    startimer = 0;
    starbullettimer = 0;
    eeltimer = 620;
    eelbullettimer = 0;
    poweruptimer = 450;
    starpowertimer = 0;
    sharkpowertimer = 0;
    shieldpowertimer = 0;
    rainbowtimer = 0;

    isSharkMode = 0;
}

void initSub() {
    sub.worldRow = 60;
    sub.worldCol = 60;
    sub.width = 28;
    sub.height = 14;
    sub.cdel = 1;
    sub.rdel = 1;
}

void initFish() {
    for(int i = 0; i < FISHCOUNT; i++) {
        fish[i].worldRow = -1;
        fish[i].worldCol = -1;
        fish[i].width = 14;
        fish[i].height = 10;
        fish[i].cdel = 1;
        fish[i].rdel = 0;
        fish[i].aniState = INACTIVE;
        fish[i].curFrame = 0;
        fish[i].numFrames = 2;
        fish[i].aniCounter = 0;
    }
}

void initShark() {
    for(int i = 0; i < SHARKCOUNT; i++) {
        shark[i].worldRow = -1;
        shark[i].worldCol = -1;
        shark[i].width = 28;
        shark[i].height = 16;
        shark[i].cdel = 1;
        shark[i].rdel = 0;
        shark[i].aniState = INACTIVE;
        shark[i].curFrame = 0;
        shark[i].numFrames = 2;
        shark[i].aniCounter = 0;
    }
}

void initStar() {
    for(int i = 0; i < STARCOUNT; i++) {
        star[i].worldRow = -1;
        star[i].worldCol = -1;
        star[i].width = 16;
        star[i].height = 16;
        star[i].cdel = 1;
        star[i].rdel = 0;
        star[i].aniState = INACTIVE;
        star[i].curFrame = 0;
        star[i].numFrames = 4;
        star[i].aniCounter = 0;
    }
}

void initEel() {
    for(int i = 0; i < EELCOUNT; i++) {
        eel[i].worldRow = -1;
        eel[i].worldCol = -1;
        eel[i].width = 28;
        eel[i].height = 16;
        eel[i].cdel = 1;
        eel[i].rdel = 1;
        eel[i].aniState = INACTIVE;
        eel[i].curFrame = 0;
        eel[i].numFrames = 4;
        eel[i].aniCounter = 0;
    }
}

void initPBullet() {
    for(int i = 0; i < PBULLETCOUNT; i++) {
        pbullet[i].worldRow = -1;
        pbullet[i].worldCol = -1;
        pbullet[i].width = 2;
        pbullet[i].height = 2;
        pbullet[i].cdel = 0;
        pbullet[i].rdel = 0;
        pbullet[i].aniState = INACTIVE;
    }
}

void initEBullet() {
    for(int i = 0; i < EBULLETCOUNT; i++) {
        ebullet[i].worldRow = -1;
        ebullet[i].worldCol = -1;
        ebullet[i].width = 2;
        ebullet[i].height = 2;
        ebullet[i].cdel = 0;
        ebullet[i].rdel = 0; 
        ebullet[i].aniState = INACTIVE;
    }
}

void initShPowerup() {
    shpowerup.worldRow = -1;
    shpowerup.worldCol = -1;
    shpowerup.width = 16;
    shpowerup.height = 16;
    shpowerup.cdel = 1;
    shpowerup.rdel = 0;
    shpowerup.aniState = INACTIVE;
}

void initStPowerup() {
    stpowerup.worldRow = -1;
    stpowerup.worldCol = -1;
    stpowerup.width = 16;
    stpowerup.height = 16;
    stpowerup.cdel = 1;
    stpowerup.rdel = 0;
    stpowerup.aniState = INACTIVE;
}

void initShieldPowerup() {
    shieldpowerup.worldRow = -1;
    shieldpowerup.worldCol = -1;
    shieldpowerup.width = 16;
    shieldpowerup.height = 16;
    shieldpowerup.cdel = 1;
    shieldpowerup.rdel = 0;

}

//update
void updateGame() {
    //update methods
    updateSub();
    updatePBullets();
    updateFish();
    updateShark();
    updateStar();
    updateEel();
    updateEBullets();
    updateShPowerup();
    updateStPowerup();
    updateShieldPowerup();

    //timers
    pbullettimer++;
    fishtimer++;
    fishbullettimer++;
    sharktimer++;
    sharkbullettimer++;
    startimer++;
    starbullettimer++;
    eeltimer++;
    eelbullettimer++;
    poweruptimer++;
    sharkpowertimer--;
    starpowertimer--;
    shieldpowertimer--;
    rainbowtimer++;

    //scroll
    hOff2++;
    hOff1 = hOff1 + 2;

    //spawners
    spawnFish();
    if(!isSharkMode) {
    spawnEBullet();
    spawnShark();
    spawnPowerup();
    }
    spawnStar();
    spawnEel();

    //check for being out of lives
    if(lives <= 0) {
        islost = 1;
    }

    //Makes sure the sub always has spread shot in Shark mode
    if(isSharkMode) {
        sharkpowertimer = 100;
    }

    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        isSharkMode = 1;
    }

    //Play hit sound if player got hit
    if(gotHit) {
        playSoundB(hitsound_data, hitsound_length, 0);
        gotHit = 0;
    }
}

void updateSub() {
    if(BUTTON_HELD(BUTTON_UP) && sub.worldRow > 16) {
        sub.worldRow -= sub.rdel;
    }
    if(BUTTON_HELD(BUTTON_DOWN) && sub.worldRow < SCREENHEIGHT - sub.height - 16) {
        sub.worldRow += sub.rdel;
    }
    if(BUTTON_HELD(BUTTON_LEFT) && sub.worldCol > 0) {
        sub.worldCol -= sub.cdel;
    }
    if(BUTTON_HELD(BUTTON_RIGHT) && sub.worldCol < SCREENWIDTH - sub.width) {
        sub.worldCol += sub.cdel;
    }
    if(BUTTON_PRESSED(BUTTON_A)) {
        if(pbullettimer >= 20) {
            spawnPBullet();
            pbullettimer = 0;
        }
    }
    if(rainbowtimer % 10 == 0) {
        SPRITEPALETTE[6] += 1100;
    }
}

void updatePBullets() {
    for(int i = 0; i < PBULLETCOUNT; i++) {
        if(pbullet[i].aniState == ACTIVE) {
            if(pbullet[i].worldCol <= 2 || pbullet[i].worldCol >= SCREENWIDTH
                || pbullet[i].worldRow <= 16 || pbullet[i].worldRow >= SCREENHEIGHT - 16) {
                    pbullet[i].aniState = INACTIVE;
            }
            else {
                pbullet[i].worldCol += pbullet[i].cdel;
                pbullet[i].worldRow += pbullet[i].rdel;
            }
        }
    }
}

void updateFish() {
    for(int i = 0; i < FISHCOUNT; i++) {
        if(fish[i].aniState == ACTIVE) {
            if(fish[i].worldCol <= 0) {
                    fish[i].aniState = INACTIVE;
            }
            else {
                fish[i].worldCol += fish[i].cdel;
            }
            for(int j = 0; j < PBULLETCOUNT; j++) {
                if(pbullet[j].aniState == ACTIVE) {
                    if(collision(fish[i].worldCol - 1, fish[i].worldRow, fish[i].width, fish[i].height + 2, pbullet[j].worldCol, pbullet[j].worldRow - 1, pbullet[j].width, pbullet[j].height + 2)) {
                        fish[i].aniState = INACTIVE;
                        pbullet[j].aniState = INACTIVE;
                        score += 10;
                    }
                }
            }
            if(collision(fish[i].worldCol, fish[i].worldRow, fish[i].width, fish[i].height, sub.worldCol, sub.worldRow - 2, sub.width, sub.height - 2)) {
                hit();
            }
            //animation
            if(fish[i].aniCounter % 15 == 0) {
                fish[i].curFrame = fish[i].curFrame + 1;
                if(fish[i].curFrame >= fish[i].numFrames) {
                    fish[i].curFrame = 0;
                }
            }
            fish[i].aniCounter = fish[i].aniCounter + 1;
        }
    }

}

void updateShark() {
    for(int i = 0; i < SHARKCOUNT; i++) {
        if(shark[i].aniState == ACTIVE) {
            if(shark[i].worldCol <= 0) {
                shark[i].aniState = INACTIVE;
            }
            else {
                shark[i].worldCol += shark[i].cdel;
            }
            for(int j = 0; j < PBULLETCOUNT; j++) {
                if(pbullet[j].aniState == ACTIVE) {
                    if(collision(shark[i].worldCol - 1, shark[i].worldRow, shark[i].width, shark[i].height + 2, pbullet[j].worldCol, pbullet[j].worldRow - 1, pbullet[j].width, pbullet[j].height + 2)) {
                        shark[i].aniState = INACTIVE;
                        pbullet[j].aniState = INACTIVE;
                        score += 50;
                    }
                }
            }
            if(collision(shark[i].worldCol, shark[i].worldRow, shark[i].width, shark[i].height, sub.worldCol, sub.worldRow + 2, sub.width, sub.height - 2)) {
                hit();
            }
            //animation
            if(shark[i].aniCounter % 20 == 0) {
                shark[i].curFrame = shark[i].curFrame + 1;
                if(shark[i].curFrame >= shark[i].numFrames) {
                    shark[i].curFrame = 0;
                }
            }
            shark[i].aniCounter = shark[i].aniCounter + 1;
        }
    }
}

void updateStar() {
    for(int i = 0; i < STARCOUNT; i++) {
        if(star[i].aniState == ACTIVE) {
            if(star[i].worldCol <= 0) {
                star[i].aniState = INACTIVE;
            }
            else {
                star[i].worldCol += star[i].cdel;
            }
            for(int j = 0; j < PBULLETCOUNT; j++) {
                if(pbullet[j].aniState == ACTIVE) {
                    if(collision(star[i].worldCol - 1, star[i].worldRow, star[i].width, star[i].height + 2, pbullet[j].worldCol, pbullet[j].worldRow - 1, pbullet[j].width, pbullet[j].height + 2)) {
                        star[i].aniState = INACTIVE;
                        pbullet[j].aniState = INACTIVE;
                        score += 50;
                    }
                }
            }
            if(collision(star[i].worldCol, star[i].worldRow, star[i].width, star[i].height, sub.worldCol, sub.worldRow + 2, sub.width, sub.height - 2)) {
                hit();
            }
            //animation
            if(star[i].aniCounter % 15 == 0) {
                star[i].curFrame = star[i].curFrame + 1;
                if(star[i].curFrame >= star[i].numFrames) {
                    star[i].curFrame = 0;
                }
            }
            star[i].aniCounter = star[i].aniCounter + 1;
        }
    }
}

void updateEel() {
    for(int i = 0; i < EELCOUNT; i++) {
        if(eel[i].aniState == ACTIVE) {
            if(eel[i].worldCol <= 0) {
                eel[i].aniState = INACTIVE;
            }
            else {
                eel[i].worldCol += eel[i].cdel;
                if(eel[i].worldRow <= 16 || eel[i].worldRow >= SCREENHEIGHT - eel[i].height - 16 ) {
                    eel[i].rdel = eel[i].rdel * -1;
                }
                eel[i].worldRow += eel[i].rdel;
            }
            for(int j = 0; j < PBULLETCOUNT; j++) {
                if(pbullet[j].aniState == ACTIVE) {
                    if(collision(eel[i].worldCol - 1, eel[i].worldRow, eel[i].width, eel[i].height + 2, pbullet[j].worldCol, pbullet[j].worldRow - 1, pbullet[j].width, pbullet[j].height + 2)) {
                        eel[i].aniState = INACTIVE;
                        pbullet[j].aniState = INACTIVE;
                        score += 50;
                    }
                }
            }
            if(collision(eel[i].worldCol, eel[i].worldRow, eel[i].width, eel[i].height, sub.worldCol, sub.worldRow - 2, sub.width, sub.height - 2)) {
                hit();
            }
            //animation
            if(eel[i].aniCounter % 14 == 0) {
                eel[i].curFrame = eel[i].curFrame + 1;
                if(eel[i].curFrame >= eel[i].numFrames) {
                    eel[i].curFrame = 0;
                }
            }
            eel[i].aniCounter = eel[i].aniCounter + 1;
        }
    }

}

void updateEBullets() {
    for(int i = 0; i < EBULLETCOUNT; i++) {
        if(ebullet[i].aniState == ACTIVE) {
            if(ebullet[i].worldCol <= 2 || ebullet[i].worldCol >= SCREENWIDTH
                || ebullet[i].worldRow <= 16 || ebullet[i].worldRow >= SCREENHEIGHT - 16) {
                    ebullet[i].aniState = INACTIVE;
            }
            else {
                ebullet[i].worldCol += ebullet[i].cdel;
                ebullet[i].worldRow += ebullet[i].rdel;
            }
            if(collision(ebullet[i].worldCol, ebullet[i].worldRow, ebullet[i].width, ebullet[i].height, sub.worldCol, sub.worldRow + 2, sub.width, sub.height - 2)) {
                hit();
            }
        }
    }
}

void updateShPowerup() {
    if(shpowerup.aniState == ACTIVE) {
        if(shpowerup.worldCol <= 0) {
            shpowerup.aniState = INACTIVE;
        }
        else {
            shpowerup.worldCol += shpowerup.cdel;
        }
        if(collision(shpowerup.worldCol, shpowerup.worldRow, shpowerup.width, shpowerup.height, sub.worldCol, sub.worldRow, sub.width, sub.height)) {
            shpowerup.aniState = INACTIVE;
            sharkpowertimer = 500;
            playSoundB(powerupsound_data, powerupsound_length, 0);
        }
    }
}

void updateStPowerup() {
    if(stpowerup.aniState == ACTIVE) {
        if(stpowerup.worldCol <= 0) {
            stpowerup.aniState = INACTIVE;
        }
        else {
            stpowerup.worldCol += stpowerup.cdel;
        }
        if(collision(stpowerup.worldCol, stpowerup.worldRow, stpowerup.width, stpowerup.height, sub.worldCol, sub.worldRow, sub.width, sub.height)) {
            stpowerup.aniState = INACTIVE;
            starpowertimer = 500;
            playSoundB(powerupsound_data, powerupsound_length, 0);
        }
    }
}

void updateShieldPowerup() {
    if(shieldpowerup.aniState == ACTIVE) {
        if(shieldpowerup.worldCol <= 0) {
            shieldpowerup.aniState = INACTIVE;
        }
        else {
            shieldpowerup.worldCol += shieldpowerup.cdel;
        }
        if(collision(shieldpowerup.worldCol, shieldpowerup.worldRow, shieldpowerup.width, shieldpowerup.height, sub.worldCol, sub.worldRow, sub.width, sub.height)) {
            shieldpowerup.aniState = INACTIVE;
            shieldpowertimer = 500;
            playSoundB(powerupsound_data, powerupsound_length, 0);
        }
    }
}

//draw
void drawGame() {
    //draw methods
    drawSub();
    drawPBullets();
    drawFish();
    drawShark();
    drawStar();
    drawEel();
    drawEBullets();
    drawShPowerup();
    drawStPowerup();
    drawShieldPowerup();
    drawLives();
    drawScore();
    //copy to shadowOAM
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);   
    //bg offset
    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;
    //fg offset
    REG_BG3HOFF = hOff2;
    REG_BG3VOFF = vOff2;
}

void drawSub() {
    if(sub.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    }
    else {
        shadowOAM[0].attr0 = ATTR0_WIDE | sub.worldRow;
        shadowOAM[0].attr1 = ATTR1_MEDIUM | sub.worldCol;
        if(isSharkMode) {
            shadowOAM[0].attr2 = ATTR2_TILEID(8, 2);
        }
        else if(shieldpowertimer > 0) {
            shadowOAM[0].attr2 = ATTR2_TILEID(4, 2);
        }
        else {
            shadowOAM[0].attr2 = ATTR2_TILEID(0, 2);
        }
    }
}

void drawPBullets() {
    for(int i = 0; i < PBULLETCOUNT; i++) {
        if(pbullet[i].hide || pbullet[i].aniState == INACTIVE) {
            shadowOAM[i + 1].attr0 |= ATTR0_HIDE;
        }
        else if(pbullet[i].aniState == ACTIVE){
            shadowOAM[i + 1].attr0 = ATTR0_SQUARE | pbullet[i].worldRow;
            shadowOAM[i + 1].attr1 = ATTR1_TINY | pbullet[i].worldCol;
            shadowOAM[i + 1].attr2 = ATTR2_TILEID(0, 0);
        }
    }
}

void drawFish() {
    for(int i = 0; i < FISHCOUNT; i++) {
        int soi = PBULLETCOUNT + i + 1; //shadowOAM index
        if(fish[i].hide || fish[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= ATTR0_HIDE;
        }
        else if(fish[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = ATTR0_SQUARE | fish[i].worldRow;
            shadowOAM[soi].attr1 = ATTR1_SMALL | fish[i].worldCol;
            shadowOAM[soi].attr2 = ATTR2_TILEID(fish[i].curFrame * 2, 10);
        }
    }
}

void drawEBullets() {
    for(int i = 0; i < EBULLETCOUNT; i++) {
        int soi = FISHCOUNT + PBULLETCOUNT + i + 1;
        if(ebullet[i].hide || ebullet[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= ATTR0_HIDE;
        }
        else if(ebullet[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = ATTR0_SQUARE | ebullet[i].worldRow;
            shadowOAM[soi].attr1 = ATTR1_TINY | ebullet[i].worldCol;
            shadowOAM[soi].attr2 = ATTR2_TILEID(2, 0);
        }
    }
}

void drawShark() {
    for(int i = 0; i < SHARKCOUNT; i++) {
        int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + i + 1; //shadowOAM index
        if(shark[i].hide || shark[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= ATTR0_HIDE;
        }
        else if(shark[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = ATTR0_WIDE | shark[i].worldRow;
            shadowOAM[soi].attr1 = ATTR1_MEDIUM | shark[i].worldCol;
            shadowOAM[soi].attr2 = ATTR2_TILEID(shark[i].curFrame * 4,  4);
        }
    }
}

void drawStar() {
    for(int i = 0; i < STARCOUNT; i++) {
        int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + i + 1; //shadowOAM index
        if(star[i].hide || star[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= ATTR0_HIDE;
        }
        else if(star[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = ATTR0_SQUARE | star[i].worldRow;
            shadowOAM[soi].attr1 = ATTR1_SMALL | star[i].worldCol;
            shadowOAM[soi].attr2 = ATTR2_TILEID(star[i].curFrame * 2, 6);
        }
    }
}

void drawShPowerup() {
    int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + STARCOUNT + 1;
    if(shpowerup.hide || shpowerup.aniState == INACTIVE) {
        shadowOAM[soi].attr0 |= ATTR0_HIDE;
    }
    else {
        shadowOAM[soi].attr0 = ATTR0_SQUARE | shpowerup.worldRow;
        shadowOAM[soi].attr1 = ATTR1_SMALL | shpowerup.worldCol;
        shadowOAM[soi].attr2 = ATTR2_TILEID(0, 12);
    }
}

void drawStPowerup() {
    int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + STARCOUNT + 2;
    if(stpowerup.hide || stpowerup.aniState == INACTIVE) {
        shadowOAM[soi].attr0 |= ATTR0_HIDE;
    }
    else {
        shadowOAM[soi].attr0 = ATTR0_SQUARE | stpowerup.worldRow;
        shadowOAM[soi].attr1 = ATTR1_SMALL | stpowerup.worldCol;
        shadowOAM[soi].attr2 = ATTR2_TILEID(2, 12);
    }
}

void drawShieldPowerup() {
    int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + STARCOUNT + 3;
    if(shieldpowerup.hide || shieldpowerup.aniState == INACTIVE) {
        shadowOAM[soi].attr0 |= ATTR0_HIDE;
    }
    else {
        shadowOAM[soi].attr0 = ATTR0_SQUARE | shieldpowerup.worldRow;
        shadowOAM[soi].attr1 = ATTR1_SMALL | shieldpowerup.worldCol;
        shadowOAM[soi].attr2 = ATTR2_TILEID(4, 12);
    }
}

void drawEel() {
    int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + STARCOUNT + 4;
    for(int i = 0; i < EELCOUNT; i++) {
        if(eel[i].hide || eel[i].aniState == INACTIVE) {
            shadowOAM[soi + i].attr0 |= ATTR0_HIDE;
        }
        else {
            shadowOAM[soi + i].attr0 = ATTR0_WIDE | eel[i].worldRow;
            shadowOAM[soi + i].attr1 = ATTR1_MEDIUM | eel[i].worldCol;
            shadowOAM[soi + i].attr2 = ATTR2_TILEID(eel[i].curFrame * 4, 8);
        }
    }
}

void drawLives() {
    int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + STARCOUNT + EELCOUNT + 4;
    //life 1
    if(lives == 3) {
        shadowOAM[soi].attr0 = ATTR0_SQUARE | 2;
        shadowOAM[soi].attr1 = ATTR1_SMALL | 90;
        shadowOAM[soi].attr2 = ATTR2_TILEID(0, 14);
    }
    else {
        shadowOAM[soi].attr0 |= ATTR0_HIDE;

    }
    //life 2
    if(lives >= 2) {
        shadowOAM[soi + 1].attr0 = ATTR0_SQUARE | 2;
        shadowOAM[soi + 1].attr1 = ATTR1_SMALL | 70;
        shadowOAM[soi + 1].attr2 = ATTR2_TILEID(0, 14);
    }
    else {
        shadowOAM[soi + 1].attr0 |= ATTR0_HIDE;

    }

    shadowOAM[soi + 2].attr0 = ATTR0_SQUARE | 2;
    shadowOAM[soi + 2].attr1 = ATTR1_SMALL | 50;
    shadowOAM[soi + 2].attr2 = ATTR2_TILEID(0, 14);
}

void drawScore() {
    int soi = PBULLETCOUNT + FISHCOUNT + EBULLETCOUNT + SHARKCOUNT + STARCOUNT + EELCOUNT + 7;
    //digit 1
    int digit1 = score / 100;
    if(digit1 > 9) {
        digit1 = 9;
    }
    shadowOAM[soi].attr0 = ATTR0_SQUARE | 0;
    shadowOAM[soi].attr1 = ATTR1_SMALL | 160;
    shadowOAM[soi].attr2 = ATTR2_TILEID(3 + (digit1 * 2), 0);

    //digit 2
    int digit2 = (score % 100) / 10;
    if(digit2 > 9 || score > 999) {
        digit2 = 9;
    }
    shadowOAM[soi + 1].attr0 = ATTR0_SQUARE | 0;
    shadowOAM[soi + 1].attr1 = ATTR1_SMALL | 167;
    shadowOAM[soi + 1].attr2 = ATTR2_TILEID(3 + (digit2 * 2), 0);

    //digit 3
    int digit3 = ((score % 100) % 10);
    if(digit3 > 9 || score > 999) {
        digit3 = 9;
    }
    shadowOAM[soi + 2].attr0 = ATTR0_SQUARE | 0;
    shadowOAM[soi + 2].attr1 = ATTR1_SMALL | 174;
    shadowOAM[soi + 2].attr2 = ATTR2_TILEID(3 + (digit3 * 2), 0);
}

//spawning
void spawnPBullet() {
    if(sharkpowertimer > 0) {
        //bullet 1 
            int searching = 1;
            int j = 0;
            while(searching == 1 && j < PBULLETCOUNT) {
                if(pbullet[j].aniState == INACTIVE) {
                    pbullet[j].worldRow = sub.worldRow + (sub.height / 2);
                    pbullet[j].worldCol = sub.worldCol + sub.width;
                    pbullet[j].cdel = 1;
                    pbullet[j].rdel = -1;
                    pbullet[j].aniState = ACTIVE;
                    pbullet[j].hide = 0;
                    searching = 0;
                }
                j++;
            }

            //bullet 2
            searching = 1;
            j = 0;
            while(searching == 1 && j < PBULLETCOUNT) {
                if(pbullet[j].aniState == INACTIVE) {
                    pbullet[j].worldRow = sub.worldRow + (sub.height / 2);
                    pbullet[j].worldCol = sub.worldCol + sub.width;
                    pbullet[j].cdel = 2;
                    pbullet[j].rdel = 0;
                    pbullet[j].aniState = ACTIVE;
                    pbullet[j].hide = 0;
                    searching = 0;
                }
                j++;
            }

            //bullet 3
            searching = 1;
            j = 0;
            while(searching == 1 && j < PBULLETCOUNT) {
                if(pbullet[j].aniState == INACTIVE) {
                    pbullet[j].worldRow = sub.worldRow + (sub.height / 2);
                    pbullet[j].worldCol = sub.worldCol + sub.width;
                    pbullet[j].cdel = 1;
                    pbullet[j].rdel = 1;
                    pbullet[j].aniState = ACTIVE;
                    pbullet[j].hide = 0;
                    searching = 0;
                }
            j++;
            }
        }
    else if(starpowertimer > 0) {
        //bullet 1 
        int searching = 1;
        int j = 0;
        while(searching == 1 && j < PBULLETCOUNT) {
            if(pbullet[j].aniState == INACTIVE) {
                pbullet[j].worldRow = sub.worldRow + (sub.height / 2);
                pbullet[j].worldCol = sub.worldCol + sub.width;
                pbullet[j].cdel = 2;
                pbullet[j].rdel = 0;
                pbullet[j].aniState = ACTIVE;
                pbullet[j].hide = 0;
                searching = 0;
            }
            j++;
        }

        //bullet 2
        searching = 1;
        j = 0;
        while(searching == 1 && j < PBULLETCOUNT) {
            if(pbullet[j].aniState == INACTIVE) {
                pbullet[j].worldRow = sub.worldRow;
                pbullet[j].worldCol = sub.worldCol + (sub.width / 2);
                pbullet[j].cdel = 0;
                pbullet[j].rdel = -2;
                pbullet[j].aniState = ACTIVE;
                pbullet[j].hide = 0;
                searching = 0;
            }
            j++;
        }

        //bullet 3
        searching = 1;
        j = 0;
        while(searching == 1 && j < PBULLETCOUNT) {
            if(pbullet[j].aniState == INACTIVE) {
                pbullet[j].worldRow = sub.worldRow + sub.height;
                pbullet[j].worldCol = sub.worldCol + (sub.width / 2);
                pbullet[j].cdel = 0;
                pbullet[j].rdel = 2;
                pbullet[j].aniState = ACTIVE;
                pbullet[j].hide = 0;
                searching = 0;
            }
            j++;
        }

        //bullet 4
        searching = 1;
        j = 0;
        while(searching == 1 && j < PBULLETCOUNT) {
            if(pbullet[j].aniState == INACTIVE) {
                pbullet[j].worldRow = sub.worldRow + (sub.height / 2);
                pbullet[j].worldCol = sub.worldCol;
                pbullet[j].cdel = -2;
                pbullet[j].rdel = 0;
                pbullet[j].aniState = ACTIVE;
                pbullet[j].hide = 0;
                searching = 0;
            }
            j++;
        }

    }
    else {
        int searching = 1;
        int i = 0;
        if(pbullettimer >= 20) {
            while(searching == 1 && i < PBULLETCOUNT) {
                if(pbullet[i].aniState == INACTIVE) {
                    pbullet[i].worldRow = sub.worldRow + (sub.height / 2);
                    pbullet[i].worldCol = sub.worldCol + sub.width;
                    pbullet[i].cdel = 2;
                    pbullet[i].rdel = 0;
                    pbullet[i].aniState = ACTIVE;
                    pbullet[i].hide = 0;
                    pbullettimer = 0;
                    searching = 0;
                }
                i++;
            }
        }
    }
    playSoundB(bulletfire_data, bulletfire_length, 0);
}

void spawnEBullet() {
    //fish bullets - straight line
    if(fishbullettimer >= 100) {
        for(int i = 0; i < FISHCOUNT; i++) {
            int searching = 1;
            int j = 0;
            if(fish[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = fish[i].worldRow + (fish[i].height / 2);
                    ebullet[j].worldCol = fish[i].worldCol;
                    ebullet[j].cdel = -2;
                    ebullet[j].rdel = 0;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    fishbullettimer = 0;
                    searching = 0;
                }
                j++;
                }
            }
        }
    }

    //shark bullets - fan out
    if(sharkbullettimer >= 100) {
        for(int i = 0; i < SHARKCOUNT; i++) {
            //bullet 1 
            int searching = 1;
            int j = 0;
            if(shark[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = shark[i].worldRow + (shark[i].height / 2);
                    ebullet[j].worldCol = shark[i].worldCol;
                    ebullet[j].cdel = -1;
                    ebullet[j].rdel = -1;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }

            //bullet 2
            searching = 1;
            j = 0;
            if(shark[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = shark[i].worldRow + (shark[i].height / 2);
                    ebullet[j].worldCol = shark[i].worldCol;
                    ebullet[j].cdel = -2;
                    ebullet[j].rdel = 0;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }

            //bullet 3
            searching = 1;
            j = 0;
            if(shark[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = shark[i].worldRow + (shark[i].height / 2);
                    ebullet[j].worldCol = shark[i].worldCol;
                    ebullet[j].cdel = -1;
                    ebullet[j].rdel = 1;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }
            sharkbullettimer = 0;
        }
    }

    //star bullets - star pattern
    if(starbullettimer >= 100) {
        for(int i = 0; i < STARCOUNT; i++) {
            //bullet 1 
            int searching = 1;
            int j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = star[i].worldRow;
                    ebullet[j].worldCol = star[i].worldCol + (star[i].width / 2);
                    ebullet[j].cdel = 0;
                    ebullet[j].rdel = -2;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }

            //bullet 2
            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = star[i].worldRow;
                    ebullet[j].worldCol = star[i].worldCol;
                    ebullet[j].cdel = -1;
                    ebullet[j].rdel = -1;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }

            //bullet 3
            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = star[i].worldRow + star[i].height;
                    ebullet[j].worldCol = star[i].worldCol;
                    ebullet[j].cdel = -1;
                    ebullet[j].rdel = 1;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }

            //bullet 4
            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = star[i].worldRow + star[i].height - 1;
                    ebullet[j].worldCol = star[i].worldCol + star[i].width;
                    ebullet[j].cdel = 1;
                    ebullet[j].rdel = 1;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }

            //bullet 5
            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = star[i].worldRow;
                    ebullet[j].worldCol = star[i].worldCol + star[i].width - 1;
                    ebullet[j].cdel = 1;
                    ebullet[j].rdel = -1;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    searching = 0;
                }
                j++;
                }
            }
            starbullettimer = 0;
        }
    }

    //eel bullets - straight but quicker
    if(eelbullettimer >= 50) {
        for(int i = 0; i < EELCOUNT; i++) {
            int searching = 1;
            int j = 0;
            if(eel[i].aniState == ACTIVE) {
                while(searching == 1 && j < EBULLETCOUNT) {
                if(ebullet[j].aniState == INACTIVE) {
                    ebullet[j].worldRow = eel[i].worldRow + (fish[i].height / 2);
                    ebullet[j].worldCol = eel[i].worldCol;
                    ebullet[j].cdel = -2;
                    ebullet[j].rdel = 0;
                    ebullet[j].aniState = ACTIVE;
                    ebullet[j].hide = 0;
                    eelbullettimer = 0;
                    searching = 0;
                }
                j++;
                }
            }
        }
    }
}

void spawnFish() {
    int searching = 1;
    int i = 0;
    if(fishtimer >= 123) {
        while(searching == 1 && i < FISHCOUNT) {
            if(fish[i].aniState == INACTIVE) {
                fish[i].worldRow = rand() % 120 + 16;
                fish[i].worldCol = SCREENWIDTH - fish[i].width;
                fish[i].cdel = -1;
                fish[i].rdel = 0;
                fish[i].aniState = ACTIVE;
                fish[i].hide = 0;
                fishtimer = 0;
                searching = 0;
            }
            i++;
        }
    }
}

void spawnShark() {
    int searching = 1;
    int i = 0;
    if(sharktimer >= 550) {
        while(searching == 1 && i < SHARKCOUNT) {
            if(shark[i].aniState == INACTIVE) {
                shark[i].worldRow = rand() % 120 + 16;
                shark[i].worldCol = SCREENWIDTH - shark[i].width;
                shark[i].cdel = -1;
                shark[i].rdel = 0;
                shark[i].aniState = ACTIVE;
                shark[i].hide = 0;
                sharktimer = 0;
                searching = 0;
            }
            i++;
        }
    }
}

void spawnStar() {
    int searching = 1;
    int i = 0;
    if(startimer >= 700) {
        while(searching == 1 && i < STARCOUNT) {
            if(star[i].aniState == INACTIVE) {
                star[i].worldRow = rand() % 120 + 16;
                star[i].worldCol = SCREENWIDTH - star[i].width;
                star[i].cdel = -1;
                star[i].rdel = 0;
                star[i].aniState = ACTIVE;
                star[i].hide = 0;
                startimer = 0;
                searching = 0;
            }
            i++;
        }
    }
}

void spawnEel() {
    int searching = 1;
    int i = 0;
    if(eeltimer >= 630) {
        while(searching == 1 && i < EELCOUNT) {
            if(eel[i].aniState == INACTIVE) {
                eel[i].worldRow = rand() % 100 + 20;
                eel[i].worldCol = SCREENWIDTH - eel[i].width;
                eel[i].cdel = -1;
                eel[i].rdel = 1;
                eel[i].aniState = ACTIVE;
                eel[i].hide = 0;
                eeltimer = 0;
                searching = 0;
            }
            i++;
        }
    }
}

void spawnPowerup() {
    if(poweruptimer >= 1000) {
        int type = rand() % 3;
        if(type == 1 && shpowerup.aniState == INACTIVE) {
            shpowerup.worldRow = rand() % 120 + 16;
            shpowerup.worldCol = SCREENWIDTH - shpowerup.width;
            shpowerup.cdel = -1;
            shpowerup.rdel = 0;
            shpowerup.aniState = ACTIVE;
            shpowerup.hide = 0;
        }
        else if(type == 2 && stpowerup.aniState == INACTIVE) {
            stpowerup.worldRow = rand() % 120 + 16;
            stpowerup.worldCol = SCREENWIDTH - shpowerup.width;
            stpowerup.cdel = -1;
            stpowerup.rdel = 0;
            stpowerup.aniState = ACTIVE;
            stpowerup.hide = 0;
        }
        else if(shieldpowerup.aniState == INACTIVE) {
            shieldpowerup.worldRow = rand() % 120 + 16;
            shieldpowerup.worldCol = SCREENWIDTH - shpowerup.width;
            shieldpowerup.cdel = -1;
            shieldpowerup.rdel = 0;
            shieldpowerup.aniState = ACTIVE;
            shieldpowerup.hide = 0;
        }
        poweruptimer = 0;
    }
}

//handles when the player gets hit
void hit() {
    if(shieldpowertimer <= 0 && !isSharkMode && gotHit != 1) {
        lives--;
        shieldpowertimer = 200;
        gotHit = 1;
    }
}