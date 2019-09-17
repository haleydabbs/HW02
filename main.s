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
	.type	pointsDraw.part.0, %function
pointsDraw.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L7
	ldr	r2, [r5]
	cmp	r2, #0
	sub	sp, sp, #12
	ble	.L1
	mov	r4, #0
	ldr	r9, .L7+4
	ldr	r8, .L7+8
	ldr	r7, .L7+12
	ldr	r6, .L7+16
.L3:
	mov	r3, #3
	ldr	r1, [r9]
	ldr	r0, [r8]
	add	r2, r2, r2, lsl #2
	add	r1, r2, r1
	str	r6, [sp]
	mov	r2, r3
	add	r0, r0, r3
	mov	lr, pc
	bx	r7
	ldr	r2, [r5]
	add	r4, r4, #1
	cmp	r2, r4
	bgt	.L3
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	counter
	.word	pBoxX
	.word	pBoxY
	.word	drawRect
	.word	32767
	.size	pointsDraw.part.0, .-pointsDraw.part.0
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
	mov	r4, #0
	ldr	r2, .L11
	ldr	lr, .L11+4
	ldrh	ip, [r2, #48]
	ldr	r1, .L11+8
	ldr	r2, .L11+12
	ldr	r6, .L11+16
	ldr	r0, .L11+20
	sub	sp, sp, #12
	strh	lr, [r3]	@ movhi
	ldr	r9, .L11+24
	ldr	r3, .L11+28
	str	r4, [r2]
	strh	r4, [r1]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r3
	str	r4, [r6]
	mov	lr, pc
	bx	r9
	ldr	r7, .L11+32
	smull	r2, r3, r7, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #5
	rsb	r3, r2, r2, lsl #4
	ldr	r1, [r6]
	ldr	ip, .L11+36
	ldr	r8, .L11+40
	rsb	r2, r2, r3, lsl #2
	ldr	r3, .L11+44
	sub	r2, r0, r2, lsl #2
	str	r2, [ip]
	str	r2, [r8]
	str	r1, [r3]
	mov	lr, pc
	bx	r9
	subs	r3, r4, r0
	and	r3, r3, #3
	ldr	r5, .L11+48
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L11+52
	add	r0, r0, #1
	str	r0, [r3]
	str	r4, [r5]
	mov	lr, pc
	bx	r9
	smull	r3, r7, r0, r7
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #5
	rsb	r2, r3, r3, lsl #4
	ldr	r1, [r5]
	ldr	r7, .L11+56
	ldr	ip, .L11+60
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L11+64
	sub	r3, r0, r3, lsl #2
	str	r3, [r7]
	str	r3, [ip]
	str	r1, [r2]
	mov	lr, pc
	bx	r9
	mov	r3, #4
	subs	r1, r4, r0
	and	r1, r1, #3
	ldr	lr, .L11+68
	and	r2, r0, #3
	ldr	r9, .L11+72
	rsbpl	r2, r1, #0
	add	ip, r2, #1
	ldr	r0, [r6]
	mov	r2, r3
	ldr	r6, .L11+76
	ldr	r1, [r8]
	str	r9, [sp]
	str	ip, [lr]
	mov	lr, pc
	bx	r6
	mov	r3, #4
	str	r9, [sp]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r6
	mov	r3, #20
	mov	r2, #3
	mov	r0, #120
	mov	r1, #110
	mov	lr, #2
	ldr	r7, .L11+80
	ldr	r5, .L11+84
	ldr	ip, .L11+88
	str	r7, [sp]
	str	r3, [r5]
	str	r2, [ip]
	ldr	r7, .L11+92
	ldr	ip, .L11+96
	ldr	r5, .L11+100
	str	r0, [r7]
	str	r1, [r5]
	str	lr, [ip]
	mov	lr, pc
	bx	r6
	mov	r1, #194
	mov	r0, #147
	mov	r3, #43
	mov	r2, #10
	ldr	lr, .L11+104
	ldr	ip, .L11+108
	ldr	r7, .L11+112
	ldr	r5, .L11+116
	str	r4, [sp]
	str	r1, [r7]
	str	r0, [r5]
	str	r3, [lr]
	str	r2, [ip]
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	67109120
	.word	1027
	.word	oldButtons
	.word	counter
	.word	s1y
	.word	buttons
	.word	rand
	.word	drawBG
	.word	582368447
	.word	s1Oldx
	.word	s1x
	.word	s1Oldy
	.word	s2y
	.word	s1Vel
	.word	s2x
	.word	s2Oldx
	.word	s2Oldy
	.word	s2Vel
	.word	32767
	.word	drawRect
	.word	1023
	.word	cWidth
	.word	cHeight
	.word	cy
	.word	cVel
	.word	cx
	.word	pBoxWidth
	.word	pBoxHeight
	.word	pBoxX
	.word	pBoxY
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
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #2
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
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
	ldr	r3, .L19
	mov	lr, pc
	bx	r3
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r0, r0, #1
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
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
	push	{r4, r5, r6, lr}
	mov	r4, r1
	beq	.L29
	cmp	r0, #2
	beq	.L30
.L23:
	cmp	r4, #0
	ldrne	r2, .L31
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	mov	r2, #0
	ldr	r3, .L31+4
	ldr	r5, .L31+8
	str	r2, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L31+12
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L31+16
	sub	r0, r0, r3, lsl #2
	str	r0, [r2]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L31+20
	add	r0, r0, #1
	str	r0, [r3]
	b	.L23
.L30:
	mov	r2, #0
	ldr	r3, .L31+24
	ldr	r5, .L31+8
	str	r2, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L31+12
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L31+28
	sub	r0, r0, r3, lsl #2
	str	r0, [r2]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L31+32
	add	r0, r0, #1
	str	r0, [r3]
	b	.L23
.L32:
	.align	2
.L31:
	.word	counter
	.word	s1y
	.word	rand
	.word	582368447
	.word	s1x
	.word	s1Vel
	.word	s2y
	.word	s2x
	.word	s2Vel
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L50
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r7, .L50+4
	ldr	r8, .L50+8
	ldr	r5, .L50+12
	ldr	r6, .L50+16
	sub	sp, sp, #20
	beq	.L47
.L34:
	ldr	r3, .L50
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L49
.L35:
	ldr	r4, .L50+20
	ldr	r1, [r4]
	cmp	r1, #159
	ble	.L36
	ldr	fp, .L50+24
	ldr	r10, .L50+28
.L38:
	mov	r1, #0
	mov	r0, #1
	bl	starReset
	ldr	r9, .L50+32
.L37:
	mov	r3, #4
	ldr	r1, [r7]
	ldr	ip, [r6]
	str	r1, [sp, #8]
	ldr	r1, [r5]
	ldr	lr, [r8]
	stm	sp, {r1, ip}
	str	lr, [sp, #12]
	mov	r2, r3
	ldr	r0, [fp]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L41
	mov	r1, #1
	mov	r0, r1
	bl	starReset
.L42:
	ldr	r2, .L50+36
	ldr	r3, .L50+40
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4]
	ldr	r3, [r9]
	add	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r4]
	str	r3, [r9]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	mov	r3, #4
	ldr	r2, .L50+44
	ldr	ip, .L50+48
	ldr	r0, [r2]
	ldr	r2, .L50+52
	ldr	lr, [ip]
	ldr	ip, .L50+56
	ldr	r2, [r2]
	ldr	ip, [ip]
	ldr	fp, .L50+24
	sub	r0, r0, #4
	sub	r2, r2, #4
	str	r0, [sp, #4]
	str	r2, [sp]
	str	lr, [sp, #12]
	mov	r2, r3
	str	ip, [sp, #8]
	ldr	r0, [fp]
	ldr	r10, .L50+28
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L38
	ldr	r9, .L50+32
	ldr	r1, [r9]
	cmp	r1, #159
	ble	.L39
.L40:
	mov	r1, #0
	mov	r0, #2
	bl	starReset
	b	.L37
.L41:
	mov	r3, #4
	ldr	r0, [r6]
	ldr	ip, [r7]
	ldr	r1, [r8]
	ldr	r2, [r5]
	stmib	sp, {r0, ip}
	str	r1, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L50+60
	mov	r2, r3
	ldr	r0, [r1]
	ldr	r1, [r9]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L42
	mov	r1, #1
	mov	r0, #2
	bl	starReset
	b	.L42
.L49:
	ldr	r2, .L50+64
	ldr	r3, [r7]
	str	r2, [sp]
	ldr	r1, [r5]
	ldr	r2, [r8]
	ldr	r0, [r6]
	ldr	r4, .L50+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+72
	ldr	r1, [r5]
	ldr	r2, [r3]
	ldr	r3, .L50+76
	add	r1, r1, r2
	str	r3, [sp]
	ldr	r2, [r8]
	ldr	r3, [r7]
	ldr	r0, [r6]
	str	r1, [r5]
	mov	lr, pc
	bx	r4
	b	.L35
.L47:
	ldr	ip, .L50+64
	ldr	r3, [r7]
	ldr	r2, [r8]
	ldr	r1, [r5]
	ldr	r0, [r6]
	str	ip, [sp]
	ldr	r4, .L50+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+72
	ldr	r1, [r5]
	ldr	r3, [r3]
	ldr	r0, .L50+76
	sub	r1, r1, r3
	str	r0, [sp]
	ldr	r3, [r7]
	ldr	r2, [r8]
	ldr	r0, [r6]
	str	r1, [r5]
	mov	lr, pc
	bx	r4
	b	.L34
.L39:
	mov	r3, #4
	ldr	r2, .L50+44
	ldr	ip, .L50+48
	ldr	r0, [r2]
	ldr	r2, .L50+52
	ldr	lr, [ip]
	ldr	ip, .L50+56
	ldr	r2, [r2]
	ldr	ip, [ip]
	sub	r0, r0, #4
	sub	r2, r2, #4
	str	r0, [sp, #4]
	str	r2, [sp]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, .L50+60
	mov	r2, r3
	ldr	r0, [r0]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L40
	b	.L37
.L51:
	.align	2
.L50:
	.word	67109120
	.word	cWidth
	.word	cHeight
	.word	cx
	.word	cy
	.word	s1y
	.word	s1x
	.word	collision
	.word	s2y
	.word	s1Vel
	.word	s2Vel
	.word	pBoxY
	.word	pBoxHeight
	.word	pBoxX
	.word	pBoxWidth
	.word	s2x
	.word	31759
	.word	drawRect
	.word	cVel
	.word	1023
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
	ldr	r5, .L54
	ldr	r6, .L54+4
	ldr	r7, .L54+8
	sub	sp, sp, #12
	ldr	r4, .L54+12
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r6]
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	str	r7, [sp]
	ldr	r1, .L54+16
	ldr	r0, .L54+20
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r9, .L54+24
	ldr	r10, .L54+28
	ldr	fp, .L54+32
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r10]
	str	fp, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r7, .L54+36
	ldr	r8, .L54+40
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
	ldr	r0, .L54+20
	ldr	r1, .L54+16
	str	r2, [r0]
	str	r3, [r1]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	.align	2
.L54:
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
	push	{r4, r5, r6, lr}
	ldr	ip, .L58
	ldr	r4, .L58+4
	ldr	r5, .L58+8
	ldr	r3, .L58+12
	ldr	r2, .L58+16
	sub	sp, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r4]
	ldr	r0, [r5]
	str	ip, [sp]
	ldr	r6, .L58+20
	mov	lr, pc
	bx	r6
	ldr	r0, [r5]
	ldr	r2, [r4]
	ldr	r1, .L58+24
	ldr	r3, .L58+28
	str	r0, [r1]
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	1023
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
	bl	starCatcherDraw
	ldr	r3, .L63
	ldr	r2, [r3]
	cmp	r2, #7
	movgt	r3, #0
	movle	r3, #1
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	popne	{r4, lr}
	bne	pointsDraw.part.0
.L60:
	pop	{r4, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	counter
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
	ldr	r3, .L68
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+8
	mov	lr, pc
	bx	r3
	ldr	r9, .L68+12
	ldr	r4, .L68+16
	ldr	r8, .L68+20
	ldr	r7, .L68+24
	ldr	r6, .L68+28
	ldr	r5, .L68+32
.L66:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L66
.L69:
	.align	2
.L68:
	.word	time
	.word	srand
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	pointsDraw
	.syntax unified
	.arm
	.fpu softvfp
	.type	pointsDraw, %function
pointsDraw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L72
	ldr	r2, [r3]
	cmp	r2, #7
	movgt	r3, #0
	movle	r3, #1
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	bxeq	lr
	b	pointsDraw.part.0
.L73:
	.align	2
.L72:
	.word	counter
	.size	pointsDraw, .-pointsDraw
	.comm	pBoxHeight,4,4
	.comm	pBoxWidth,4,4
	.comm	pBoxY,4,4
	.comm	pBoxX,4,4
	.comm	cVel,4,4
	.comm	cHeight,4,4
	.comm	cWidth,4,4
	.comm	cOldy,4,4
	.comm	cOldx,4,4
	.comm	cy,4,4
	.comm	cx,4,4
	.comm	counter,4,4
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
