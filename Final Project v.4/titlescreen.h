
//{{BLOCK(titlescreen)

//======================================================================
//
//	titlescreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 252 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 8064 + 2048 = 10144
//
//	Time-stamp: 2022-04-29, 02:13:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESCREEN_H
#define GRIT_TITLESCREEN_H

#define titlescreenTilesLen 8064
extern const unsigned short titlescreenTiles[4032];

#define titlescreenMapLen 2048
extern const unsigned short titlescreenMap[1024];

#define titlescreenPalLen 32
extern const unsigned short titlescreenPal[16];

#endif // GRIT_TITLESCREEN_H

//}}BLOCK(titlescreen)
