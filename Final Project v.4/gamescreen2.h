
//{{BLOCK(gamescreen2)

//======================================================================
//
//	gamescreen2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 10 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 320 + 2048 = 2880
//
//	Time-stamp: 2022-04-04, 11:08:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN2_H
#define GRIT_GAMESCREEN2_H

#define gamescreen2TilesLen 320
extern const unsigned short gamescreen2Tiles[160];

#define gamescreen2MapLen 2048
extern const unsigned short gamescreen2Map[1024];

#define gamescreen2PalLen 512
extern const unsigned short gamescreen2Pal[256];

#endif // GRIT_GAMESCREEN2_H

//}}BLOCK(gamescreen2)
