
//{{BLOCK(overlay)

//======================================================================
//
//	overlay, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 21 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 672 + 2048 = 2752
//
//	Time-stamp: 2022-04-28, 13:03:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_OVERLAY_H
#define GRIT_OVERLAY_H

#define overlayTilesLen 672
extern const unsigned short overlayTiles[336];

#define overlayMapLen 2048
extern const unsigned short overlayMap[1024];

#define overlayPalLen 32
extern const unsigned short overlayPal[16];

#endif // GRIT_OVERLAY_H

//}}BLOCK(overlay)
