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
	.type	starReset.part.0, %function
starReset.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L4
	push	{r4, lr}
	ldr	r4, .L4+4
	str	r2, [r3]
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L4+12
	sub	r0, r0, r3, lsl #2
	str	r0, [r2]
	mov	lr, pc
	bx	r4
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L4+16
	add	r0, r0, #1
	str	r0, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	s2y
	.word	rand
	.word	582368447
	.word	s2x
	.word	s2Vel
	.size	starReset.part.0, .-starReset.part.0
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, #0
	ldr	r2, .L8
	ldr	ip, .L8+4
	ldrh	r0, [r2, #48]
	ldr	r1, .L8+8
	ldr	r2, .L8+12
	ldr	r5, .L8+16
	sub	sp, sp, #12
	strh	ip, [r3]	@ movhi
	ldr	r8, .L8+20
	ldr	r3, .L8+24
	strh	r9, [r2]	@ movhi
	strh	r0, [r1]	@ movhi
	mov	lr, pc
	bx	r3
	str	r9, [r5]
	mov	lr, pc
	bx	r8
	ldr	r6, .L8+28
	smull	r2, r3, r6, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #5
	rsb	r3, r2, r2, lsl #4
	ldr	r1, [r5]
	ldr	ip, .L8+32
	ldr	r7, .L8+36
	rsb	r2, r2, r3, lsl #2
	ldr	r3, .L8+40
	sub	r2, r0, r2, lsl #2
	str	r2, [ip]
	str	r2, [r7]
	str	r1, [r3]
	mov	lr, pc
	bx	r8
	subs	r3, r9, r0
	and	r3, r3, #3
	ldr	r4, .L8+44
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L8+48
	add	r0, r0, #1
	str	r9, [r4]
	str	r0, [r3]
	mov	lr, pc
	bx	r8
	smull	r3, r6, r0, r6
	asr	r3, r0, #31
	rsb	r3, r3, r6, asr #5
	rsb	r2, r3, r3, lsl #4
	ldr	r1, [r4]
	ldr	ip, .L8+52
	ldr	r6, .L8+56
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L8+60
	sub	r3, r0, r3, lsl #2
	str	r3, [ip]
	str	r3, [r6]
	str	r1, [r2]
	mov	lr, pc
	bx	r8
	mov	r3, #4
	subs	r1, r9, r0
	and	r1, r1, #3
	ldr	lr, .L8+64
	and	r2, r0, #3
	ldr	r8, .L8+68
	rsbpl	r2, r1, #0
	add	ip, r2, #1
	ldr	r0, [r5]
	mov	r2, r3
	ldr	r5, .L8+72
	ldr	r1, [r7]
	str	r8, [sp]
	str	ip, [lr]
	mov	lr, pc
	bx	r5
	mov	r3, #4
	str	r8, [sp]
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r6, #992
	mov	r3, #20
	mov	r2, #3
	mov	r0, #120
	mov	r1, #110
	mov	lr, #2
	ldr	r4, .L8+76
	ldr	ip, .L8+80
	str	r6, [sp]
	str	r3, [r4]
	str	r2, [ip]
	ldr	r6, .L8+84
	ldr	ip, .L8+88
	ldr	r4, .L8+92
	str	r0, [r6]
	str	r1, [r4]
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	67109120
	.word	1027
	.word	buttons
	.word	oldButtons
	.word	s1y
	.word	rand
	.word	drawSunset
	.word	582368447
	.word	s1Oldx
	.word	s1x
	.word	s1Oldy
	.word	s2y
	.word	s1Vel
	.word	s2Oldx
	.word	s2x
	.word	s2Oldy
	.word	s2Vel
	.word	32767
	.word	drawRect
	.word	cWidth
	.word	cHeight
	.word	cy
	.word	cVel
	.word	cx
	.size	initialize, .-initialize
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
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #2
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	rand
	.word	582368447
	.size	starGenerator, .-starGenerator
	.align	2
	.global	starSpeedGenerator
	.syntax unified
	.arm
	.fpu softvfp
	.type	starSpeedGenerator, %function
starSpeedGenerator:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r0, r0, #1
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	rand
	.size	starSpeedGenerator, .-starSpeedGenerator
	.align	2
	.global	starReset
	.syntax unified
	.arm
	.fpu softvfp
	.type	starReset, %function
starReset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	beq	.L25
	cmp	r0, #2
	bxne	lr
	b	starReset.part.0
.L25:
	mov	r2, #0
	ldr	r3, .L26
	push	{r4, lr}
	ldr	r4, .L26+4
	str	r2, [r3]
	mov	lr, pc
	bx	r4
	ldr	r3, .L26+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L26+12
	sub	r0, r0, r3, lsl #2
	str	r0, [r2]
	mov	lr, pc
	bx	r4
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L26+16
	add	r0, r0, #1
	str	r0, [r3]
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	s1y
	.word	rand
	.word	582368447
	.word	s1x
	.word	s1Vel
	.size	starReset, .-starReset
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L40
	ldrh	r3, [r3, #48]
	tst	r3, #32
	sub	sp, sp, #16
	beq	.L37
.L29:
	ldr	r3, .L40
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L38
.L30:
	ldr	r4, .L40+4
	ldr	r1, [r4]
	cmp	r1, #159
	bgt	.L33
	mov	r3, #4
	ldr	r9, .L40+8
	ldr	r8, .L40+12
	ldr	r7, .L40+16
	ldr	ip, [r8]
	ldr	r2, [r7]
	ldr	lr, [r9]
	ldr	r10, .L40+20
	stm	sp, {r2, ip, lr}
	ldr	r0, [r10]
	str	r0, [sp, #12]
	ldr	r0, .L40+24
	mov	r2, r3
	ldr	r0, [r0]
	ldr	r6, .L40+28
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L39
.L33:
	mov	r0, #1
	bl	starReset
	ldr	r5, .L40+32
.L32:
	ldr	r2, .L40+36
	ldr	r3, .L40+40
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4]
	ldr	r3, [r5]
	add	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r4]
	str	r3, [r5]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L39:
	ldr	r5, .L40+32
	ldr	r1, [r5]
	cmp	r1, #159
	ble	.L34
.L35:
	bl	starReset.part.0
	b	.L32
.L38:
	ldr	r4, .L40+16
	ldr	r8, .L40+8
	ldr	r7, .L40+20
	ldr	r6, .L40+12
	ldr	ip, .L40+44
	ldr	r3, [r8]
	ldr	r2, [r7]
	ldr	r1, [r4]
	ldr	r0, [r6]
	ldr	r5, .L40+48
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	ip, #992
	ldr	r3, .L40+52
	ldr	r1, [r4]
	ldr	r3, [r3]
	add	r1, r1, r3
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r0, [r6]
	str	ip, [sp]
	str	r1, [r4]
	mov	lr, pc
	bx	r5
	b	.L30
.L37:
	ldr	r4, .L40+16
	ldr	r8, .L40+8
	ldr	r7, .L40+20
	ldr	r6, .L40+12
	ldr	ip, .L40+44
	ldr	r3, [r8]
	ldr	r2, [r7]
	ldr	r1, [r4]
	ldr	r0, [r6]
	ldr	r5, .L40+48
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	ip, #992
	ldr	r3, .L40+52
	ldr	r1, [r4]
	ldr	r3, [r3]
	sub	r1, r1, r3
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r0, [r6]
	str	ip, [sp]
	str	r1, [r4]
	mov	lr, pc
	bx	r5
	b	.L29
.L34:
	mov	r3, #4
	ldr	r2, [r7]
	ldr	ip, [r8]
	ldr	lr, [r9]
	ldr	r0, [r10]
	stm	sp, {r2, ip, lr}
	str	r0, [sp, #12]
	ldr	r0, .L40+56
	mov	r2, r3
	ldr	r0, [r0]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L35
	b	.L32
.L41:
	.align	2
.L40:
	.word	67109120
	.word	s1y
	.word	cWidth
	.word	cy
	.word	cx
	.word	cHeight
	.word	s1x
	.word	collision
	.word	s2y
	.word	s1Vel
	.word	s2Vel
	.word	31759
	.word	drawRect
	.word	cVel
	.word	s2x
	.size	update, .-update
	.align	2
	.global	starDraw
	.syntax unified
	.arm
	.fpu softvfp
	.type	starDraw, %function
starDraw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L44
	ldr	r6, .L44+4
	ldr	r7, .L44+8
	sub	sp, sp, #12
	ldr	r4, .L44+12
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r6]
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	str	r7, [sp]
	ldr	r1, .L44+16
	ldr	r0, .L44+20
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r9, .L44+24
	ldr	r10, .L44+28
	ldr	fp, .L44+32
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r10]
	str	fp, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r7, .L44+36
	ldr	r8, .L44+40
	str	fp, [sp]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r4
	ldr	r0, [r10]
	ldr	r1, [r9]
	ldr	r2, [r8]
	ldr	r3, [r7]
	str	r0, [r6]
	str	r1, [r5]
	ldr	r0, .L44+20
	ldr	r1, .L44+16
	str	r2, [r0]
	str	r3, [r1]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	s1Oldx
	.word	s1Oldy
	.word	31759
	.word	drawRect
	.word	s2Oldx
	.word	s2Oldy
	.word	s1x
	.word	s1y
	.word	32767
	.word	s2x
	.word	s2y
	.size	starDraw, .-starDraw
	.align	2
	.global	starCatcherDraw
	.syntax unified
	.arm
	.fpu softvfp
	.type	starCatcherDraw, %function
starCatcherDraw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #992
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	str	r1, [sp]
	ldr	r4, .L48
	ldr	r5, .L48+4
	ldr	r3, .L48+8
	ldr	r2, .L48+12
	ldr	r1, [r4]
	ldr	r0, [r5]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r6, .L48+16
	mov	lr, pc
	bx	r6
	ldr	r0, [r5]
	ldr	r2, [r4]
	ldr	r1, .L48+20
	ldr	r3, .L48+24
	str	r0, [r1]
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	cx
	.word	cy
	.word	cWidth
	.word	cHeight
	.word	drawRect
	.word	cOldy
	.word	cOldx
	.size	starCatcherDraw, .-starCatcherDraw
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
	push	{r4, lr}
	bl	starDraw
	pop	{r4, lr}
	b	starCatcherDraw
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
	ldr	r3, .L55
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+8
	mov	lr, pc
	bx	r3
	ldr	r10, .L55+12
	ldr	r4, .L55+16
	ldr	r9, .L55+20
	ldr	r8, .L55+24
	ldr	r7, .L55+28
	ldr	r6, .L55+32
	ldr	r5, .L55+36
.L53:
	ldrh	r3, [r4]
	strh	r3, [r10]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L53
.L56:
	.align	2
.L55:
	.word	time
	.word	srand
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	starDraw
	.word	starCatcherDraw
	.word	67109120
	.size	main, .-main
	.comm	cVel,4,4
	.comm	cHeight,4,4
	.comm	cWidth,4,4
	.comm	cOldy,4,4
	.comm	cOldx,4,4
	.comm	cy,4,4
	.comm	cx,4,4
	.comm	s2Oldy,4,4
	.comm	s2Oldx,4,4
	.comm	s2Vel,4,4
	.comm	s2y,4,4
	.comm	s2x,4,4
	.comm	s1Vel,4,4
	.comm	s1Oldy,4,4
	.comm	s1Oldx,4,4
	.comm	s1y,4,4
	.comm	s1x,4,4
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
