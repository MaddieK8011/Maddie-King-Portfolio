
//{{BLOCK(gamescreen)

//======================================================================
//
//	gamescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2022-04-04, 10:16:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gamescreenTilesLen 32
extern const unsigned short gamescreenTiles[16];

#define gamescreenMapLen 2048
extern const unsigned short gamescreenMap[1024];

#define gamescreenPalLen 512
extern const unsigned short gamescreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gamescreen)
