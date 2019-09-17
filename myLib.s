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
	subs	lr, r2, #0
	ldrh	ip, [sp, #8]
	ble	.L5
	rsb	r0, r0, r0, lsl #4
	add	r0, r3, r0, lsl #4
	add	r1, r0, r1
	mov	r0, #0
	ldr	r2, .L13
	ldr	r2, [r2]
	rsb	r4, r3, r3, lsl #31
	add	r1, r2, r1, lsl #1
	lsl	r4, r4, #1
.L7:
	cmp	r3, #0
	addgt	r2, r1, r4
	ble	.L10
.L8:
	strh	ip, [r2], #2	@ movhi
	cmp	r2, r1
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
	@ link register save eliminated.
	ldr	r3, .L19
	ldr	r2, .L19+4
	ldr	r0, [r3]
	ldr	r1, .L19+8
	sub	r3, r0, #2
	add	r2, r0, r2
.L16:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L16
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	76798
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
.L22:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L22
	mov	r2, #67108864
.L23:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L23
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
	ble	.L32
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	ble	.L32
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	ble	.L32
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	ble	.L32
	ldr	r3, .L33
	ldr	r0, [r3]
	rsbs	r0, r0, #1
	movcc	r0, #0
	bx	lr
.L32:
	mov	r0, #0
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR1
	.size	collision, .-collision
	.align	2
	.global	drawStarCatcher
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStarCatcher, %function
drawStarCatcher:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L42
	rsb	ip, r0, r0, lsl #4
	ldr	r4, [lr]
	add	r0, r2, r1
	add	r0, r0, ip, lsl #4
	add	r0, r4, r0, lsl #1
	lsl	ip, ip, #4
	add	r4, r4, r1, lsl #1
	sub	lr, r2, #3
.L38:
	cmp	r2, #0
	ble	.L36
	add	r1, r4, ip, lsl #1
.L37:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, r0
	bne	.L37
.L36:
	sub	r2, r2, #1
	add	r0, r0, #476
	cmp	r2, lr
	add	r0, r0, #2
	add	ip, ip, #240
	bne	.L38
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.size	drawStarCatcher, .-drawStarCatcher
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
