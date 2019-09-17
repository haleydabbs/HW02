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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r0, r0, r0, lsl #4
	ldr	r3, [r3]
	add	r1, r1, r0, lsl #4
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L5
	rsb	r0, r0, r0, lsl #4
	add	r0, r2, r0, lsl #4
	add	r1, r0, r1
	mov	r0, #0
	ldr	r3, .L13
	ldr	r3, [r3]
	rsb	r4, r2, r2, lsl #31
	add	r1, r3, r1, lsl #1
	lsl	r4, r4, #1
.L7:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L10
.L8:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L8
.L10:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L7
.L5:
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawSunset
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSunset, %function
drawSunset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L23
	push	{r4, r5, lr}
	mov	r3, #0
	ldr	r0, .L23+4
	ldr	r2, [r2]
	ldr	r5, .L23+8
	ldr	r4, .L23+12
	ldr	ip, .L23+16
	ldr	r1, .L23+20
	ldr	lr, .L23+24
	b	.L20
.L17:
	add	r3, r3, #1
	add	r2, r2, #2
.L20:
	cmp	r3, #9600
	strhcc	lr, [r2]	@ movhi
	bcc	.L17
	cmp	r3, #19200
	strhlt	r1, [r2]	@ movhi
	blt	.L17
	cmp	r3, r0
	strhle	ip, [r2]	@ movhi
	ble	.L17
	cmp	r3, r4
	strh	r5, [r2]	@ movhi
	bne	.L17
	pop	{r4, r5, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	28799
	.word	32057
	.word	38399
	.word	31959
	.word	31860
	.word	31759
	.size	drawSunset, .-drawSunset
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L26:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L26
	mov	r2, #67108864
.L27:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L27
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [sp, #4]
	add	r3, r1, r3
	cmp	r3, ip
	ble	.L36
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	ble	.L36
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	ble	.L36
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	ble	.L36
	ldr	r3, .L37
	ldr	r0, [r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L36:
	mov	r0, #0
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LANCHOR1
	.size	collision, .-collision
	.global	collided
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collided, %object
	.size	collided, 4
collided:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
