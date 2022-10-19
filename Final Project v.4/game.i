# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "mode0.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 62 "mode0.h"
extern volatile unsigned short *videoBuffer;
# 83 "mode0.h"
typedef struct {
    u16 tileimg[8192];
} charblock;


typedef struct {
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();


typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 152 "mode0.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} SPRITE;
# 190 "mode0.h"
extern unsigned short oldButtons;
extern unsigned short buttons;






typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 267 "mode0.h"
typedef void (*ihp)(void);
# 291 "mode0.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);


int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 3 "game.c" 2
# 1 "game.h" 1

void initGame();
void updateGame();
void drawGame();

int islost;
int vOff1;
int hOff1;
int vOff2;
int hOff2;
# 4 "game.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;

extern int returnToStart;

extern int state;
# 5 "game.c" 2

# 1 "bulletfire.h" 1


extern const unsigned int bulletfire_sampleRate;
extern const unsigned int bulletfire_length;
extern const signed char bulletfire_data[];
# 7 "game.c" 2
# 1 "hitsound.h" 1


extern const unsigned int hitsound_sampleRate;
extern const unsigned int hitsound_length;
extern const signed char hitsound_data[];
# 8 "game.c" 2
# 1 "powerupsound.h" 1


extern const unsigned int powerupsound_sampleRate;
extern const unsigned int powerupsound_length;
extern const signed char powerupsound_data[];
# 9 "game.c" 2
# 21 "game.c"
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


SPRITE sub;
SPRITE fish[10];
SPRITE shark[2];
SPRITE star[2];
SPRITE eel[2];
SPRITE pbullet[10];
SPRITE ebullet[20];
SPRITE shpowerup;
SPRITE stpowerup;
SPRITE shieldpowerup;


enum{
    INACTIVE,
    ACTIVE
};


OBJ_ATTR shadowOAM[128];


int score;


int lives;


int isSharkMode;


int gotHit;


void initGame() {

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


    islost = 0;
    vOff1 = 0;
    hOff1 = 0;

    score = 0;
    lives = 3;
    gotHit = 0;


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
    for(int i = 0; i < 10; i++) {
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
    for(int i = 0; i < 2; i++) {
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
    for(int i = 0; i < 2; i++) {
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
    for(int i = 0; i < 2; i++) {
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
    for(int i = 0; i < 10; i++) {
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
    for(int i = 0; i < 20; i++) {
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


void updateGame() {

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


    hOff2++;
    hOff1 = hOff1 + 2;


    spawnFish();
    if(!isSharkMode) {
    spawnEBullet();
    spawnShark();
    spawnPowerup();
    }
    spawnStar();
    spawnEel();


    if(lives <= 0) {
        islost = 1;
    }


    if(isSharkMode) {
        sharkpowertimer = 100;
    }

    if((!(~(oldButtons) & ((1 << 2))) && (~buttons & ((1 << 2))))) {
        isSharkMode = 1;
    }


    if(gotHit) {
        playSoundB(hitsound_data, hitsound_length, 0);
        gotHit = 0;
    }
}

void updateSub() {
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))) && sub.worldRow > 16) {
        sub.worldRow -= sub.rdel;
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 7))) && sub.worldRow < 160 - sub.height - 16) {
        sub.worldRow += sub.rdel;
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) && sub.worldCol > 0) {
        sub.worldCol -= sub.cdel;
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))) && sub.worldCol < 240 - sub.width) {
        sub.worldCol += sub.cdel;
    }
    if((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0))))) {
        if(pbullettimer >= 20) {
            spawnPBullet();
            pbullettimer = 0;
        }
    }
    if(rainbowtimer % 10 == 0) {
        ((unsigned short *)0x5000200)[6] += 1100;
    }
}

void updatePBullets() {
    for(int i = 0; i < 10; i++) {
        if(pbullet[i].aniState == ACTIVE) {
            if(pbullet[i].worldCol <= 2 || pbullet[i].worldCol >= 240
                || pbullet[i].worldRow <= 16 || pbullet[i].worldRow >= 160 - 16) {
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
    for(int i = 0; i < 10; i++) {
        if(fish[i].aniState == ACTIVE) {
            if(fish[i].worldCol <= 0) {
                    fish[i].aniState = INACTIVE;
            }
            else {
                fish[i].worldCol += fish[i].cdel;
            }
            for(int j = 0; j < 10; j++) {
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
    for(int i = 0; i < 2; i++) {
        if(shark[i].aniState == ACTIVE) {
            if(shark[i].worldCol <= 0) {
                shark[i].aniState = INACTIVE;
            }
            else {
                shark[i].worldCol += shark[i].cdel;
            }
            for(int j = 0; j < 10; j++) {
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
    for(int i = 0; i < 2; i++) {
        if(star[i].aniState == ACTIVE) {
            if(star[i].worldCol <= 0) {
                star[i].aniState = INACTIVE;
            }
            else {
                star[i].worldCol += star[i].cdel;
            }
            for(int j = 0; j < 10; j++) {
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
    for(int i = 0; i < 2; i++) {
        if(eel[i].aniState == ACTIVE) {
            if(eel[i].worldCol <= 0) {
                eel[i].aniState = INACTIVE;
            }
            else {
                eel[i].worldCol += eel[i].cdel;
                if(eel[i].worldRow <= 16 || eel[i].worldRow >= 160 - eel[i].height - 16 ) {
                    eel[i].rdel = eel[i].rdel * -1;
                }
                eel[i].worldRow += eel[i].rdel;
            }
            for(int j = 0; j < 10; j++) {
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
    for(int i = 0; i < 20; i++) {
        if(ebullet[i].aniState == ACTIVE) {
            if(ebullet[i].worldCol <= 2 || ebullet[i].worldCol >= 240
                || ebullet[i].worldRow <= 16 || ebullet[i].worldRow >= 160 - 16) {
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


void drawGame() {

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

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR *)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000014) = hOff1;
    (*(volatile unsigned short *)0x04000016) = vOff1;

    (*(volatile unsigned short *)0x0400001C) = hOff2;
    (*(volatile unsigned short *)0x0400001E) = vOff2;
}

void drawSub() {
    if(sub.hide) {
        shadowOAM[0].attr0 |= (2 << 8);
    }
    else {
        shadowOAM[0].attr0 = (1 << 14) | sub.worldRow;
        shadowOAM[0].attr1 = (2 << 14) | sub.worldCol;
        if(isSharkMode) {
            shadowOAM[0].attr2 = ((2)*32 + (8));
        }
        else if(shieldpowertimer > 0) {
            shadowOAM[0].attr2 = ((2)*32 + (4));
        }
        else {
            shadowOAM[0].attr2 = ((2)*32 + (0));
        }
    }
}

void drawPBullets() {
    for(int i = 0; i < 10; i++) {
        if(pbullet[i].hide || pbullet[i].aniState == INACTIVE) {
            shadowOAM[i + 1].attr0 |= (2 << 8);
        }
        else if(pbullet[i].aniState == ACTIVE){
            shadowOAM[i + 1].attr0 = (0 << 14) | pbullet[i].worldRow;
            shadowOAM[i + 1].attr1 = (0 << 14) | pbullet[i].worldCol;
            shadowOAM[i + 1].attr2 = ((0)*32 + (0));
        }
    }
}

void drawFish() {
    for(int i = 0; i < 10; i++) {
        int soi = 10 + i + 1;
        if(fish[i].hide || fish[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= (2 << 8);
        }
        else if(fish[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = (0 << 14) | fish[i].worldRow;
            shadowOAM[soi].attr1 = (1 << 14) | fish[i].worldCol;
            shadowOAM[soi].attr2 = ((10)*32 + (fish[i].curFrame * 2));
        }
    }
}

void drawEBullets() {
    for(int i = 0; i < 20; i++) {
        int soi = 10 + 10 + i + 1;
        if(ebullet[i].hide || ebullet[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= (2 << 8);
        }
        else if(ebullet[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = (0 << 14) | ebullet[i].worldRow;
            shadowOAM[soi].attr1 = (0 << 14) | ebullet[i].worldCol;
            shadowOAM[soi].attr2 = ((0)*32 + (2));
        }
    }
}

void drawShark() {
    for(int i = 0; i < 2; i++) {
        int soi = 10 + 10 + 20 + i + 1;
        if(shark[i].hide || shark[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= (2 << 8);
        }
        else if(shark[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = (1 << 14) | shark[i].worldRow;
            shadowOAM[soi].attr1 = (2 << 14) | shark[i].worldCol;
            shadowOAM[soi].attr2 = ((4)*32 + (shark[i].curFrame * 4));
        }
    }
}

void drawStar() {
    for(int i = 0; i < 2; i++) {
        int soi = 10 + 10 + 20 + 2 + i + 1;
        if(star[i].hide || star[i].aniState == INACTIVE) {
            shadowOAM[soi].attr0 |= (2 << 8);
        }
        else if(star[i].aniState == ACTIVE){
            shadowOAM[soi].attr0 = (0 << 14) | star[i].worldRow;
            shadowOAM[soi].attr1 = (1 << 14) | star[i].worldCol;
            shadowOAM[soi].attr2 = ((6)*32 + (star[i].curFrame * 2));
        }
    }
}

void drawShPowerup() {
    int soi = 10 + 10 + 20 + 2 + 2 + 1;
    if(shpowerup.hide || shpowerup.aniState == INACTIVE) {
        shadowOAM[soi].attr0 |= (2 << 8);
    }
    else {
        shadowOAM[soi].attr0 = (0 << 14) | shpowerup.worldRow;
        shadowOAM[soi].attr1 = (1 << 14) | shpowerup.worldCol;
        shadowOAM[soi].attr2 = ((12)*32 + (0));
    }
}

void drawStPowerup() {
    int soi = 10 + 10 + 20 + 2 + 2 + 2;
    if(stpowerup.hide || stpowerup.aniState == INACTIVE) {
        shadowOAM[soi].attr0 |= (2 << 8);
    }
    else {
        shadowOAM[soi].attr0 = (0 << 14) | stpowerup.worldRow;
        shadowOAM[soi].attr1 = (1 << 14) | stpowerup.worldCol;
        shadowOAM[soi].attr2 = ((12)*32 + (2));
    }
}

void drawShieldPowerup() {
    int soi = 10 + 10 + 20 + 2 + 2 + 3;
    if(shieldpowerup.hide || shieldpowerup.aniState == INACTIVE) {
        shadowOAM[soi].attr0 |= (2 << 8);
    }
    else {
        shadowOAM[soi].attr0 = (0 << 14) | shieldpowerup.worldRow;
        shadowOAM[soi].attr1 = (1 << 14) | shieldpowerup.worldCol;
        shadowOAM[soi].attr2 = ((12)*32 + (4));
    }
}

void drawEel() {
    int soi = 10 + 10 + 20 + 2 + 2 + 4;
    for(int i = 0; i < 2; i++) {
        if(eel[i].hide || eel[i].aniState == INACTIVE) {
            shadowOAM[soi + i].attr0 |= (2 << 8);
        }
        else {
            shadowOAM[soi + i].attr0 = (1 << 14) | eel[i].worldRow;
            shadowOAM[soi + i].attr1 = (2 << 14) | eel[i].worldCol;
            shadowOAM[soi + i].attr2 = ((8)*32 + (eel[i].curFrame * 4));
        }
    }
}

void drawLives() {
    int soi = 10 + 10 + 20 + 2 + 2 + 2 + 4;

    if(lives == 3) {
        shadowOAM[soi].attr0 = (0 << 14) | 2;
        shadowOAM[soi].attr1 = (1 << 14) | 90;
        shadowOAM[soi].attr2 = ((14)*32 + (0));
    }
    else {
        shadowOAM[soi].attr0 |= (2 << 8);

    }

    if(lives >= 2) {
        shadowOAM[soi + 1].attr0 = (0 << 14) | 2;
        shadowOAM[soi + 1].attr1 = (1 << 14) | 70;
        shadowOAM[soi + 1].attr2 = ((14)*32 + (0));
    }
    else {
        shadowOAM[soi + 1].attr0 |= (2 << 8);

    }

    shadowOAM[soi + 2].attr0 = (0 << 14) | 2;
    shadowOAM[soi + 2].attr1 = (1 << 14) | 50;
    shadowOAM[soi + 2].attr2 = ((14)*32 + (0));
}

void drawScore() {
    int soi = 10 + 10 + 20 + 2 + 2 + 2 + 7;

    int digit1 = score / 100;
    if(digit1 > 9) {
        digit1 = 9;
    }
    shadowOAM[soi].attr0 = (0 << 14) | 0;
    shadowOAM[soi].attr1 = (1 << 14) | 160;
    shadowOAM[soi].attr2 = ((0)*32 + (3 + (digit1 * 2)));


    int digit2 = (score % 100) / 10;
    if(digit2 > 9 || score > 999) {
        digit2 = 9;
    }
    shadowOAM[soi + 1].attr0 = (0 << 14) | 0;
    shadowOAM[soi + 1].attr1 = (1 << 14) | 167;
    shadowOAM[soi + 1].attr2 = ((0)*32 + (3 + (digit2 * 2)));


    int digit3 = ((score % 100) % 10);
    if(digit3 > 9 || score > 999) {
        digit3 = 9;
    }
    shadowOAM[soi + 2].attr0 = (0 << 14) | 0;
    shadowOAM[soi + 2].attr1 = (1 << 14) | 174;
    shadowOAM[soi + 2].attr2 = ((0)*32 + (3 + (digit3 * 2)));
}


void spawnPBullet() {
    if(sharkpowertimer > 0) {

            int searching = 1;
            int j = 0;
            while(searching == 1 && j < 10) {
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


            searching = 1;
            j = 0;
            while(searching == 1 && j < 10) {
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


            searching = 1;
            j = 0;
            while(searching == 1 && j < 10) {
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

        int searching = 1;
        int j = 0;
        while(searching == 1 && j < 10) {
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


        searching = 1;
        j = 0;
        while(searching == 1 && j < 10) {
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


        searching = 1;
        j = 0;
        while(searching == 1 && j < 10) {
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


        searching = 1;
        j = 0;
        while(searching == 1 && j < 10) {
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
            while(searching == 1 && i < 10) {
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

    if(fishbullettimer >= 100) {
        for(int i = 0; i < 10; i++) {
            int searching = 1;
            int j = 0;
            if(fish[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


    if(sharkbullettimer >= 100) {
        for(int i = 0; i < 2; i++) {

            int searching = 1;
            int j = 0;
            if(shark[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


            searching = 1;
            j = 0;
            if(shark[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


            searching = 1;
            j = 0;
            if(shark[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


    if(starbullettimer >= 100) {
        for(int i = 0; i < 2; i++) {

            int searching = 1;
            int j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


            searching = 1;
            j = 0;
            if(star[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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


    if(eelbullettimer >= 50) {
        for(int i = 0; i < 2; i++) {
            int searching = 1;
            int j = 0;
            if(eel[i].aniState == ACTIVE) {
                while(searching == 1 && j < 20) {
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
        while(searching == 1 && i < 10) {
            if(fish[i].aniState == INACTIVE) {
                fish[i].worldRow = rand() % 120 + 16;
                fish[i].worldCol = 240 - fish[i].width;
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
        while(searching == 1 && i < 2) {
            if(shark[i].aniState == INACTIVE) {
                shark[i].worldRow = rand() % 120 + 16;
                shark[i].worldCol = 240 - shark[i].width;
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
        while(searching == 1 && i < 2) {
            if(star[i].aniState == INACTIVE) {
                star[i].worldRow = rand() % 120 + 16;
                star[i].worldCol = 240 - star[i].width;
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
        while(searching == 1 && i < 2) {
            if(eel[i].aniState == INACTIVE) {
                eel[i].worldRow = rand() % 100 + 20;
                eel[i].worldCol = 240 - eel[i].width;
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
            shpowerup.worldCol = 240 - shpowerup.width;
            shpowerup.cdel = -1;
            shpowerup.rdel = 0;
            shpowerup.aniState = ACTIVE;
            shpowerup.hide = 0;
        }
        else if(type == 2 && stpowerup.aniState == INACTIVE) {
            stpowerup.worldRow = rand() % 120 + 16;
            stpowerup.worldCol = 240 - shpowerup.width;
            stpowerup.cdel = -1;
            stpowerup.rdel = 0;
            stpowerup.aniState = ACTIVE;
            stpowerup.hide = 0;
        }
        else if(shieldpowerup.aniState == INACTIVE) {
            shieldpowerup.worldRow = rand() % 120 + 16;
            shieldpowerup.worldCol = 240 - shpowerup.width;
            shieldpowerup.cdel = -1;
            shieldpowerup.rdel = 0;
            shieldpowerup.aniState = ACTIVE;
            shieldpowerup.hide = 0;
        }
        poweruptimer = 0;
    }
}


void hit() {
    if(shieldpowertimer <= 0 && !isSharkMode && gotHit != 1) {
        lives--;
        shieldpowertimer = 200;
        gotHit = 1;
    }
}
