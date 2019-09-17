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
	ldr	r0, .L11+4
	ldrh	lr, [r2, #48]
	ldr	ip, .L11+8
	ldr	r2, .L11+12
	ldr	r1, .L11+16
	ldr	r6, .L11+20
	sub	sp, sp, #12
	strh	r0, [r3]	@ movhi
	ldr	r9, .L11+24
	ldr	r3, .L11+28
	ldr	r0, .L11+32
	strh	lr, [ip]	@ movhi
	str	r4, [r2]
	strh	r4, [r1]	@ movhi
	mov	lr, pc
	bx	r3
	str	r4, [r6]
	mov	lr, pc
	bx	r9
	ldr	r7, .L11+36
	smull	r2, r3, r7, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #5
	rsb	r3, r2, r2, lsl #4
	ldr	r1, [r6]
	ldr	ip, .L11+40
	ldr	r8, .L11+44
	rsb	r2, r2, r3, lsl #2
	ldr	r3, .L11+48
	sub	r2, r0, r2, lsl #2
	str	r2, [ip]
	str	r2, [r8]
	str	r1, [r3]
	mov	lr, pc
	bx	r9
	subs	r3, r4, r0
	and	r3, r3, #3
	ldr	r5, .L11+52
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, .L11+56
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
	ldr	r7, .L11+60
	ldr	ip, .L11+64
	rsb	r3, r3, r2, lsl #2
	ldr	r2, .L11+68
	sub	r3, r0, r3, lsl #2
	str	r3, [r7]
	str	r3, [ip]
	str	r1, [r2]
	mov	lr, pc
	bx	r9
	mov	r3, #4
	subs	r1, r4, r0
	and	r1, r1, #3
	ldr	lr, .L11+72
	and	r2, r0, #3
	ldr	r9, .L11+76
	rsbpl	r2, r1, #0
	add	ip, r2, #1
	ldr	r0, [r6]
	mov	r2, r3
	ldr	r6, .L11+80
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
	ldr	r7, .L11+84
	ldr	r5, .L11+88
	ldr	ip, .L11+92
	str	r7, [sp]
	str	r3, [r5]
	str	r2, [ip]
	ldr	r7, .L11+96
	ldr	ip, .L11+100
	ldr	r5, .L11+104
	str	r0, [r7]
	str	r1, [r5]
	str	lr, [ip]
	mov	lr, pc
	bx	r6
	mov	r1, #194
	mov	r0, #147
	mov	r3, #43
	mov	r2, #10
	ldr	lr, .L11+108
	ldr	ip, .L11+112
	ldr	r7, .L11+116
	ldr	r5, .L11+120
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
	.word	buttons
	.word	counter
	.word	oldButtons
	.word	s1y
	.word	rand
	.word	drawBG
	.word	31759
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
	ldr	r3, .L53
	ldr	r3, [r3]
	cmp	r3, #6
	sub	sp, sp, #20
	ble	.L34
	ldr	r8, .L53+4
	ldr	r9, .L53+8
	ldr	r6, .L53+12
	ldr	r7, .L53+16
.L35:
	ldr	r4, .L53+20
	ldr	r1, [r4]
	cmp	r1, #159
	ble	.L38
.L51:
	ldr	fp, .L53+24
	ldr	r10, .L53+28
.L40:
	mov	r1, #0
	mov	r0, #1
	bl	starReset
	ldr	r5, .L53+32
.L39:
	mov	r3, #4
	ldr	r1, [r8]
	ldr	ip, [r7]
	str	r1, [sp, #8]
	ldr	r1, [r6]
	ldr	lr, [r9]
	stm	sp, {r1, ip}
	str	lr, [sp, #12]
	mov	r2, r3
	ldr	r0, [fp]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L43
	mov	r1, #1
	mov	r0, r1
	bl	starReset
.L44:
	ldr	r2, .L53+36
	ldr	r3, .L53+40
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4]
	ldr	r3, [r5]
	add	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r4]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L34:
	ldr	r3, .L53+44
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r8, .L53+4
	ldr	r9, .L53+8
	ldr	r6, .L53+12
	ldr	r7, .L53+16
	beq	.L49
	ldr	r3, .L53+44
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L35
.L52:
	ldr	r2, .L53+48
	ldr	r4, .L53+52
	ldr	r3, [r8]
	str	r2, [sp]
	ldr	r1, [r6]
	ldr	r2, [r9]
	ldr	r0, [r7]
	mov	lr, pc
	bx	r4
	ldr	r3, .L53+56
	ldr	r1, [r6]
	ldr	r2, [r3]
	ldr	r3, .L53+60
	add	r1, r1, r2
	str	r3, [sp]
	ldr	r2, [r9]
	ldr	r3, [r8]
	ldr	r0, [r7]
	str	r1, [r6]
	mov	lr, pc
	bx	r4
	ldr	r4, .L53+20
	ldr	r1, [r4]
	cmp	r1, #159
	bgt	.L51
.L38:
	mov	r3, #4
	ldr	r2, .L53+64
	ldr	ip, .L53+68
	ldr	r0, [r2]
	ldr	r2, .L53+72
	ldr	lr, [ip]
	ldr	ip, .L53+76
	ldr	r2, [r2]
	ldr	ip, [ip]
	ldr	fp, .L53+24
	sub	r0, r0, #4
	sub	r2, r2, #4
	str	r0, [sp, #4]
	str	r2, [sp]
	str	lr, [sp, #12]
	mov	r2, r3
	str	ip, [sp, #8]
	ldr	r0, [fp]
	ldr	r10, .L53+28
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L40
	ldr	r5, .L53+32
	ldr	r1, [r5]
	cmp	r1, #159
	ble	.L41
.L42:
	mov	r1, #0
	mov	r0, #2
	bl	starReset
	b	.L39
.L43:
	mov	r3, #4
	ldr	r0, [r7]
	ldr	ip, [r8]
	ldr	r1, [r9]
	ldr	r2, [r6]
	stmib	sp, {r0, ip}
	str	r1, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L53+80
	mov	r2, r3
	ldr	r0, [r1]
	ldr	r1, [r5]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L44
	mov	r1, #1
	mov	r0, #2
	bl	starReset
	b	.L44
.L49:
	ldr	ip, .L53+48
	ldr	r3, [r8]
	ldr	r2, [r9]
	ldr	r1, [r6]
	ldr	r0, [r7]
	str	ip, [sp]
	ldr	r4, .L53+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L53+56
	ldr	r1, [r6]
	ldr	r3, [r3]
	ldr	r0, .L53+60
	sub	r1, r1, r3
	str	r0, [sp]
	ldr	r3, [r8]
	ldr	r2, [r9]
	ldr	r0, [r7]
	str	r1, [r6]
	mov	lr, pc
	bx	r4
	ldr	r3, .L53+44
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L35
	b	.L52
.L41:
	mov	r3, #4
	ldr	r2, .L53+64
	ldr	ip, .L53+68
	ldr	r0, [r2]
	ldr	r2, .L53+72
	ldr	lr, [ip]
	ldr	ip, .L53+76
	ldr	r2, [r2]
	ldr	ip, [ip]
	sub	r0, r0, #4
	sub	r2, r2, #4
	str	r0, [sp, #4]
	str	r2, [sp]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, .L53+80
	mov	r2, r3
	ldr	r0, [r0]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L42
	b	.L39
.L54:
	.align	2
.L53:
	.word	counter
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
	.word	67109120
	.word	31759
	.word	drawRect
	.word	cVel
	.word	1023
	.word	pBoxY
	.word	pBoxHeight
	.word	pBoxX
	.word	pBoxWidth
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
	ldr	r5, .L57
	ldr	r6, .L57+4
	ldr	r7, .L57+8
	sub	sp, sp, #12
	ldr	r4, .L57+12
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r6]
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	str	r7, [sp]
	ldr	r1, .L57+16
	ldr	r0, .L57+20
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r9, .L57+24
	ldr	r10, .L57+28
	ldr	fp, .L57+32
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r10]
	str	fp, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r7, .L57+36
	ldr	r8, .L57+40
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
	ldr	r0, .L57+20
	ldr	r1, .L57+16
	str	r2, [r0]
	str	r3, [r1]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	ip, .L61
	ldr	r4, .L61+4
	ldr	r5, .L61+8
	ldr	r3, .L61+12
	ldr	r2, .L61+16
	sub	sp, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r4]
	ldr	r0, [r5]
	str	ip, [sp]
	ldr	r6, .L61+20
	mov	lr, pc
	bx	r6
	ldr	r0, [r5]
	ldr	r2, [r4]
	ldr	r1, .L61+24
	ldr	r3, .L61+28
	str	r0, [r1]
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r4, .L70
	ldr	r3, [r4]
	cmp	r3, #6
	bgt	.L64
	bl	starDraw
	bl	starCatcherDraw
	ldr	r2, [r4]
	cmp	r2, #7
	movgt	r3, #0
	movle	r3, #1
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	beq	.L63
	pop	{r4, lr}
	b	pointsDraw.part.0
.L64:
	mov	r0, #0
	ldr	r3, .L70+4
	mov	lr, pc
	bx	r3
.L63:
	pop	{r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	counter
	.word	drawBG
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
	ldr	r3, .L75
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+8
	mov	lr, pc
	bx	r3
	ldr	r9, .L75+12
	ldr	r4, .L75+16
	ldr	r8, .L75+20
	ldr	r7, .L75+24
	ldr	r6, .L75+28
	ldr	r5, .L75+32
.L73:
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
	b	.L73
.L76:
	.align	2
.L75:
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
	ldr	r3, .L79
	ldr	r2, [r3]
	cmp	r2, #7
	movgt	r3, #0
	movle	r3, #1
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	bxeq	lr
	b	pointsDraw.part.0
.L80:
	.align	2
.L79:
	.word	counter
	.size	pointsDraw, .-pointsDraw
	.align	2
	.global	endGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	endGame, %function
endGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	drawBG
	.size	endGame, .-endGame
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
