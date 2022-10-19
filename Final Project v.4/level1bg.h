
//{{BLOCK(level1bg)

//======================================================================
//
//	level1bg, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 19 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 608 + 2048 = 2688
//
//	Time-stamp: 2022-04-28, 17:12:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1BG_H
#define GRIT_LEVEL1BG_H

#define level1bgTilesLen 608
extern const unsigned short level1bgTiles[304];

#define level1bgMapLen 2048
extern const unsigned short level1bgMap[1024];

#define level1bgPalLen 32
extern const unsigned short level1bgPal[16];

#endif // GRIT_LEVEL1BG_H

//}}BLOCK(level1bg)
