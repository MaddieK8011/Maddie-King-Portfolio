	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"bg.c"
	.text
	.align	2
	.global	drawTitleScreen
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTitleScreen, %function
drawTitleScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #4032
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	titlescreenPal
	.word	100712448
	.word	titlescreenTiles
	.word	100726784
	.word	titlescreenMap
	.size	drawTitleScreen, .-drawTitleScreen
	.align	2
	.global	drawInstructScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawInstructScreen, %function
drawInstructScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #2528
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	instructscreenPal
	.word	100712448
	.word	instructscreenTiles
	.word	100726784
	.word	instructscreenMap
	.size	drawInstructScreen, .-drawInstructScreen
	.align	2
	.global	drawPauseScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPauseScreen, %function
drawPauseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #192
	mov	r0, #3
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	pausescreenPal
	.word	100712448
	.word	pausescreenTiles
	.word	100726784
	.word	pausescreenMap
	.size	drawPauseScreen, .-drawPauseScreen
	.align	2
	.global	drawLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel1, %function
drawLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L16
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L16+4
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	mov	r3, #304
	mov	r0, #3
	ldr	r2, .L16+12
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #1456
	mov	r0, #3
	ldr	r2, .L16+32
	ldr	r1, .L16+36
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+48
	mov	lr, pc
	bx	r4
	mov	r3, #336
	mov	r0, #3
	ldr	r2, .L16+52
	ldr	r1, .L16+56
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L16+60
	ldr	r1, .L16+64
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	7688
	.word	DMANow
	.word	level1bgPal
	.word	100679680
	.word	level1bgTiles
	.word	100722688
	.word	level1bgMap
	.word	level1fgPal
	.word	100696064
	.word	level1fgTiles
	.word	100724736
	.word	level1fgMap
	.word	overlayPal
	.word	100712448
	.word	overlayTiles
	.word	100726784
	.word	overlayMap
	.size	drawLevel1, .-drawLevel1
	.align	2
	.global	drawLoseScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLoseScreen, %function
drawLoseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L20
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L20+4
	mov	lr, pc
	bx	r4
	mov	r3, #1952
	mov	r0, #3
	ldr	r2, .L20+8
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	losescreenPal
	.word	100712448
	.word	losescreenTiles
	.word	100726784
	.word	losescreenMap
	.size	drawLoseScreen, .-drawLoseScreen
	.ident	"GCC: (devkitARM release 53) 9.1.0"
