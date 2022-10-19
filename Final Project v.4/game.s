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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnFish.part.0, %function
spawnFish.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L8
	mov	r4, #0
	mov	r3, r6
	b	.L4
.L2:
	add	r4, r4, #1
	cmp	r4, #10
	add	r3, r3, #48
	beq	.L1
.L4:
	ldr	r5, [r3, #28]
	cmp	r5, #0
	bne	.L2
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mvn	ip, #0
	ldr	r2, .L8+8
	smull	r3, r2, r0, r2
	add	r4, r4, r4, lsl r1
	add	r3, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #6
	add	r3, r6, r4, lsl #4
	rsb	r2, r2, r2, lsl #4
	ldr	lr, [r3, #16]
	sub	r0, r0, r2, lsl #3
	ldr	r7, .L8+12
	add	r0, r0, #16
	rsb	r2, lr, #240
	str	r0, [r6, r4, lsl #4]
	str	r5, [r3, #8]
	str	r5, [r3, #44]
	str	r2, [r3, #4]
	str	ip, [r3, #12]
	str	r1, [r3, #28]
	str	r5, [r7]
.L1:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	fish
	.word	rand
	.word	-2004318071
	.word	fishtimer
	.size	spawnFish.part.0, .-spawnFish.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnShark.part.0, %function
spawnShark.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L18
	ldr	r4, [r5, #28]
	cmp	r4, #0
	beq	.L11
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L17
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	mov	r4, #1
.L11:
	ldr	r3, .L18+4
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, #0
	mvn	lr, #0
	ldr	r3, .L18+8
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r4, r4, r4, lsl ip
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #3
	add	r3, r5, r4, lsl #4
	add	r0, r0, #16
	ldr	r2, [r3, #16]
	str	r0, [r5, r4, lsl #4]
	ldr	r0, .L18+12
	rsb	r2, r2, #240
	str	lr, [r3, #12]
	str	r2, [r3, #4]
	str	ip, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #44]
	str	r1, [r0]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	shark
	.word	rand
	.word	-2004318071
	.word	sharktimer
	.size	spawnShark.part.0, .-spawnShark.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnStar.part.0, %function
spawnStar.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L28
	ldr	r4, [r5, #28]
	cmp	r4, #0
	beq	.L21
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L27
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	mov	r4, #1
.L21:
	ldr	r3, .L28+4
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, #0
	mvn	lr, #0
	ldr	r3, .L28+8
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r4, r4, r4, lsl ip
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #3
	add	r3, r5, r4, lsl #4
	add	r0, r0, #16
	ldr	r2, [r3, #16]
	str	r0, [r5, r4, lsl #4]
	ldr	r0, .L28+12
	rsb	r2, r2, #240
	str	lr, [r3, #12]
	str	r2, [r3, #4]
	str	ip, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #44]
	str	r1, [r0]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	star
	.word	rand
	.word	-2004318071
	.word	startimer
	.size	spawnStar.part.0, .-spawnStar.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnEel.part.0, %function
spawnEel.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L38
	ldr	r4, [r5, #28]
	cmp	r4, #0
	beq	.L31
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L37
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	mov	r4, #1
.L31:
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r2, #0
	mvn	ip, #0
	ldr	r3, .L38+8
	smull	r6, lr, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, lr, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	r4, r4, r4, lsl r1
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #20
	add	r3, r5, r4, lsl #4
	str	r0, [r5, r4, lsl #4]
	ldr	r0, [r3, #16]
	ldr	lr, .L38+12
	rsb	r0, r0, #240
	str	r2, [lr]
	stmib	r3, {r0, r1, ip}
	str	r1, [r3, #28]
	str	r2, [r3, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	eel
	.word	rand
	.word	1374389535
	.word	eeltimer
	.size	spawnEel.part.0, .-spawnEel.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnPowerup.part.0, %function
spawnPowerup.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L48
	mov	lr, pc
	bx	r5
	ldr	r4, .L48+4
	smull	r3, r4, r0, r4
	sub	r4, r4, r0, asr #31
	add	r4, r4, r4, lsl #1
	sub	r4, r0, r4
	cmp	r4, #1
	beq	.L46
	cmp	r4, #2
	beq	.L47
.L42:
	ldr	r4, .L48+8
	ldr	r6, [r4, #28]
	cmp	r6, #0
	beq	.L45
.L43:
	mov	r2, #0
	ldr	r3, .L48+12
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L47:
	ldr	r4, .L48+16
	ldr	r6, [r4, #28]
	cmp	r6, #0
	bne	.L42
.L45:
	mov	lr, pc
	bx	r5
	mvn	ip, #0
	mov	r1, #1
	ldr	r3, .L48+20
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	ldr	r2, .L48+24
	rsb	r3, r3, r3, lsl #4
	ldr	r2, [r2, #16]
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #16
	rsb	r3, r2, #240
	stm	r4, {r0, r3}
	str	r6, [r4, #8]
	str	r6, [r4, #44]
	str	ip, [r4, #12]
	str	r1, [r4, #28]
	b	.L43
.L46:
	ldr	r6, .L48+24
	ldr	r7, [r6, #28]
	cmp	r7, #0
	bne	.L42
	mov	lr, pc
	bx	r5
	mvn	r1, #0
	ldr	r3, .L48+20
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #3
	ldr	r3, [r6, #16]
	add	r0, r0, #16
	rsb	r3, r3, #240
	stm	r6, {r0, r3}
	str	r7, [r6, #8]
	str	r4, [r6, #28]
	str	r7, [r6, #44]
	str	r1, [r6, #12]
	b	.L43
.L49:
	.align	2
.L48:
	.word	rand
	.word	1431655766
	.word	shieldpowerup
	.word	poweruptimer
	.word	stpowerup
	.word	-2004318071
	.word	shpowerup
	.size	spawnPowerup.part.0, .-spawnPowerup.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #1
	mov	r7, #14
	mov	r3, #60
	mov	r8, #28
	mov	lr, r7
	mov	r5, r6
	mvn	r1, #0
	mov	ip, #10
	mov	r2, #0
	mov	r4, #2
	ldr	r0, .L58
	str	r3, [r0]
	str	r3, [r0, #4]
	ldr	r3, .L58+4
	str	r7, [r0, #20]
	str	r8, [r0, #16]
	str	r6, [r0, #12]
	str	r6, [r0, #8]
	add	r0, r3, #480
.L51:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	r2, [r3, #24]
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L51
	mov	r6, #16
	mov	r8, #28
	mov	r7, #4
	mvn	lr, #0
	mov	ip, #2
	mov	r0, #0
	ldr	r3, .L58+8
	stmib	r3, {r1, r2, r5}
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	r2, [r3, #24]
	str	r8, [r3, #16]
	str	r1, [r3]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r4, [r3, #88]
	str	r2, [r3, #72]
	str	r6, [r3, #20]
	str	r8, [r3, #64]
	str	r5, [r3, #60]
	str	r6, [r3, #68]
	ldr	r3, .L58+12
	ldr	r4, .L58+16
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #24]
	str	r6, [r3, #16]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r6, [r3, #20]
	str	r5, [r3, #12]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r7, [r3, #40]
	str	r6, [r3, #64]
	str	r2, [r3, #56]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r2, [r3, #72]
	str	r6, [r3, #68]
	str	r5, [r3, #60]
	str	r7, [r3, #88]
	ldr	r3, .L58+20
	str	r8, [r4, #16]
	str	r1, [r4]
	str	r1, [r4, #4]
	str	r6, [r4, #20]
	str	r5, [r4, #12]
	str	r5, [r4, #8]
	str	r7, [r4, #40]
	str	r1, [r4, #48]
	str	r1, [r4, #52]
	str	r8, [r4, #64]
	str	r6, [r4, #68]
	str	r5, [r4, #60]
	str	r5, [r4, #56]
	str	r7, [r4, #88]
	str	r2, [r4, #28]
	str	r2, [r4, #36]
	str	r2, [r4, #24]
	str	r2, [r4, #76]
	str	r2, [r4, #84]
	str	r2, [r4, #72]
	add	r2, r3, #480
.L52:
	str	lr, [r3]
	str	lr, [r3, #4]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r0, [r3, #28]
	add	r3, r3, #48
	cmp	r2, r3
	bne	.L52
	mvn	r1, #0
	mov	r0, #2
	mov	r2, #0
	ldr	r3, .L58+24
	add	ip, r3, #960
.L53:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L53
	mov	r0, #16
	mov	ip, #1
	mov	r7, #3
	mov	lr, #50
	mov	r6, #120
	mov	r5, #20
	mov	r4, #620
	ldr	r3, .L58+28
	str	r1, [r3]
	str	r0, [r3, #16]
	str	r1, [r3, #4]
	str	r0, [r3, #20]
	str	ip, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	ldr	r3, .L58+32
	str	r1, [r3]
	str	r0, [r3, #16]
	str	r1, [r3, #4]
	str	r0, [r3, #20]
	str	ip, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	ldr	r3, .L58+36
	str	r1, [r3]
	str	ip, [r3, #12]
	str	r1, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #8]
	ldr	r3, .L58+40
	str	r7, [r3]
	ldr	r3, .L58+44
	str	lr, [r3]
	ldr	r3, .L58+48
	ldr	r1, .L58+52
	str	lr, [r3]
	ldr	r3, .L58+56
	str	r6, [r1]
	str	r5, [r3]
	ldr	ip, .L58+60
	ldr	r0, .L58+64
	ldr	r3, .L58+68
	ldr	r1, .L58+72
	str	r2, [ip]
	str	r2, [r0]
	str	r2, [r3]
	ldr	ip, .L58+76
	ldr	r0, .L58+80
	ldr	r3, .L58+84
	str	r2, [r1]
	ldr	r1, .L58+88
	str	r2, [ip]
	str	r2, [r0]
	ldr	ip, .L58+92
	ldr	r0, .L58+96
	str	r2, [r3]
	str	r2, [r1]
	ldr	r3, .L58+100
	ldr	r1, .L58+104
	str	r4, [ip]
	str	r1, [r3]
	ldr	lr, .L58+108
	str	r2, [r0]
	ldr	ip, .L58+112
	ldr	r0, .L58+116
	ldr	r1, .L58+120
	ldr	r3, .L58+124
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	sub
	.word	fish
	.word	shark
	.word	star
	.word	eel
	.word	pbullet
	.word	ebullet
	.word	shpowerup
	.word	stpowerup
	.word	shieldpowerup
	.word	lives
	.word	pbullettimer
	.word	fishbullettimer
	.word	fishtimer
	.word	sharkbullettimer
	.word	islost
	.word	vOff1
	.word	hOff1
	.word	score
	.word	gotHit
	.word	sharktimer
	.word	startimer
	.word	starbullettimer
	.word	eeltimer
	.word	eelbullettimer
	.word	poweruptimer
	.word	450
	.word	starpowertimer
	.word	sharkpowertimer
	.word	shieldpowertimer
	.word	rainbowtimer
	.word	isSharkMode
	.size	initGame, .-initGame
	.align	2
	.global	initSub
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSub, %function
initSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #60
	mov	r2, #1
	mov	ip, #28
	mov	r0, #14
	ldr	r3, .L61
	str	r1, [r3]
	str	r1, [r3, #4]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L62:
	.align	2
.L61:
	.word	sub
	.size	initSub, .-initSub
	.align	2
	.global	initFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFish, %function
initFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mvn	r1, #0
	mov	r5, #14
	mov	r4, #10
	mov	lr, #1
	mov	r2, #0
	mov	ip, #2
	ldr	r3, .L67
	add	r0, r3, #480
.L64:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	ip, [r3, #40]
	str	r2, [r3, #24]
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L64
	pop	{r4, r5, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	fish
	.size	initFish, .-initFish
	.align	2
	.global	initShark
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShark, %function
initShark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mvn	r1, #0
	mov	r4, #28
	mov	lr, #16
	mov	ip, #1
	mov	r0, #2
	ldr	r3, .L71
	str	r4, [r3, #16]
	str	r4, [r3, #64]
	str	lr, [r3, #20]
	str	lr, [r3, #68]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	ip, [r3, #12]
	str	ip, [r3, #60]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #24]
	str	r2, [r3, #56]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r2, [r3, #72]
	str	r0, [r3, #40]
	str	r0, [r3, #88]
	pop	{r4, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	shark
	.size	initShark, .-initShark
	.align	2
	.global	initStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStar, %function
initStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mvn	r0, #0
	mov	r1, #16
	mov	lr, #1
	mov	ip, #4
	ldr	r3, .L75
	str	lr, [r3, #12]
	str	lr, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r0, [r3, #48]
	str	r0, [r3, #52]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #24]
	str	r2, [r3, #56]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r2, [r3, #72]
	str	ip, [r3, #40]
	str	ip, [r3, #88]
	ldr	lr, [sp], #4
	bx	lr
.L76:
	.align	2
.L75:
	.word	star
	.size	initStar, .-initStar
	.align	2
	.global	initEel
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEel, %function
initEel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mvn	r0, #0
	mov	r1, #1
	mov	r4, #28
	mov	lr, #16
	mov	ip, #4
	ldr	r3, .L79
	str	r4, [r3, #16]
	str	r4, [r3, #64]
	str	lr, [r3, #20]
	str	lr, [r3, #68]
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r0, [r3, #48]
	str	r0, [r3, #52]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [r3, #60]
	str	r1, [r3, #56]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #24]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r2, [r3, #72]
	str	ip, [r3, #40]
	str	ip, [r3, #88]
	pop	{r4, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	eel
	.size	initEel, .-initEel
	.align	2
	.global	initPBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPBullet, %function
initPBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	mov	r1, #2
	mov	r2, #0
	ldr	r3, .L85
	add	ip, r3, #480
.L82:
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L82
	bx	lr
.L86:
	.align	2
.L85:
	.word	pbullet
	.size	initPBullet, .-initPBullet
	.align	2
	.global	initEBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEBullet, %function
initEBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	mov	r1, #2
	mov	r2, #0
	ldr	r3, .L91
	add	ip, r3, #960
.L88:
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L88
	bx	lr
.L92:
	.align	2
.L91:
	.word	ebullet
	.size	initEBullet, .-initEBullet
	.align	2
	.global	initShPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShPowerup, %function
initShPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	mov	r1, #16
	mov	r2, #0
	mov	ip, #1
	ldr	r3, .L94
	str	r0, [r3]
	str	r0, [r3, #4]
	str	ip, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	bx	lr
.L95:
	.align	2
.L94:
	.word	shpowerup
	.size	initShPowerup, .-initShPowerup
	.align	2
	.global	initStPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStPowerup, %function
initStPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0
	mov	r1, #16
	mov	r2, #0
	mov	ip, #1
	ldr	r3, .L97
	str	r0, [r3]
	str	r0, [r3, #4]
	str	ip, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	bx	lr
.L98:
	.align	2
.L97:
	.word	stpowerup
	.size	initStPowerup, .-initStPowerup
	.align	2
	.global	initShieldPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShieldPowerup, %function
initShieldPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r1, #0
	mov	r2, #16
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L100
	str	r1, [r3]
	str	r1, [r3, #4]
	str	ip, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L101:
	.align	2
.L100:
	.word	shieldpowerup
	.size	initShieldPowerup, .-initShieldPowerup
	.align	2
	.global	updatePBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePBullets, %function
updatePBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L118
	mov	ip, #0
	add	r1, r3, #480
	b	.L109
.L111:
	add	r3, r3, #48
	cmp	r3, r1
	bxeq	lr
.L109:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L111
	ldr	r2, [r3, #4]
	sub	r0, r2, #3
	cmp	r0, #236
	bhi	.L116
	ldr	r0, [r3]
	push	{r4, lr}
	sub	lr, r0, #17
	cmp	lr, #126
	bls	.L105
.L104:
	str	ip, [r3, #28]
.L103:
	add	r3, r3, #48
	cmp	r3, r1
	beq	.L117
.L106:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L103
	ldr	r2, [r3, #4]
	sub	r0, r2, #3
	cmp	r0, #236
	bhi	.L104
	ldr	r0, [r3]
	sub	lr, r0, #17
	cmp	lr, #126
	bhi	.L104
.L105:
	ldr	r4, [r3, #12]
	ldr	lr, [r3, #8]
	add	r2, r4, r2
	add	r0, lr, r0
	stm	r3, {r0, r2}
	add	r3, r3, #48
	cmp	r3, r1
	bne	.L106
.L117:
	pop	{r4, lr}
	bx	lr
.L116:
	str	ip, [r3, #28]
	b	.L111
.L119:
	.align	2
.L118:
	.word	pbullet
	.size	updatePBullets, .-updatePBullets
	.align	2
	.global	updateShPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShPowerup, %function
updateShPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L131
	ldr	r3, [r4, #28]
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L130
.L120:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L130:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	movle	r3, #0
	ldrgt	r3, [r4, #12]
	strle	r3, [r4, #28]
	addgt	r0, r0, r3
	ldr	r3, .L131+4
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r5, .L131+8
	strgt	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L120
	mov	r2, #0
	mov	lr, #500
	ldr	r3, .L131+12
	ldr	ip, .L131+16
	ldr	r1, [r3]
	ldr	r0, .L131+20
	ldr	r3, .L131+24
	str	r2, [r4, #28]
	str	lr, [ip]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L132:
	.align	2
.L131:
	.word	shpowerup
	.word	sub
	.word	collision
	.word	powerupsound_length
	.word	sharkpowertimer
	.word	powerupsound_data
	.word	playSoundB
	.size	updateShPowerup, .-updateShPowerup
	.align	2
	.global	updateStPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStPowerup, %function
updateStPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L144
	ldr	r3, [r4, #28]
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L143
.L133:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L143:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	movle	r3, #0
	ldrgt	r3, [r4, #12]
	strle	r3, [r4, #28]
	addgt	r0, r0, r3
	ldr	r3, .L144+4
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r5, .L144+8
	strgt	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L133
	mov	r2, #0
	mov	lr, #500
	ldr	r3, .L144+12
	ldr	ip, .L144+16
	ldr	r1, [r3]
	ldr	r0, .L144+20
	ldr	r3, .L144+24
	str	r2, [r4, #28]
	str	lr, [ip]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L145:
	.align	2
.L144:
	.word	stpowerup
	.word	sub
	.word	collision
	.word	powerupsound_length
	.word	starpowertimer
	.word	powerupsound_data
	.word	playSoundB
	.size	updateStPowerup, .-updateStPowerup
	.align	2
	.global	updateShieldPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShieldPowerup, %function
updateShieldPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L157
	ldr	r3, [r4, #28]
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L156
.L146:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L156:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	movle	r3, #0
	ldrgt	r3, [r4, #12]
	strle	r3, [r4, #28]
	addgt	r0, r0, r3
	ldr	r3, .L157+4
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r5, .L157+8
	strgt	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L146
	mov	r2, #0
	mov	lr, #500
	ldr	r3, .L157+12
	ldr	ip, .L157+16
	ldr	r1, [r3]
	ldr	r0, .L157+20
	ldr	r3, .L157+24
	str	r2, [r4, #28]
	str	lr, [ip]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L158:
	.align	2
.L157:
	.word	shieldpowerup
	.word	sub
	.word	collision
	.word	powerupsound_length
	.word	shieldpowertimer
	.word	powerupsound_data
	.word	playSoundB
	.size	updateShieldPowerup, .-updateShieldPowerup
	.align	2
	.global	drawSub
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSub, %function
drawSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L164
	ldr	r3, [r2, #44]
	cmp	r3, #0
	beq	.L160
	ldr	r2, .L164+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L160:
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L164+8
	ldr	r2, [r2]
	ldr	r0, [r1]
	ldr	r1, .L164+4
	orr	r2, r2, #16384
	cmp	r0, #0
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	beq	.L162
	mov	r3, #72
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L162:
	ldr	r3, .L164+12
	ldr	r3, [r3]
	cmp	r3, #0
	movgt	r3, #68
	movle	r3, #64
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L165:
	.align	2
.L164:
	.word	sub
	.word	shadowOAM
	.word	isSharkMode
	.word	shieldpowertimer
	.size	drawSub, .-drawSub
	.align	2
	.global	drawPBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPBullets, %function
drawPBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L184
	ldr	r2, .L184+4
	add	ip, r3, #480
	b	.L173
.L182:
	ldr	r0, [r3, #28]
	cmp	r0, #0
	beq	.L174
	cmp	r0, #1
	beq	.L179
.L177:
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	bxeq	lr
.L173:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	beq	.L182
.L174:
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
	b	.L177
.L179:
	str	lr, [sp, #-4]!
.L178:
	ldr	lr, [r3]
	ldr	r0, [r3, #4]
	strh	r1, [r2, #12]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
.L169:
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	beq	.L183
.L170:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	bne	.L167
	ldr	r0, [r3, #28]
	cmp	r0, #0
	beq	.L167
	cmp	r0, #1
	beq	.L178
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L170
.L183:
	ldr	lr, [sp], #4
	bx	lr
.L167:
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
	b	.L169
.L185:
	.align	2
.L184:
	.word	pbullet
	.word	shadowOAM
	.size	drawPBullets, .-drawPBullets
	.align	2
	.global	drawFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFish, %function
drawFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L204
	ldr	r2, .L204+4
	add	r0, r3, #480
	b	.L193
.L202:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L194
	cmp	r1, #1
	beq	.L199
.L197:
	add	r3, r3, #48
	cmp	r3, r0
	add	r2, r2, #8
	bxeq	lr
.L193:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	beq	.L202
.L194:
	ldrh	r1, [r2, #88]
	orr	r1, r1, #512
	strh	r1, [r2, #88]	@ movhi
	b	.L197
.L199:
	str	lr, [sp, #-4]!
.L198:
	ldr	r1, [r3, #36]
	ldr	ip, [r3, #4]
	ldr	lr, [r3]
	add	r1, r1, #160
	lsl	r1, r1, #1
	orr	ip, ip, #16384
	strh	r1, [r2, #92]	@ movhi
	strh	ip, [r2, #90]	@ movhi
	strh	lr, [r2, #88]	@ movhi
.L189:
	add	r3, r3, #48
	cmp	r3, r0
	add	r2, r2, #8
	beq	.L203
.L190:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	bne	.L187
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L187
	cmp	r1, #1
	beq	.L198
	add	r3, r3, #48
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L190
.L203:
	ldr	lr, [sp], #4
	bx	lr
.L187:
	ldrh	r1, [r2, #88]
	orr	r1, r1, #512
	strh	r1, [r2, #88]	@ movhi
	b	.L189
.L205:
	.align	2
.L204:
	.word	fish
	.word	shadowOAM
	.size	drawFish, .-drawFish
	.align	2
	.global	drawEBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEBullets, %function
drawEBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L215
	str	lr, [sp, #-4]!
	ldr	r2, .L215+4
	mov	lr, #2
	add	r0, r3, #960
	b	.L210
.L214:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L207
	cmp	r1, #1
	ldreq	ip, [r3]
	ldreq	r1, [r3, #4]
	add	r3, r3, #48
	strheq	lr, [r2, #172]	@ movhi
	strheq	ip, [r2, #168]	@ movhi
	strheq	r1, [r2, #170]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	beq	.L213
.L210:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	beq	.L214
.L207:
	ldrh	r1, [r2, #168]
	add	r3, r3, #48
	orr	r1, r1, #512
	cmp	r3, r0
	strh	r1, [r2, #168]	@ movhi
	add	r2, r2, #8
	bne	.L210
.L213:
	ldr	lr, [sp], #4
	bx	lr
.L216:
	.align	2
.L215:
	.word	ebullet
	.word	shadowOAM
	.size	drawEBullets, .-drawEBullets
	.align	2
	.global	drawShark
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShark, %function
drawShark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	ldr	r2, .L233
	ldr	r3, .L233+4
	ldr	ip, .L233+8
.L224:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	bne	.L225
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L227
.L225:
	ldrh	r1, [r3]
	orr	r1, r1, #512
	strh	r1, [r3]	@ movhi
.L228:
	cmp	r0, #1
	add	r2, r2, #48
	add	r3, r3, #8
	bxeq	lr
	mov	r0, #1
	b	.L224
.L227:
	cmp	r1, #1
	bne	.L228
	push	{r4, lr}
.L229:
	ldr	r1, [r2, #36]
	ldr	r4, [r2]
	ldr	lr, [r2, #4]
	add	r1, r1, #32
	lsl	r1, r1, #2
	orr	r4, r4, #16384
	orr	lr, lr, ip
	strh	r1, [r3, #4]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
.L220:
	cmp	r0, #1
	add	r2, r2, #48
	add	r3, r3, #8
	bne	.L222
	pop	{r4, lr}
	bx	lr
.L222:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	mov	r0, #1
	bne	.L218
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L218
	cmp	r1, #1
	bne	.L220
	b	.L229
.L218:
	ldrh	r1, [r3]
	orr	r1, r1, #512
	strh	r1, [r3]	@ movhi
	b	.L220
.L234:
	.align	2
.L233:
	.word	shark
	.word	shadowOAM+328
	.word	-32768
	.size	drawShark, .-drawShark
	.align	2
	.global	drawStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar, %function
drawStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	ldr	r2, .L251
	ldr	r3, .L251+4
.L242:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	bne	.L243
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L245
.L243:
	ldrh	r1, [r3]
	orr	r1, r1, #512
	strh	r1, [r3]	@ movhi
.L246:
	cmp	r0, #1
	add	r2, r2, #48
	add	r3, r3, #8
	bxeq	lr
	mov	r0, #1
	b	.L242
.L245:
	cmp	r1, #1
	bne	.L246
	str	lr, [sp, #-4]!
.L247:
	ldr	r1, [r2, #36]
	ldr	ip, [r2, #4]
	ldr	lr, [r2]
	add	r1, r1, #96
	lsl	r1, r1, #1
	orr	ip, ip, #16384
	strh	r1, [r3, #4]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	lr, [r3]	@ movhi
.L238:
	cmp	r0, #1
	add	r2, r2, #48
	add	r3, r3, #8
	bne	.L240
	ldr	lr, [sp], #4
	bx	lr
.L240:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	mov	r0, #1
	bne	.L236
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L236
	cmp	r1, #1
	bne	.L238
	b	.L247
.L236:
	ldrh	r1, [r3]
	orr	r1, r1, #512
	strh	r1, [r3]	@ movhi
	b	.L238
.L252:
	.align	2
.L251:
	.word	star
	.word	shadowOAM+344
	.size	drawStar, .-drawStar
	.align	2
	.global	drawShPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShPowerup, %function
drawShPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L257
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	.L254
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L255
.L254:
	ldr	r2, .L257+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L255:
	mov	r1, #384
	ldm	r3, {r0, r2}
	ldr	r3, .L257+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L258:
	.align	2
.L257:
	.word	shpowerup
	.word	shadowOAM+360
	.size	drawShPowerup, .-drawShPowerup
	.align	2
	.global	drawStPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStPowerup, %function
drawStPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L263
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	.L260
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L261
.L260:
	ldr	r2, .L263+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L261:
	ldm	r3, {r0, r2}
	ldr	r1, .L263+8
	ldr	r3, .L263+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L264:
	.align	2
.L263:
	.word	stpowerup
	.word	shadowOAM+368
	.word	386
	.size	drawStPowerup, .-drawStPowerup
	.align	2
	.global	drawShieldPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShieldPowerup, %function
drawShieldPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L269
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	.L266
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L267
.L266:
	ldr	r2, .L269+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L267:
	mov	r1, #388
	ldm	r3, {r0, r2}
	ldr	r3, .L269+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L270:
	.align	2
.L269:
	.word	shieldpowerup
	.word	shadowOAM+376
	.size	drawShieldPowerup, .-drawShieldPowerup
	.align	2
	.global	drawEel
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEel, %function
drawEel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, lr}
	ldr	r2, .L279
	ldr	r3, .L279+4
	ldr	r4, .L279+8
.L275:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	bne	.L272
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L272
	ldr	r1, [r2, #36]
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	add	r1, r1, #64
	lsl	r1, r1, #2
	orr	lr, lr, #16384
	orr	ip, ip, r4
	cmp	r0, #1
	strh	r1, [r3, #4]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	add	r2, r2, #48
	add	r3, r3, #8
	bne	.L276
.L278:
	pop	{r4, lr}
	bx	lr
.L272:
	ldrh	r1, [r3]
	cmp	r0, #1
	orr	r1, r1, #512
	strh	r1, [r3]	@ movhi
	add	r2, r2, #48
	add	r3, r3, #8
	beq	.L278
.L276:
	mov	r0, #1
	b	.L275
.L280:
	.align	2
.L279:
	.word	eel
	.word	shadowOAM+384
	.word	-32768
	.size	drawEel, .-drawEel
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L287
	ldr	r2, [r3]
	cmp	r2, #3
	beq	.L286
	ldr	r3, .L287+4
	ldrh	r1, [r3]
	cmp	r2, #1
	orr	r2, r1, #512
	strh	r2, [r3]	@ movhi
	bgt	.L283
	ldrh	r2, [r3, #8]!
	orr	r2, r2, #512
	strh	r2, [r3]	@ movhi
	b	.L285
.L286:
	mov	r0, #2
	mov	r2, #448
	ldr	r3, .L287+4
	ldr	r1, .L287+8
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L283:
	mov	r0, #2
	mov	r2, #448
	ldr	r3, .L287+12
	ldr	r1, .L287+16
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L285:
	mov	r0, #2
	mov	r2, #448
	ldr	r3, .L287+20
	ldr	r1, .L287+24
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L288:
	.align	2
.L287:
	.word	lives
	.word	shadowOAM+400
	.word	16474
	.word	shadowOAM+408
	.word	16454
	.word	shadowOAM+416
	.word	16434
	.size	drawLives, .-drawLives
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L297
	ldr	r3, [r3]
	cmp	r3, #1000
	push	{r4, r5, lr}
	blt	.L296
	ldr	r2, .L297+4
	mov	r0, #0
	mov	r1, r2
	mov	r3, #21
	ldr	lr, .L297+8
	strh	r0, [r1, #8]!	@ movhi
	ldr	ip, .L297+12
	strh	lr, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r2, #12]	@ movhi
.L292:
	mov	r0, #0
	ldr	r2, .L297+16
	ldr	r1, .L297+20
	strh	r0, [r2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L296:
	ldr	r1, .L297+24
	smull	r0, r2, r1, r3
	ldr	r0, .L297+4
	mov	lr, #0
	mov	ip, r0
	asr	r1, r3, #31
	rsb	r1, r1, r2, asr #5
	add	r2, r1, r1, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r3, r2, lsl #2
	ldr	r2, .L297+28
	smull	r5, r4, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r4, asr #2
	add	r4, r2, r2, lsl #2
	lsl	r1, r1, #1
	lsl	r2, r2, #1
	add	r1, r1, #3
	add	r2, r2, #3
	sub	r3, r3, r4, lsl #1
	strh	lr, [ip, #8]!	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0, #12]	@ movhi
	ldr	r1, .L297+8
	ldr	r2, .L297+12
	lsl	r3, r3, #17
	add	r3, r3, #196608
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r0]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	lsr	r3, r3, #16
	b	.L292
.L298:
	.align	2
.L297:
	.word	score
	.word	shadowOAM+424
	.word	16544
	.word	16551
	.word	shadowOAM+440
	.word	16558
	.word	1374389535
	.word	1717986919
	.size	drawScore, .-drawScore
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawSub
	bl	drawPBullets
	bl	drawFish
	bl	drawShark
	bl	drawStar
	bl	drawEel
	bl	drawEBullets
	bl	drawShPowerup
	bl	drawStPowerup
	bl	drawShieldPowerup
	bl	drawLives
	bl	drawScore
	ldr	r3, .L301
	mov	lr, pc
	bx	r3
	ldr	r4, .L301+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L301+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L301+12
	ldrh	r1, [r2]
	ldr	r2, .L301+16
	strh	r1, [r3, #20]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L301+20
	strh	r1, [r3, #22]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L301+24
	ldrh	r2, [r2]
	strh	r1, [r3, #28]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #30]	@ movhi
	bx	lr
.L302:
	.align	2
.L301:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff1
	.word	vOff1
	.word	hOff2
	.word	vOff2
	.size	drawGame, .-drawGame
	.align	2
	.global	spawnPBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnPBullet, %function
spawnPBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L338
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	ble	.L304
	ldr	r1, .L338+4
	mov	r2, #0
	mov	r3, r1
	mov	r0, r1
.L307:
	ldr	ip, [r0, #28]
	cmp	ip, #0
	bne	.L305
	mov	r6, #1
	mvn	r7, #0
	ldr	lr, .L338+8
	ldr	r0, [lr, #20]
	ldr	r5, [lr]
	ldr	r4, [lr, #4]
	ldr	lr, [lr, #16]
	add	r2, r2, r2, lsl r6
	add	r0, r0, r0, lsr #31
	add	r5, r5, r0, asr r6
	add	lr, r4, lr
	add	r0, r3, r2, lsl #4
	str	r5, [r3, r2, lsl #4]
	str	ip, [r0, #44]
	str	lr, [r0, #4]
	str	r7, [r0, #8]
	str	r6, [r0, #12]
	str	r6, [r0, #28]
.L306:
	mov	r2, #0
	ldr	r0, .L338+4
.L310:
	ldr	ip, [r0, #28]
	cmp	ip, #0
	bne	.L308
	mov	r6, #1
	mov	r7, #2
	ldr	lr, .L338+8
	ldr	r0, [lr, #20]
	ldr	r5, [lr]
	ldr	r4, [lr, #4]
	ldr	lr, [lr, #16]
	add	r2, r2, r2, lsl r6
	add	r0, r0, r0, lsr #31
	add	r5, r5, r0, asr r6
	add	lr, r4, lr
	add	r0, r3, r2, lsl #4
	str	r5, [r3, r2, lsl #4]
	str	ip, [r0, #8]
	str	ip, [r0, #44]
	str	lr, [r0, #4]
	str	r7, [r0, #12]
	str	r6, [r0, #28]
.L309:
	mov	r2, #0
.L313:
	ldr	r0, [r1, #28]
	cmp	r0, #0
	bne	.L311
	mov	lr, #1
	ldr	ip, .L338+8
	ldr	r1, [ip, #20]
	ldr	r5, [ip]
	ldr	r4, [ip, #4]
	ldr	ip, [ip, #16]
	add	r2, r2, r2, lsl lr
	add	r1, r1, r1, lsr #31
	add	r5, r5, r1, asr lr
	add	ip, r4, ip
	add	r1, r3, r2, lsl #4
	str	r5, [r3, r2, lsl #4]
	str	r0, [r1, #44]
	str	ip, [r1, #4]
	str	lr, [r1, #12]
	str	lr, [r1, #8]
	str	lr, [r1, #28]
.L312:
	ldr	r3, .L338+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L338+16
	ldr	r3, .L338+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L305:
	add	r2, r2, #1
	cmp	r2, #10
	add	r0, r0, #48
	bne	.L307
	b	.L306
.L311:
	add	r2, r2, #1
	cmp	r2, #10
	add	r1, r1, #48
	bne	.L313
	b	.L312
.L308:
	add	r2, r2, #1
	cmp	r2, #10
	add	r0, r0, #48
	bne	.L310
	b	.L309
.L304:
	ldr	r3, .L338+24
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L314
	ldr	r1, .L338+4
	mov	r2, #0
	mov	r3, r1
	mov	ip, r1
.L317:
	ldr	r0, [ip, #28]
	cmp	r0, #0
	bne	.L315
	mov	r5, #1
	mov	r6, #2
	ldr	ip, .L338+8
	ldr	lr, [ip, #20]
	ldr	r4, [ip]
	add	lr, lr, lr, lsr #31
	add	lr, r4, lr, asr r5
	ldr	r4, [ip, #4]
	ldr	ip, [ip, #16]
	add	r2, r2, r2, lsl r5
	str	lr, [r3, r2, lsl #4]
	add	ip, r4, ip
	add	r2, r3, r2, lsl #4
	str	r0, [r2, #8]
	str	r0, [r2, #44]
	str	ip, [r2, #4]
	str	r6, [r2, #12]
	str	r5, [r2, #28]
.L316:
	mov	r2, #0
	ldr	ip, .L338+4
.L320:
	ldr	r0, [ip, #28]
	cmp	r0, #0
	bne	.L318
	mov	r4, #1
	mvn	r5, #1
	ldr	lr, .L338+8
	ldr	ip, [lr, #16]
	ldr	r6, [lr]
	ldr	lr, [lr, #4]
	add	r2, r2, r2, lsl r4
	add	ip, ip, ip, lsr #31
	str	r6, [r3, r2, lsl #4]
	add	ip, lr, ip, asr r4
	add	r2, r3, r2, lsl #4
	str	r0, [r2, #12]
	str	r0, [r2, #44]
	str	ip, [r2, #4]
	str	r5, [r2, #8]
	str	r4, [r2, #28]
.L319:
	mov	r2, #0
	ldr	ip, .L338+4
.L323:
	ldr	r0, [ip, #28]
	cmp	r0, #0
	bne	.L321
	mov	r5, #1
	mov	r6, #2
	ldr	lr, .L338+8
	ldr	ip, [lr, #20]
	ldr	r4, [lr]
	add	r4, r4, ip
	ldr	ip, [lr, #16]
	ldr	lr, [lr, #4]
	add	r2, r2, r2, lsl r5
	add	ip, ip, ip, lsr #31
	str	r4, [r3, r2, lsl #4]
	add	ip, lr, ip, asr r5
	add	r2, r3, r2, lsl #4
	str	r0, [r2, #12]
	str	r0, [r2, #44]
	str	ip, [r2, #4]
	str	r6, [r2, #8]
	str	r5, [r2, #28]
.L322:
	mov	r2, #0
.L325:
	ldr	r0, [r1, #28]
	cmp	r0, #0
	bne	.L324
	mov	r4, #1
	mvn	r5, #1
	ldr	lr, .L338+8
	ldr	r1, [lr, #20]
	ldr	ip, [lr]
	add	r1, r1, r1, lsr #31
	ldr	lr, [lr, #4]
	add	r2, r2, r2, lsl r4
	add	r1, ip, r1, asr r4
	str	r1, [r3, r2, lsl #4]
	add	r3, r3, r2, lsl #4
	str	lr, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #44]
	str	r5, [r3, #12]
	str	r4, [r3, #28]
	b	.L312
.L315:
	add	r2, r2, #1
	cmp	r2, #10
	add	ip, ip, #48
	bne	.L317
	b	.L316
.L324:
	add	r2, r2, #1
	cmp	r2, #10
	add	r1, r1, #48
	bne	.L325
	b	.L312
.L321:
	add	r2, r2, #1
	cmp	r2, #10
	add	ip, ip, #48
	bne	.L323
	b	.L322
.L318:
	add	r2, r2, #1
	cmp	r2, #10
	add	ip, ip, #48
	bne	.L320
	b	.L319
.L314:
	ldr	lr, .L338+28
	ldr	r3, [lr]
	cmp	r3, #19
	ble	.L312
	ldr	r3, .L338+4
	mov	r2, #0
	mov	r0, r3
.L328:
	ldr	r1, [r0, #28]
	cmp	r1, #0
	bne	.L327
	mov	r4, #1
	mov	r5, #2
	ldr	r0, .L338+8
	ldr	ip, [r0, #20]
	str	r1, [lr]
	ldr	lr, [r0]
	add	ip, ip, ip, lsr #31
	add	ip, lr, ip, asr r4
	ldr	lr, [r0, #4]
	ldr	r0, [r0, #16]
	add	r2, r2, r2, lsl r4
	str	ip, [r3, r2, lsl #4]
	add	r0, lr, r0
	add	r3, r3, r2, lsl #4
	str	r1, [r3, #8]
	str	r1, [r3, #44]
	str	r0, [r3, #4]
	str	r5, [r3, #12]
	str	r4, [r3, #28]
	b	.L312
.L327:
	add	r2, r2, #1
	cmp	r2, #10
	add	r0, r0, #48
	bne	.L328
	b	.L312
.L339:
	.align	2
.L338:
	.word	sharkpowertimer
	.word	pbullet
	.word	sub
	.word	bulletfire_length
	.word	bulletfire_data
	.word	playSoundB
	.word	starpowertimer
	.word	pbullettimer
	.size	spawnPBullet, .-spawnPBullet
	.align	2
	.global	updateSub
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSub, %function
updateSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L352
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, lr}
	bne	.L341
	ldr	r2, .L352+4
	ldr	r3, [r2]
	cmp	r3, #16
	ldrgt	r1, [r2, #8]
	subgt	r3, r3, r1
	strgt	r3, [r2]
.L341:
	ldr	r3, .L352
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L342
	ldr	r3, .L352+4
	ldr	r2, [r3, #20]
	ldr	r1, [r3]
	rsb	r2, r2, #144
	cmp	r1, r2
	ldrlt	r2, [r3, #8]
	addlt	r1, r2, r1
	strlt	r1, [r3]
.L342:
	ldr	r3, .L352
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L343
	ldr	r2, .L352+4
	ldr	r3, [r2, #4]
	cmp	r3, #0
	ldrgt	r1, [r2, #12]
	subgt	r3, r3, r1
	strgt	r3, [r2, #4]
.L343:
	ldr	r3, .L352
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L344
	ldr	r3, .L352+4
	ldr	r2, [r3, #16]
	ldr	r1, [r3, #4]
	rsb	r2, r2, #240
	cmp	r1, r2
	ldrlt	r2, [r3, #12]
	addlt	r1, r2, r1
	strlt	r1, [r3, #4]
.L344:
	ldr	r3, .L352+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L345
	ldr	r3, .L352+12
	ldrh	r3, [r3]
	ands	r4, r3, #1
	bne	.L345
	ldr	r5, .L352+16
	ldr	r3, [r5]
	cmp	r3, #19
	bgt	.L351
.L345:
	ldr	r2, .L352+20
	ldr	r3, .L352+24
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	ldreq	r2, .L352+28
	ldrheq	r3, [r2, #12]
	addeq	r3, r3, #1088
	addeq	r3, r3, #12
	strheq	r3, [r2, #12]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L351:
	bl	spawnPBullet
	str	r4, [r5]
	b	.L345
.L353:
	.align	2
.L352:
	.word	67109120
	.word	sub
	.word	oldButtons
	.word	buttons
	.word	pbullettimer
	.word	rainbowtimer
	.word	1717986919
	.word	83886592
	.size	updateSub, .-updateSub
	.align	2
	.global	spawnEBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnEBullet, %function
spawnEBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L426
	ldr	ip, [r7]
	cmp	ip, #99
	ble	.L356
	ldr	r2, .L426+4
	mov	r8, #0
	mvn	r6, #1
	mov	r5, #1
	ldr	lr, .L426+8
	add	r4, r2, #480
	b	.L360
.L357:
	add	r2, r2, #48
	cmp	r2, r4
	beq	.L422
.L360:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	bne	.L357
	mov	r3, #0
	ldr	r0, .L426+8
.L359:
	ldr	r1, [r0, #28]
	cmp	r1, #0
	bne	.L358
	ldr	r0, [r2, #20]
	ldr	ip, [r2]
	ldr	r8, [r2, #4]
	add	r3, r3, r3, lsl #1
	add	r0, r0, r0, lsr #31
	add	r2, r2, #48
	add	ip, ip, r0, asr #1
	cmp	r2, r4
	add	r0, lr, r3, lsl #4
	str	ip, [lr, r3, lsl #4]
	str	r8, [r0, #4]
	mov	ip, r1
	mov	r8, #1
	str	r6, [r0, #12]
	str	r1, [r0, #8]
	str	r5, [r0, #28]
	str	r1, [r0, #44]
	bne	.L360
.L422:
	cmp	r8, #0
	strne	ip, [r7]
.L356:
	ldr	lr, .L426+12
	ldr	r3, [lr]
	cmp	r3, #99
	ble	.L362
	ldr	r2, .L426+16
	ldr	r3, [r2, #28]
	cmp	r3, #1
	mov	r5, #0
	mvn	r4, #0
	mov	ip, #1
	mvn	r6, #1
	beq	.L423
.L364:
	cmp	r5, #1
	add	r2, r2, #48
	bne	.L401
	mov	r3, #0
	str	r3, [lr]
.L362:
	ldr	lr, .L426+20
	ldr	r3, [lr]
	cmp	r3, #99
	ble	.L375
	ldr	r2, .L426+24
	ldr	r3, [r2, #28]
	cmp	r3, #1
	mov	r4, #0
	mov	r0, #1
	mvn	ip, #0
	mvn	r5, #1
	beq	.L424
.L377:
	cmp	r4, #1
	add	r2, r2, #48
	bne	.L402
	mov	r3, #0
	str	r3, [lr]
.L375:
	ldr	lr, .L426+28
	ldr	r8, [lr]
	cmp	r8, #49
	ble	.L354
	mov	r1, #0
	mvn	r7, #1
	mov	r9, r1
	mov	r6, #1
	ldr	r2, .L426+32
	ldr	r4, .L426+8
	ldr	r5, .L426+36
.L399:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	beq	.L425
.L396:
	add	r1, r1, #48
	cmp	r1, #96
	add	r2, r2, #48
	bne	.L399
	cmp	r9, #0
	strne	r8, [lr]
.L354:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L358:
	add	r3, r3, #1
	cmp	r3, #20
	add	r0, r0, #48
	bne	.L359
	b	.L357
.L401:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	mov	r5, #1
	bne	.L364
.L423:
	ldr	r0, .L426+8
	mov	r1, #0
	mov	r3, r0
	mov	r7, r0
.L367:
	ldr	r8, [r7, #28]
	cmp	r8, #0
	bne	.L365
	ldr	r7, [r2, #20]
	ldr	r9, [r2]
	add	r1, r1, r1, lsl #1
	add	r7, r7, r7, lsr #31
	ldr	r10, [r2, #4]
	add	r9, r9, r7, asr #1
	add	r7, r3, r1, lsl #4
	str	r9, [r3, r1, lsl #4]
	str	r4, [r7, #12]
	str	r4, [r7, #8]
	str	ip, [r7, #28]
	str	r8, [r7, #44]
	str	r10, [r7, #4]
.L366:
	mov	r1, #0
	ldr	r7, .L426+8
.L370:
	ldr	r8, [r7, #28]
	cmp	r8, #0
	bne	.L368
	ldr	r7, [r2, #20]
	ldr	r9, [r2]
	add	r1, r1, r1, lsl #1
	add	r7, r7, r7, lsr #31
	ldr	r10, [r2, #4]
	add	r9, r9, r7, asr #1
	add	r7, r3, r1, lsl #4
	str	r9, [r3, r1, lsl #4]
	str	r6, [r7, #12]
	str	r8, [r7, #8]
	str	ip, [r7, #28]
	str	r8, [r7, #44]
	str	r10, [r7, #4]
.L369:
	mov	r1, #0
.L372:
	ldr	r7, [r0, #28]
	cmp	r7, #0
	bne	.L371
	ldr	r0, [r2, #20]
	ldr	r8, [r2]
	add	r1, r1, r1, lsl #1
	add	r0, r0, r0, lsr #31
	ldr	r9, [r2, #4]
	add	r8, r8, r0, asr #1
	add	r0, r3, r1, lsl #4
	str	r8, [r3, r1, lsl #4]
	str	r4, [r0, #12]
	str	ip, [r0, #8]
	str	ip, [r0, #28]
	str	r7, [r0, #44]
	str	r9, [r0, #4]
	b	.L364
.L402:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	mov	r4, #1
	bne	.L377
.L424:
	ldr	r6, .L426+8
	mov	r1, #0
	mov	r3, r6
	mov	r8, r6
.L380:
	ldr	r7, [r8, #28]
	cmp	r7, #0
	bne	.L378
	ldr	r8, [r2, #16]
	ldr	r9, [r2]
	ldr	r10, [r2, #4]
	add	r1, r1, r1, lsl #1
	add	r8, r8, r8, lsr #31
	str	r9, [r3, r1, lsl #4]
	add	r8, r10, r8, asr #1
	add	r1, r3, r1, lsl #4
	str	r7, [r1, #12]
	str	r5, [r1, #8]
	str	r0, [r1, #28]
	str	r7, [r1, #44]
	str	r8, [r1, #4]
.L379:
	mov	r1, #0
	ldr	r7, .L426+8
.L383:
	ldr	r8, [r7, #28]
	cmp	r8, #0
	bne	.L381
	ldr	r9, [r2]
	add	r1, r1, r1, lsl #1
	ldr	r7, [r2, #4]
	str	r9, [r3, r1, lsl #4]
	add	r1, r3, r1, lsl #4
	str	ip, [r1, #12]
	str	ip, [r1, #8]
	str	r0, [r1, #28]
	str	r8, [r1, #44]
	str	r7, [r1, #4]
.L382:
	mov	r1, #0
	ldr	r7, .L426+8
.L386:
	ldr	r8, [r7, #28]
	cmp	r8, #0
	bne	.L384
	ldr	r7, [r2, #20]
	ldr	r9, [r2]
	add	r1, r1, r1, lsl #1
	ldr	r10, [r2, #4]
	add	r9, r9, r7
	add	r7, r3, r1, lsl #4
	str	r9, [r3, r1, lsl #4]
	str	ip, [r7, #12]
	str	r0, [r7, #8]
	str	r0, [r7, #28]
	str	r8, [r7, #44]
	str	r10, [r7, #4]
.L385:
	mov	r1, #0
	ldr	r7, .L426+8
.L389:
	ldr	r9, [r7, #28]
	cmp	r9, #0
	bne	.L387
	ldr	r7, [r2, #20]
	ldr	r8, [r2]
	ldr	r10, [r2, #4]
	add	r8, r8, r7
	ldr	r7, [r2, #16]
	add	r1, r1, r1, lsl #1
	add	r10, r10, r7
	sub	r8, r8, #1
	add	r7, r3, r1, lsl #4
	str	r8, [r3, r1, lsl #4]
	str	r0, [r7, #12]
	str	r0, [r7, #8]
	str	r0, [r7, #28]
	str	r9, [r7, #44]
	str	r10, [r7, #4]
.L388:
	mov	r1, #0
.L391:
	ldr	r7, [r6, #28]
	cmp	r7, #0
	bne	.L390
	ldr	r6, [r2, #4]
	ldr	r9, [r2, #16]
	ldr	r8, [r2]
	add	r1, r1, r1, lsl #1
	add	r6, r6, r9
	str	r8, [r3, r1, lsl #4]
	sub	r6, r6, #1
	add	r3, r3, r1, lsl #4
	str	r0, [r3, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #4]
	b	.L377
.L425:
	mov	r3, #0
	ldr	ip, .L426+8
.L398:
	ldr	r0, [ip, #28]
	cmp	r0, #0
	bne	.L397
	ldr	ip, [r1, r5]
	ldr	r8, [r2]
	ldr	r9, [r2, #4]
	add	r3, r3, r3, lsl #1
	add	ip, ip, ip, lsr #31
	add	r8, r8, ip, asr #1
	add	ip, r4, r3, lsl #4
	str	r8, [r4, r3, lsl #4]
	str	r9, [ip, #4]
	mov	r8, r0
	mov	r9, #1
	str	r7, [ip, #12]
	str	r0, [ip, #8]
	str	r6, [ip, #28]
	str	r0, [ip, #44]
	b	.L396
.L397:
	add	r3, r3, #1
	cmp	r3, #20
	add	ip, ip, #48
	bne	.L398
	b	.L396
.L365:
	add	r1, r1, #1
	cmp	r1, #20
	add	r7, r7, #48
	bne	.L367
	b	.L366
.L371:
	add	r1, r1, #1
	cmp	r1, #20
	add	r0, r0, #48
	bne	.L372
	b	.L364
.L368:
	add	r1, r1, #1
	cmp	r1, #20
	add	r7, r7, #48
	bne	.L370
	b	.L369
.L378:
	add	r1, r1, #1
	cmp	r1, #20
	add	r8, r8, #48
	bne	.L380
	b	.L379
.L390:
	add	r1, r1, #1
	cmp	r1, #20
	add	r6, r6, #48
	bne	.L391
	b	.L377
.L387:
	add	r1, r1, #1
	cmp	r1, #20
	add	r7, r7, #48
	bne	.L389
	b	.L388
.L384:
	add	r1, r1, #1
	cmp	r1, #20
	add	r7, r7, #48
	bne	.L386
	b	.L385
.L381:
	add	r1, r1, #1
	cmp	r1, #20
	add	r7, r7, #48
	bne	.L383
	b	.L382
.L427:
	.align	2
.L426:
	.word	fishbullettimer
	.word	fish
	.word	ebullet
	.word	sharkbullettimer
	.word	shark
	.word	starbullettimer
	.word	star
	.word	eelbullettimer
	.word	eel
	.word	fish+20
	.size	spawnEBullet, .-spawnEBullet
	.align	2
	.global	spawnFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnFish, %function
spawnFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L430
	ldr	r3, [r3]
	cmp	r3, #122
	bxle	lr
	b	spawnFish.part.0
.L431:
	.align	2
.L430:
	.word	fishtimer
	.size	spawnFish, .-spawnFish
	.align	2
	.global	spawnShark
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnShark, %function
spawnShark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L434
	ldr	r3, .L434+4
	ldr	r2, [r2]
	cmp	r2, r3
	bxle	lr
	b	spawnShark.part.0
.L435:
	.align	2
.L434:
	.word	sharktimer
	.word	549
	.size	spawnShark, .-spawnShark
	.align	2
	.global	spawnStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnStar, %function
spawnStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L438
	ldr	r3, [r3]
	cmp	r3, #700
	bxlt	lr
	b	spawnStar.part.0
.L439:
	.align	2
.L438:
	.word	startimer
	.size	spawnStar, .-spawnStar
	.align	2
	.global	spawnEel
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnEel, %function
spawnEel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L442
	ldr	r3, .L442+4
	ldr	r2, [r2]
	cmp	r2, r3
	bxle	lr
	b	spawnEel.part.0
.L443:
	.align	2
.L442:
	.word	eeltimer
	.word	629
	.size	spawnEel, .-spawnEel
	.align	2
	.global	spawnPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnPowerup, %function
spawnPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L446
	ldr	r3, [r3]
	cmp	r3, #1000
	bxlt	lr
	b	spawnPowerup.part.0
.L447:
	.align	2
.L446:
	.word	poweruptimer
	.size	spawnPowerup, .-spawnPowerup
	.align	2
	.global	hit
	.syntax unified
	.arm
	.fpu softvfp
	.type	hit, %function
hit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L457
	ldr	r2, [r3]
	cmp	r2, #0
	bxgt	lr
	ldr	r2, .L457+4
	ldr	r2, [r2]
	cmp	r2, #0
	bxne	lr
	ldr	r2, .L457+8
	ldr	r1, [r2]
	cmp	r1, #1
	bxeq	lr
	str	lr, [sp, #-4]!
	mov	ip, #1
	mov	lr, #200
	ldr	r0, .L457+12
	ldr	r1, [r0]
	sub	r1, r1, #1
	str	lr, [r3]
	str	r1, [r0]
	str	ip, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L458:
	.align	2
.L457:
	.word	shieldpowertimer
	.word	isSharkMode
	.word	gotHit
	.word	lives
	.size	hit, .-hit
	.align	2
	.global	updateFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFish, %function
updateFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L482
	ldr	r9, .L482+4
	ldr	fp, .L482+8
	ldr	r8, .L482+12
	sub	sp, sp, #20
	add	r7, r5, #480
	b	.L470
.L460:
	add	r5, r5, #48
	cmp	r5, r7
	beq	.L478
.L470:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	bne	.L460
	ldr	r0, [r5, #4]
	cmp	r0, #0
	ble	.L479
	ldr	r3, [r5, #12]
	add	r0, r0, r3
	str	r0, [r5, #4]
.L463:
	ldr	r4, .L482+16
	add	r2, r5, #16
	mov	r10, #0
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	add	r6, r4, #480
	b	.L462
.L464:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L480
.L462:
	ldr	ip, [r4, #28]
	cmp	ip, #1
	bne	.L464
	ldr	lr, [r4, #20]
	ldr	ip, [r4]
	add	lr, lr, #2
	sub	ip, ip, #1
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	ip, [r4, #4]
	add	r3, r3, #2
	str	lr, [sp, #8]
	str	ip, [sp]
	sub	r0, r0, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [fp]
	strne	r10, [r5, #28]
	addne	r3, r3, #10
	strne	r10, [r4, #28]
	add	r4, r4, #48
	strne	r3, [fp]
	add	r2, r5, #16
	cmp	r6, r4
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	bne	.L462
.L480:
	ldr	lr, [r8, #20]
	ldr	ip, [r8]
	sub	lr, lr, #2
	sub	ip, ip, #2
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r8, #16]
	ldr	ip, [r8, #4]
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L481
.L466:
	ldr	r2, [r5, #24]
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	rsb	r3, r3, #142606336
	add	r3, r3, #557056
	ldr	r1, .L482+20
	add	r3, r3, #2176
	add	r3, r3, #8
	cmp	r3, r1
	bcs	.L468
	ldr	r3, [r5, #36]
	ldr	r1, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
.L468:
	add	r2, r2, #1
	str	r2, [r5, #24]
	add	r5, r5, #48
	cmp	r5, r7
	bne	.L470
.L478:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L479:
	mov	r3, #0
	str	r3, [r5, #28]
	b	.L463
.L481:
	bl	hit
	b	.L466
.L483:
	.align	2
.L482:
	.word	fish
	.word	collision
	.word	score
	.word	sub
	.word	pbullet
	.word	286331153
	.size	updateFish, .-updateFish
	.align	2
	.global	updateShark
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShark, %function
updateShark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	ldr	r5, .L507
	ldr	r3, [r5, #28]
	cmp	r3, #1
	mov	r10, r6
	ldr	r9, .L507+4
	ldr	fp, .L507+8
	ldr	r8, .L507+12
	sub	sp, sp, #20
	beq	.L503
.L485:
	cmp	r6, #1
	add	r5, r5, #48
	bne	.L496
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L496:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	mov	r6, #1
	bne	.L485
.L503:
	ldr	r0, [r5, #4]
	cmp	r0, #0
	ble	.L504
	ldr	r3, [r5, #12]
	add	r0, r0, r3
	str	r0, [r5, #4]
.L488:
	ldr	r4, .L507+16
	add	r2, r5, #16
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	add	r7, r4, #480
	b	.L487
.L489:
	add	r4, r4, #48
	cmp	r7, r4
	beq	.L505
.L487:
	ldr	ip, [r4, #28]
	cmp	ip, #1
	bne	.L489
	ldr	lr, [r4, #20]
	ldr	ip, [r4]
	add	lr, lr, #2
	sub	ip, ip, #1
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	ip, [r4, #4]
	add	r3, r3, #2
	str	lr, [sp, #8]
	str	ip, [sp]
	sub	r0, r0, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [fp]
	strne	r10, [r5, #28]
	addne	r3, r3, #50
	strne	r10, [r4, #28]
	add	r4, r4, #48
	strne	r3, [fp]
	add	r2, r5, #16
	cmp	r7, r4
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	bne	.L487
.L505:
	ldr	lr, [r8, #20]
	ldr	ip, [r8]
	sub	lr, lr, #2
	add	ip, ip, #2
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r8, #16]
	ldr	ip, [r8, #4]
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L506
.L491:
	ldr	r2, [r5, #24]
	ldr	r1, .L507+20
	smull	r3, r1, r2, r1
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L493
	ldr	r1, [r5, #36]
	ldr	r0, [r5, #40]
	add	r1, r1, #1
	cmp	r1, r0
	movlt	r3, r1
	str	r3, [r5, #36]
.L493:
	add	r2, r2, #1
	str	r2, [r5, #24]
	b	.L485
.L504:
	str	r10, [r5, #28]
	b	.L488
.L506:
	bl	hit
	b	.L491
.L508:
	.align	2
.L507:
	.word	shark
	.word	collision
	.word	score
	.word	sub
	.word	pbullet
	.word	1717986919
	.size	updateShark, .-updateShark
	.align	2
	.global	updateStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStar, %function
updateStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L532
	ldr	r3, [r5, #28]
	cmp	r3, #1
	mov	r6, #0
	ldr	r9, .L532+4
	ldr	r10, .L532+8
	ldr	r8, .L532+12
	ldr	fp, .L532+16
	sub	sp, sp, #20
	beq	.L528
.L510:
	cmp	r6, #1
	add	r5, r5, #48
	bne	.L521
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L521:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	mov	r6, #1
	bne	.L510
.L528:
	ldr	r0, [r5, #4]
	cmp	r0, #0
	ble	.L529
	ldr	r3, [r5, #12]
	add	r0, r0, r3
	str	r0, [r5, #4]
.L513:
	ldr	r4, .L532+20
	add	r2, r5, #16
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	add	r7, r4, #480
	b	.L512
.L514:
	add	r4, r4, #48
	cmp	r7, r4
	beq	.L530
.L512:
	ldr	ip, [r4, #28]
	cmp	ip, #1
	bne	.L514
	ldr	lr, [r4, #20]
	ldr	ip, [r4]
	add	lr, lr, #2
	sub	ip, ip, #1
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	ip, [r4, #4]
	add	r3, r3, #2
	str	lr, [sp, #8]
	str	ip, [sp]
	sub	r0, r0, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, [r10]
	strne	r2, [r5, #28]
	strne	r2, [r4, #28]
	addne	r3, r3, #50
	add	r4, r4, #48
	strne	r3, [r10]
	add	r2, r5, #16
	cmp	r7, r4
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	bne	.L512
.L530:
	ldr	lr, [r8, #20]
	ldr	ip, [r8]
	sub	lr, lr, #2
	add	ip, ip, #2
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r8, #16]
	ldr	ip, [r8, #4]
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L531
.L516:
	ldr	r2, [r5, #24]
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	rsb	r3, r3, #142606336
	add	r3, r3, #557056
	add	r3, r3, #2176
	add	r3, r3, #8
	cmp	r3, fp
	bcs	.L518
	ldr	r3, [r5, #36]
	ldr	r1, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
.L518:
	add	r2, r2, #1
	str	r2, [r5, #24]
	b	.L510
.L529:
	mov	r3, #0
	str	r3, [r5, #28]
	b	.L513
.L531:
	bl	hit
	b	.L516
.L533:
	.align	2
.L532:
	.word	star
	.word	collision
	.word	score
	.word	sub
	.word	286331153
	.word	pbullet
	.size	updateStar, .-updateStar
	.align	2
	.global	updateEel
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEel, %function
updateEel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	ldr	r5, .L562
	ldr	r3, [r5, #28]
	cmp	r3, #1
	mov	r10, r6
	ldr	r9, .L562+4
	ldr	fp, .L562+8
	ldr	r8, .L562+12
	sub	sp, sp, #20
	beq	.L557
.L535:
	cmp	r6, #1
	add	r5, r5, #48
	bne	.L548
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L548:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	mov	r6, #1
	bne	.L535
.L557:
	ldr	r0, [r5, #4]
	cmp	r0, #0
	ble	.L558
	ldr	r3, [r5, #12]
	ldr	r2, [r5]
	add	r0, r3, r0
	cmp	r2, #16
	str	r0, [r5, #4]
	ldr	r3, [r5, #20]
	ble	.L538
	rsb	r1, r3, #144
	cmp	r2, r1
	blt	.L559
.L538:
	ldr	r1, [r5, #8]
	rsb	r1, r1, #0
	str	r1, [r5, #8]
.L539:
	add	r1, r2, r1
	str	r1, [r5]
	ldr	r0, [r5, #4]
	b	.L540
.L558:
	str	r10, [r5, #28]
	ldr	r1, [r5]
	ldr	r3, [r5, #20]
.L540:
	ldr	r4, .L562+16
	ldr	r2, [r5, #16]
	add	r7, r4, #480
	b	.L537
.L541:
	add	r4, r4, #48
	cmp	r4, r7
	beq	.L560
.L537:
	ldr	ip, [r4, #28]
	cmp	ip, #1
	bne	.L541
	ldr	lr, [r4, #20]
	ldr	ip, [r4]
	add	lr, lr, #2
	sub	ip, ip, #1
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	ip, [r4, #4]
	add	r3, r3, #2
	str	lr, [sp, #8]
	str	ip, [sp]
	sub	r0, r0, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [fp]
	strne	r10, [r5, #28]
	addne	r3, r3, #50
	strne	r10, [r4, #28]
	add	r4, r4, #48
	strne	r3, [fp]
	add	r2, r5, #16
	cmp	r4, r7
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	bne	.L537
.L560:
	ldr	lr, [r8, #20]
	ldr	ip, [r8]
	sub	lr, lr, #2
	sub	ip, ip, #2
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	lr, [r8, #16]
	ldr	ip, [r8, #4]
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L561
.L543:
	ldr	r2, [r5, #24]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	rsb	r3, r3, #306184192
	add	r3, r3, #598016
	ldr	r1, .L562+20
	add	r3, r3, #1168
	add	r3, r3, #2
	cmp	r1, r3, ror #1
	bcc	.L545
	ldr	r3, [r5, #36]
	ldr	r1, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r1
	movlt	r1, r3
	movge	r1, r10
	str	r1, [r5, #36]
.L545:
	add	r2, r2, #1
	str	r2, [r5, #24]
	b	.L535
.L561:
	bl	hit
	b	.L543
.L559:
	ldr	r1, [r5, #8]
	b	.L539
.L563:
	.align	2
.L562:
	.word	eel
	.word	collision
	.word	score
	.word	sub
	.word	pbullet
	.word	306783378
	.size	updateEel, .-updateEel
	.align	2
	.global	updateEBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEBullets, %function
updateEBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L580
	mov	r8, #0
	ldr	r5, .L580+4
	ldr	r7, .L580+8
	sub	sp, sp, #16
	add	r6, r4, #960
	b	.L571
.L566:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L579
.L571:
	ldr	r3, [r4, #28]
	cmp	r3, #1
	bne	.L566
	ldr	r0, [r4, #4]
	sub	r3, r0, #3
	cmp	r3, #236
	ldr	r1, [r4]
	bhi	.L567
	sub	r3, r1, #17
	cmp	r3, #126
	bls	.L568
.L567:
	str	r8, [r4, #28]
.L569:
	ldr	r3, [r5]
	ldr	r2, [r5, #20]
	ldr	lr, [r5, #16]
	ldr	ip, [r5, #4]
	add	r3, r3, #2
	stmib	sp, {r3, lr}
	sub	r2, r2, #2
	str	r2, [sp, #12]
	str	ip, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L566
	add	r4, r4, #48
	bl	hit
	cmp	r4, r6
	bne	.L571
.L579:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L568:
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	add	r3, r3, r0
	add	r1, r1, r2
	mov	r0, r3
	stm	r4, {r1, r3}
	b	.L569
.L581:
	.align	2
.L580:
	.word	ebullet
	.word	sub
	.word	collision
	.size	updateEBullets, .-updateEBullets
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L606
	bl	updateSub
	bl	updatePBullets
	bl	updateFish
	bl	updateShark
	bl	updateStar
	bl	updateEel
	bl	updateEBullets
	bl	updateShPowerup
	bl	updateStPowerup
	bl	updateShieldPowerup
	ldr	r3, [r8]
	ldr	lr, .L606+4
	add	r3, r3, #1
	str	r3, [r8]
	cmp	r3, #122
	ldr	r3, [lr]
	ldr	ip, .L606+8
	add	r3, r3, #1
	str	r3, [lr]
	ldr	r3, [ip]
	ldr	r6, .L606+12
	add	r3, r3, #1
	str	r3, [ip]
	ldr	r3, [r6]
	ldr	r2, .L606+16
	add	r3, r3, #1
	str	r3, [r6]
	ldr	r3, [r2]
	ldr	r5, .L606+20
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r5]
	ldr	r0, .L606+24
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r3, [r0]
	ldr	r4, .L606+28
	add	r3, r3, #1
	str	r3, [r0]
	ldr	r3, [r4]
	ldr	r1, .L606+32
	add	r3, r3, #1
	str	r3, [r4]
	ldr	r3, [r1]
	ldr	r7, .L606+36
	add	r3, r3, #1
	str	r3, [r1]
	ldr	r3, [r7]
	ldr	r8, .L606+40
	add	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r8]
	ldr	lr, .L606+44
	sub	r3, r3, #1
	str	r3, [r8]
	ldr	r3, [lr]
	ldr	ip, .L606+48
	sub	r3, r3, #1
	str	r3, [lr]
	ldr	r3, [ip]
	ldr	r2, .L606+52
	sub	r3, r3, #1
	str	r3, [ip]
	ldr	r3, [r2]
	ldr	r0, .L606+56
	ldr	r1, .L606+60
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r2, [r0]
	ldr	r3, [r1]
	add	r2, r2, #1
	add	r3, r3, #2
	str	r2, [r0]
	str	r3, [r1]
	blgt	spawnFish.part.0
.L583:
	ldr	r9, .L606+64
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L604
.L585:
	ldr	r3, [r5]
	cmp	r3, #700
	blge	spawnStar.part.0
.L588:
	ldr	r2, [r4]
	ldr	r3, .L606+68
	cmp	r2, r3
	blgt	spawnEel.part.0
.L589:
	ldr	r3, .L606+72
	ldr	r3, [r3]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, .L606+76
	strle	r2, [r3]
	ldr	r3, [r9]
	cmp	r3, #0
	movne	r3, #100
	strne	r3, [r8]
	ldr	r3, .L606+80
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L592
	ldr	r3, .L606+84
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r3, #1
	streq	r3, [r9]
.L592:
	ldr	r4, .L606+88
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L605
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L604:
	bl	spawnEBullet
	ldr	r2, [r6]
	ldr	r3, .L606+92
	cmp	r2, r3
	blgt	spawnShark.part.0
.L586:
	ldr	r3, [r7]
	cmp	r3, #1000
	blt	.L585
	bl	spawnPowerup.part.0
	b	.L585
.L605:
	ldr	r3, .L606+96
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L606+100
	ldr	r3, .L606+104
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L607:
	.align	2
.L606:
	.word	fishtimer
	.word	pbullettimer
	.word	fishbullettimer
	.word	sharktimer
	.word	sharkbullettimer
	.word	startimer
	.word	starbullettimer
	.word	eeltimer
	.word	eelbullettimer
	.word	poweruptimer
	.word	sharkpowertimer
	.word	starpowertimer
	.word	shieldpowertimer
	.word	rainbowtimer
	.word	hOff2
	.word	hOff1
	.word	isSharkMode
	.word	629
	.word	lives
	.word	islost
	.word	oldButtons
	.word	buttons
	.word	gotHit
	.word	549
	.word	hitsound_length
	.word	hitsound_data
	.word	playSoundB
	.size	updateGame, .-updateGame
	.comm	gotHit,4,4
	.comm	isSharkMode,4,4
	.comm	lives,4,4
	.comm	score,4,4
	.comm	shadowOAM,1024,4
	.comm	shieldpowerup,48,4
	.comm	stpowerup,48,4
	.comm	shpowerup,48,4
	.comm	ebullet,960,4
	.comm	pbullet,480,4
	.comm	eel,96,4
	.comm	star,96,4
	.comm	shark,96,4
	.comm	fish,480,4
	.comm	sub,48,4
	.comm	rainbowtimer,4,4
	.comm	shieldpowertimer,4,4
	.comm	sharkpowertimer,4,4
	.comm	starpowertimer,4,4
	.comm	poweruptimer,4,4
	.comm	eelbullettimer,4,4
	.comm	eeltimer,4,4
	.comm	starbullettimer,4,4
	.comm	startimer,4,4
	.comm	sharkbullettimer,4,4
	.comm	sharktimer,4,4
	.comm	fishbullettimer,4,4
	.comm	fishtimer,4,4
	.comm	pbullettimer,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	hOff2,4,4
	.comm	vOff2,4,4
	.comm	hOff1,4,4
	.comm	vOff1,4,4
	.comm	islost,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
