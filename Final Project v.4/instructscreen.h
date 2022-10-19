
//{{BLOCK(instructscreen)

//======================================================================
//
//	instructscreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 158 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 5056 + 2048 = 7136
//
//	Time-stamp: 2022-04-22, 10:26:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTSCREEN_H
#define GRIT_INSTRUCTSCREEN_H

#define instructscreenTilesLen 5056
extern const unsigned short instructscreenTiles[2528];

#define instructscreenMapLen 2048
extern const unsigned short instructscreenMap[1024];

#define instructscreenPalLen 32
extern const unsigned short instructscreenPal[16];

#endif // GRIT_INSTRUCTSCREEN_H

//}}BLOCK(instructscreen)
