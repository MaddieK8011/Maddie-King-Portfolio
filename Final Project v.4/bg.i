# 1 "bg.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bg.c"
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
# 2 "bg.c" 2


# 1 "titlescreen.h" 1
# 22 "titlescreen.h"
extern const unsigned short titlescreenTiles[4032];


extern const unsigned short titlescreenMap[1024];


extern const unsigned short titlescreenPal[16];
# 5 "bg.c" 2
# 1 "instructscreen.h" 1
# 22 "instructscreen.h"
extern const unsigned short instructscreenTiles[2528];


extern const unsigned short instructscreenMap[1024];


extern const unsigned short instructscreenPal[16];
# 6 "bg.c" 2
# 1 "pausescreen.h" 1
# 22 "pausescreen.h"
extern const unsigned short pausescreenTiles[192];


extern const unsigned short pausescreenMap[1024];


extern const unsigned short pausescreenPal[16];
# 7 "bg.c" 2
# 1 "gamescreen.h" 1
# 22 "gamescreen.h"
extern const unsigned short gamescreenTiles[16];


extern const unsigned short gamescreenMap[1024];


extern const unsigned short gamescreenPal[256];
# 8 "bg.c" 2
# 1 "losescreen.h" 1
# 22 "losescreen.h"
extern const unsigned short losescreenTiles[1952];


extern const unsigned short losescreenMap[1024];


extern const unsigned short losescreenPal[16];
# 9 "bg.c" 2
# 1 "gamescreen2.h" 1
# 22 "gamescreen2.h"
extern const unsigned short gamescreen2Tiles[160];


extern const unsigned short gamescreen2Map[1024];


extern const unsigned short gamescreen2Pal[256];
# 10 "bg.c" 2
# 1 "level1bg.h" 1
# 22 "level1bg.h"
extern const unsigned short level1bgTiles[304];


extern const unsigned short level1bgMap[1024];


extern const unsigned short level1bgPal[16];
# 11 "bg.c" 2
# 1 "level1fg.h" 1
# 22 "level1fg.h"
extern const unsigned short level1fgTiles[1456];


extern const unsigned short level1fgMap[1024];


extern const unsigned short level1fgPal[16];
# 12 "bg.c" 2
# 1 "overlay.h" 1
# 22 "overlay.h"
extern const unsigned short overlayTiles[336];


extern const unsigned short overlayMap[1024];


extern const unsigned short overlayPal[16];
# 13 "bg.c" 2


void drawTitleScreen() {
    (*(volatile unsigned short *)0x400000A) = 0;
    DMANow(3, titlescreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, titlescreenTiles, &((charblock *)0x6000000)[3], 8064 / 2);
    DMANow(3, titlescreenMap, &((screenblock *)0x6000000)[31], 1024 * 4);
}

void drawInstructScreen() {
    DMANow(3, instructscreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, instructscreenTiles, &((charblock *)0x6000000)[3], 5056 / 2);
    DMANow(3, instructscreenMap, &((screenblock *)0x6000000)[31], 1024 * 4);
}

void drawPauseScreen() {
    (*(volatile unsigned short *)0x400000A) = 0;
    DMANow(3, pausescreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, pausescreenTiles, &((charblock *)0x6000000)[3], 384 / 2);
    DMANow(3, pausescreenMap, &((screenblock *)0x6000000)[31], 1024 * 4);
}

void drawLevel1() {
    (*(volatile unsigned short *)0x400000A) = ((2) << 2) | ((30) << 8) | (0 << 7) | (0 << 14);;

    DMANow(3, level1bgPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, level1bgTiles, &((charblock *)0x6000000)[1], 608 / 2);
    DMANow(3, level1bgMap, &((screenblock *)0x6000000)[29], 1024 * 4);

    DMANow(3, level1fgPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, level1fgTiles, &((charblock *)0x6000000)[2], 2912 / 2);
    DMANow(3, level1fgMap, &((screenblock *)0x6000000)[30], 1024 * 4);

    DMANow(3, overlayPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, overlayTiles, &((charblock *)0x6000000)[3], 672 / 2);
    DMANow(3, overlayMap, &((screenblock *)0x6000000)[31], 1024 * 4);
}

void drawLoseScreen() {
    (*(volatile unsigned short *)0x400000A) = 0;
    DMANow(3, losescreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, losescreenTiles, &((charblock *)0x6000000)[3], 3904 / 2);
    DMANow(3, losescreenMap, &((screenblock *)0x6000000)[31], 1024 * 4);
}
