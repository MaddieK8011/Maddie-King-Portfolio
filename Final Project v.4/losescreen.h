
//{{BLOCK(losescreen)

//======================================================================
//
//	losescreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 122 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 3904 + 2048 = 5984
//
//	Time-stamp: 2022-04-29, 02:27:54
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define losescreenTilesLen 3904
extern const unsigned short losescreenTiles[1952];

#define losescreenMapLen 2048
extern const unsigned short losescreenMap[1024];

#define losescreenPalLen 32
extern const unsigned short losescreenPal[16];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(losescreen)
