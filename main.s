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
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r2, .L4
	ldr	ip, .L4+4
	ldrh	r0, [r2, #48]
	ldr	r1, .L4+8
	ldr	r2, .L4+12
	sub	sp, sp, #12
	strh	ip, [r3]	@ movhi
	ldr	r3, .L4+16
	strh	r0, [r1]	@ movhi
	strh	r4, [r2]	@ movhi
	ldr	r5, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L4+24
	ldr	r3, .L4+28
	str	r4, [r2]
	str	r4, [r5]
	mov	lr, pc
	bx	r3
	mov	r2, r0
	mov	r3, #5
	mov	ip, #1
	ldr	r1, .L4+32
	smull	lr, r0, r1, r2
	asr	r1, r2, #31
	rsb	r1, r1, r0, asr r3
	rsb	lr, r1, r1, lsl #4
	ldr	r0, [r5]
	rsb	r1, r1, lr, lsl #2
	ldr	r5, .L4+36
	ldr	lr, .L4+40
	str	r5, [sp]
	sub	r1, r2, r1, lsl #2
	str	r0, [lr]
	ldr	r4, .L4+44
	ldr	lr, .L4+48
	ldr	r2, .L4+52
	str	r1, [r4]
	str	r1, [r2]
	ldr	r4, .L4+56
	mov	r2, r3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	67109120
	.word	1027
	.word	buttons
	.word	oldButtons
	.word	drawSunset
	.word	s1y
	.word	starCounter
	.word	rand
	.word	582368447
	.word	32767
	.word	s1Oldy
	.word	s1x
	.word	s1Vel
	.word	s1Oldx
	.word	drawRect
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L7
	ldr	r1, .L7+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	add	r3, r3, r1
	str	r3, [r2]
	bx	lr
.L8:
	.align	2
.L7:
	.word	s1y
	.word	s1Vel
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #5
	push	{r4, r5, r6, r7, r8, lr}
	ldr	ip, .L11
	ldr	r4, .L11+4
	ldr	r5, .L11+8
	sub	sp, sp, #8
	mov	r2, r3
	ldr	r1, [r4]
	ldr	r0, [r5]
	str	ip, [sp]
	ldr	r8, .L11+12
	mov	lr, pc
	bx	r8
	mov	r3, #5
	ldr	r6, .L11+16
	ldr	r7, .L11+20
	ldr	ip, .L11+24
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r7]
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, [r7]
	ldr	r3, [r6]
	str	r2, [r5]
	str	r3, [r4]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	31759
	.word	s1Oldx
	.word	s1Oldy
	.word	drawRect
	.word	s1x
	.word	s1y
	.word	32767
	.size	draw, .-draw
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
	push	{r7, lr}
	ldr	r3, .L16
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	ldr	r9, .L16+12
	ldr	r5, .L16+16
	ldr	r4, .L16+20
	ldr	r10, .L16+24
	ldr	r8, .L16+28
	ldr	r7, .L16+32
	ldr	r6, .L16+36
.L14:
	ldrh	r3, [r5]
	strh	r3, [r9]	@ movhi
	ldr	r1, [r10]
	ldr	r3, [r4]
	ldrh	r2, [r6, #48]
	add	r3, r3, r1
	strh	r2, [r5]	@ movhi
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	b	.L14
.L17:
	.align	2
.L16:
	.word	time
	.word	srand
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	s1y
	.word	s1Vel
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	starGenerator
	.syntax unified
	.arm
	.fpu softvfp
	.type	starGenerator, %function
starGenerator:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #2
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	rand
	.word	582368447
	.size	starGenerator, .-starGenerator
	.comm	s1Vel,4,4
	.comm	s1Oldy,4,4
	.comm	s1Oldx,4,4
	.comm	s1y,4,4
	.comm	s1x,4,4
	.comm	starCounter,4,4
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
