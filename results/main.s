	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	li	a1,4
	li	a0,11
	call	calloc
	mv	s0,a0
	mv	a4,a0
	li	a5,0
	li	a3,11
.L2:
	sw	a5,0(a4)
	addi	a5,a5,1
	addi	a4,a4,4
	bne	a5,a3,.L2
	li	a3,1
	li	a2,3
	li	a1,11
	mv	a0,s0
	call	reverse
	mv	a0,s0
	call	free
	li	a0,0
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
