	.file	"reverse.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	reverse
	.type	reverse, @function
reverse:
	li	a5,1
	ble	a1,a5,.L1
	rem	a7,a2,a1
	beq	a3,zero,.L3
	sub	a7,a1,a7
.L3:
	rem	a5,a7,a1
	lw	a6,0(a0)
	slli	a4,a5,2
	add	a4,a0,a4
	lw	a2,0(a4)
	li	a3,0
.L4:
	slli	a4,a5,2
	add	a4,a0,a4
	sw	a6,0(a4)
	add	a5,a7,a5
	rem	a5,a5,a1
	mv	a6,a2
	slli	a4,a5,2
	add	a4,a0,a4
	lw	a2,0(a4)
	addi	a3,a3,1
	bne	a1,a3,.L4
.L1:
	ret
	.size	reverse, .-reverse
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
