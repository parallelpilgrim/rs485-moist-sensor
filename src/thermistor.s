	.file	"thermistor.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.thermistorLsbToTemperature,"ax",@progbits
.global	thermistorLsbToTemperature
	.type	thermistorLsbToTemperature, @function
thermistorLsbToTemperature:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	ldi r30,lo8(thermistorPoints)
	ldi r31,hi8(thermistorPoints)
	ldi r28,0
.L3:
	ldd r16,Z+4
	ldd r17,Z+5
	ldd r18,Z+6
	ldd r19,Z+7
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brlo .L2
	subi r28,lo8(-(1))
	adiw r30,8
	cpi r28,lo8(20)
	brne .L3
	ldi r28,lo8(19)
.L2:
	ldi r29,0
	movw r30,r28
	ldi r18,3
	1:
	lsl r30
	rol r31
	dec r18
	brne 1b
	subi r30,lo8(-(thermistorPoints-8))
	sbci r31,hi8(-(thermistorPoints-8))
	ldd r8,Z+4
	ldd r9,Z+5
	ldd r10,Z+6
	ldd r11,Z+7
	ld r12,Z
	ldd r13,Z+1
	ldd r14,Z+2
	ldd r15,Z+3
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	ldi r19,3
	1:
	lsl r28
	rol r29
	dec r19
	brne 1b
	subi r28,lo8(-(thermistorPoints))
	sbci r29,hi8(-(thermistorPoints))
	ld r16,Y
	ldd r17,Y+1
	ldd r18,Y+2
	ldd r19,Y+3
	movw r4,r12
	movw r6,r14
	sub r4,r16
	sbc r5,r17
	sbc r6,r18
	sbc r7,r19
	movw r20,r6
	movw r18,r4
	rcall __umulsidi3
	mov r27,r18
	mov r26,r19
	mov r31,r20
	mov r30,r21
	ldd r20,Y+4
	ldd r21,Y+5
	ldd r22,Y+6
	ldd r23,Y+7
	movw r18,r20
	movw r20,r22
	sub r18,r8
	sbc r19,r9
	sbc r20,r10
	sbc r21,r11
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __udivmodsi4
	movw r24,r20
	movw r22,r18
	add r22,r12
	adc r23,r13
	adc r24,r14
	adc r25,r15
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	thermistorLsbToTemperature, .-thermistorLsbToTemperature
	.section	.rodata.thermistorPoints,"a",@progbits
	.type	thermistorPoints, @object
	.size	thermistorPoints, 176
thermistorPoints:
	.byte	52
	.byte	33
	.byte	0
	.byte	0
	.byte	-127
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.byte	31
	.byte	0
	.byte	0
	.byte	-110
	.byte	0
	.byte	0
	.byte	0
	.byte	76
	.byte	29
	.byte	0
	.byte	0
	.byte	-91
	.byte	0
	.byte	0
	.byte	0
	.byte	88
	.byte	27
	.byte	0
	.byte	0
	.byte	-70
	.byte	0
	.byte	0
	.byte	0
	.byte	100
	.byte	25
	.byte	0
	.byte	0
	.byte	-46
	.byte	0
	.byte	0
	.byte	0
	.byte	112
	.byte	23
	.byte	0
	.byte	0
	.byte	-20
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	21
	.byte	0
	.byte	0
	.byte	11
	.byte	1
	.byte	0
	.byte	0
	.byte	-120
	.byte	19
	.byte	0
	.byte	0
	.byte	44
	.byte	1
	.byte	0
	.byte	0
	.byte	-108
	.byte	17
	.byte	0
	.byte	0
	.byte	81
	.byte	1
	.byte	0
	.byte	0
	.byte	-96
	.byte	15
	.byte	0
	.byte	0
	.byte	120
	.byte	1
	.byte	0
	.byte	0
	.byte	-84
	.byte	13
	.byte	0
	.byte	0
	.byte	-93
	.byte	1
	.byte	0
	.byte	0
	.byte	-72
	.byte	11
	.byte	0
	.byte	0
	.byte	-48
	.byte	1
	.byte	0
	.byte	0
	.byte	-48
	.byte	7
	.byte	0
	.byte	0
	.byte	47
	.byte	2
	.byte	0
	.byte	0
	.byte	-60
	.byte	9
	.byte	0
	.byte	0
	.byte	-1
	.byte	1
	.byte	0
	.byte	0
	.byte	-36
	.byte	5
	.byte	0
	.byte	0
	.byte	96
	.byte	2
	.byte	0
	.byte	0
	.byte	-24
	.byte	3
	.byte	0
	.byte	0
	.byte	-112
	.byte	2
	.byte	0
	.byte	0
	.byte	-12
	.byte	1
	.byte	0
	.byte	0
	.byte	-65
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-20
	.byte	2
	.byte	0
	.byte	0
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	0
	.byte	24
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	60
	.byte	3
	.byte	0
	.byte	0
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	94
	.byte	3
	.byte	0
	.byte	0
	.byte	48
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	124
	.byte	3
	.byte	0
	.byte	0
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data