
//{{BLOCK(pausescreen)

//======================================================================
//
//	pausescreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 12 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 384 + 2048 = 2464
//
//	Time-stamp: 2022-04-22, 10:09:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREEN_H
#define GRIT_PAUSESCREEN_H

#define pausescreenTilesLen 384
extern const unsigned short pausescreenTiles[192];

#define pausescreenMapLen 2048
extern const unsigned short pausescreenMap[1024];

#define pausescreenPalLen 32
extern const unsigned short pausescreenPal[16];

#endif // GRIT_PAUSESCREEN_H

//}}BLOCK(pausescreen)
