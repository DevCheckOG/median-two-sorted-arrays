	.file	"median-two-sorted-arrays.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_0:
	.quad	0x4000000000000000
	.text
	.globl	findMedianSortedArrays
	.p2align	4
	.type	findMedianSortedArrays,@function
findMedianSortedArrays:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_2:
	movl	$0, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB0_3:
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB0_26
# %bb.4:
	movl	-56(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -64(%rbp)
	movl	-20(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	subl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	$2147483648, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -88(%rbp)
.LBB0_7:
	movl	-88(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_9
# %bb.8:
	movl	$2147483647, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -92(%rbp)
.LBB0_10:
	movl	-92(%rbp), %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB0_12
# %bb.11:
	movl	$2147483648, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -96(%rbp)
.LBB0_13:
	movl	-96(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB0_15
# %bb.14:
	movl	$2147483647, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_16
.LBB0_15:
	movq	-32(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
.LBB0_16:
	movl	-100(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB0_21
# %bb.17:
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB0_21
# %bb.18:
	movl	-20(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB0_20
# %bb.19:
	cvtsi2sdl	-72(%rbp), %xmm3
	cvtsi2sdl	-80(%rbp), %xmm2
	movaps	%xmm2, %xmm4
	movaps	%xmm3, %xmm0
	cmpunordsd	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	maxsd	%xmm3, %xmm2
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_27
.LBB0_20:
	cvtsi2sdl	-72(%rbp), %xmm3
	cvtsi2sdl	-80(%rbp), %xmm2
	movaps	%xmm2, %xmm4
	movaps	%xmm3, %xmm0
	cmpunordsd	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	maxsd	%xmm3, %xmm2
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm4
	cvtsi2sdl	-84(%rbp), %xmm3
	movaps	%xmm3, %xmm5
	movaps	%xmm4, %xmm1
	cmpunordsd	%xmm1, %xmm1
	movaps	%xmm1, %xmm2
	pand	%xmm5, %xmm2
	minsd	%xmm4, %xmm3
	pandn	%xmm3, %xmm1
	por	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [2.0E+0,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_27
.LBB0_21:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_26:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB0_27:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	findMedianSortedArrays, .Lfunc_end0-findMedianSortedArrays
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -56(%rbp)
	movabsq	$12884901889, %rax              # imm = 0x300000001
	movq	%rax, -16(%rbp)
	movl	$2, -52(%rbp)
	movl	$2, -60(%rbp)
	movl	$1, -64(%rbp)
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -82(%rbp)                  # 1-byte Spill
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-82(%rbp), %al                  # 1-byte Reload
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %ecx
	leaq	-16(%rbp), %rdi
	leaq	-52(%rbp), %rdx
	callq	findMedianSortedArrays
	leaq	.L.str.2(%rip), %rdi
	movq	%rdi, -96(%rbp)                 # 8-byte Spill
	movb	$1, %al
	movb	%al, -81(%rbp)                  # 1-byte Spill
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-82(%rbp), %al                  # 1-byte Reload
	movabsq	$8589934593, %rcx               # imm = 0x200000001
	movq	%rcx, -24(%rbp)
	movabsq	$17179869187, %rcx              # imm = 0x400000003
	movq	%rcx, -32(%rbp)
	movl	$2, -68(%rbp)
	movl	$2, -72(%rbp)
	leaq	.L.str.3(%rip), %rdi
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-82(%rbp), %al                  # 1-byte Reload
	leaq	.L.str.4(%rip), %rdi
	callq	printf@PLT
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %ecx
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	callq	findMedianSortedArrays
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movb	-81(%rbp), %al                  # 1-byte Reload
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-82(%rbp), %al                  # 1-byte Reload
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$2, -76(%rbp)
	movl	$2, -80(%rbp)
	leaq	.L.str.5(%rip), %rdi
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-82(%rbp), %al                  # 1-byte Reload
	leaq	.L.str.6(%rip), %rdi
	callq	printf@PLT
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %ecx
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	callq	findMedianSortedArrays
	movb	-81(%rbp), %al                  # 1-byte Reload
	leaq	.L.str.7(%rip), %rdi
	callq	printf@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_2
# %bb.1:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L__const.main.nums1,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.L__const.main.nums1:
	.long	1
	.long	3
	.size	.L__const.main.nums1, 8

	.type	.L__const.main.nums2,@object
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.L__const.main.nums2:
	.long	2
	.size	.L__const.main.nums2, 4

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Example 1:\n"
	.size	.L.str, 12

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"nums1 = [1, 3], nums2 = [2]\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Median: %.5f\n\n"
	.size	.L.str.2, 15

	.type	.L__const.main.nums3,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.L__const.main.nums3:
	.long	1
	.long	2
	.size	.L__const.main.nums3, 8

	.type	.L__const.main.nums4,@object
	.p2align	2, 0x0
.L__const.main.nums4:
	.long	3
	.long	4
	.size	.L__const.main.nums4, 8

	.type	.L.str.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Example 2:\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"nums1 = [1, 2], nums2 = [3, 4]\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"Example 3:\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"nums1 = [0, 0], nums2 = [0, 0]\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"Median: %.5f\n"
	.size	.L.str.7, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym findMedianSortedArrays
	.addrsig_sym printf
	.addrsig_sym __stack_chk_fail
