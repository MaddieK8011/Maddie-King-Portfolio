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
	.file	"main.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	ldr	r0, .L4
	ldr	r1, .L4+4
	ldr	r2, .L4+8
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	returnToStart
	.word	state
	.word	drawTitleScreen
	.word	startmusic_length
	.word	startmusic_data
	.word	playSoundA
	.size	lose.part.0, .-lose.part.0
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	ip, #7680
	push	{r4, lr}
	mov	r4, #0
	ldr	r2, .L8
	ldr	r0, .L8+4
	ldr	r1, .L8+8
	strh	ip, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldr	r2, .L8+12
	strh	r1, [r3, #12]	@ movhi
	ldr	r3, .L8+16
	ldrh	ip, [r2, #48]
	ldr	r0, .L8+20
	ldr	r1, .L8+24
	ldr	r2, .L8+28
	strh	ip, [r3]	@ movhi
	ldr	r3, .L8+32
	strh	r4, [r0]	@ movhi
	str	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L8+40
	ldr	r3, .L8+44
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+48
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L8+52
	ldr	r3, .L8+56
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	7428
	.word	7688
	.word	7948
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	returnToStart
	.word	delaycounter
	.word	setupSounds
	.word	setupInterrupts
	.word	state
	.word	drawTitleScreen
	.word	startmusic_length
	.word	startmusic_data
	.word	playSoundA
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	ldr	r2, .L12
	ldr	r3, .L12+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	state
	.word	drawTitleScreen
	.size	goToStart, .-goToStart
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	ldr	r2, .L16
	push	{r4, lr}
	ldr	r3, .L16+4
	ldr	r4, .L16+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+12
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+28
	mov	lr, pc
	bx	r3
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	state
	.word	drawLevel1
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	start.part.0, %function
start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L20+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L20+8
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	initGame
	.word	gamemusic_length
	.word	gamemusic_data
	.word	playSoundA
	.size	start.part.0, .-start.part.0
	.set	instruct.part.0,start.part.0
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L23
	ldr	r2, .L36+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L35
.L23:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L36+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L36+8
	ldr	r3, .L36+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L35:
	b	start.part.0
.L37:
	.align	2
.L36:
	.word	oldButtons
	.word	buttons
	.word	state
	.word	drawInstructScreen
	.size	start, .-start
	.align	2
	.global	goToInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruct, %function
goToInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L40
	ldr	r3, .L40+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	state
	.word	drawInstructScreen
	.size	goToInstruct, .-goToInstruct
	.align	2
	.global	instruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L54
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L43
	ldr	r2, .L54+4
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L52
.L43:
	tst	r3, #8
	beq	.L42
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L53
.L42:
	pop	{r4, lr}
	bx	lr
.L53:
	pop	{r4, lr}
	b	instruct.part.0
.L52:
	ldr	r1, .L54+8
	ldr	r3, .L54+12
	str	r2, [r1]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L43
.L55:
	.align	2
.L54:
	.word	oldButtons
	.word	buttons
	.word	state
	.word	drawTitleScreen
	.size	instruct, .-instruct
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #3
	ldr	r2, .L58
	ldr	r3, .L58+4
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	mov	r0, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L58+12
	ldr	r4, .L58+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	state
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	DMANow
	.word	drawPauseScreen
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L72
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L61
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L70
.L61:
	tst	r3, #8
	beq	.L60
	ldr	r3, .L72+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L71
.L60:
	pop	{r4, lr}
	bx	lr
.L71:
	bl	goToGame
	ldr	r3, .L72+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L70:
	ldr	r1, .L72+12
	ldr	r3, .L72+16
	str	r2, [r1]
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+20
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L72+24
	ldr	r3, .L72+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L61
.L73:
	.align	2
.L72:
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	state
	.word	drawTitleScreen
	.word	startmusic_length
	.word	startmusic_data
	.word	playSoundA
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #5
	ldr	r2, .L78
	push	{r4, lr}
	ldr	r3, .L78+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L78+12
	mov	r2, #117440512
	ldr	r1, .L78+16
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L78+28
	ldr	r3, .L78+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	state
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	drawLoseScreen
	.word	losemusic_length
	.word	losemusic_data
	.word	playSoundA
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
	ldr	r3, .L89+12
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L87
.L81:
	ldr	r3, .L89+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L88
	pop	{r4, lr}
	bx	lr
.L88:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L89+20
	strh	r2, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	b	goToLose
.L87:
	mov	r2, #67108864
	ldr	r1, .L89+24
	strh	r3, [r2, #24]	@ movhi
	strh	r3, [r2, #26]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	mov	lr, pc
	bx	r1
	bl	goToPause
	b	.L81
.L90:
	.align	2
.L89:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	islost
	.word	stopSound
	.word	pauseSound
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r6, .L103
	ldr	r8, .L103+4
	push	{r4, r7, fp, lr}
	ldr	r3, .L103+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L103+12
	ldr	r2, [r6]
	ldrh	r3, [r8]
	ldr	fp, .L103+16
	ldr	r10, .L103+20
	ldr	r9, .L103+24
	ldr	r7, .L103+28
	ldr	r4, .L103+32
.L93:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L93
.L95:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L93
	.word	.L94
.L94:
	ldr	r0, [r7]
	cmp	r0, #1
	bne	.L93
	ldr	r3, .L103+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r3, [r8]
	b	.L93
.L96:
	ldr	r3, .L103+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r3, [r8]
	b	.L93
.L98:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r3, [r8]
	b	.L93
.L99:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r3, [r8]
	b	.L93
.L97:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r3, [r8]
	b	.L93
.L104:
	.align	2
.L103:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	instruct
	.word	game
	.word	returnToStart
	.word	67109120
	.word	lose.part.0
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L107
	ldr	r3, [r3]
	cmp	r3, #1
	bxne	lr
	b	lose.part.0
.L108:
	.align	2
.L107:
	.word	returnToStart
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	delaycounter,4,4
	.comm	returnToStart,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	hOff2,4,4
	.comm	vOff2,4,4
	.comm	hOff1,4,4
	.comm	vOff1,4,4
	.comm	islost,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
