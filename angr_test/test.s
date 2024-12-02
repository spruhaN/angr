	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Users/spruhanayak/Desktop/code/classes/compiler/angr_test" "test.c"
	.globl	_compute_and_print              ## -- Begin function compute_and_print
	.p2align	4, 0x90
_compute_and_print:                     ## @compute_and_print
Lfunc_begin0:
	.loc	1 5 0                           ## test.c:5:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
Ltmp0:
	.loc	1 6 14 prologue_end             ## test.c:6:14
	movl	$100, -4(%rbp)
	.loc	1 7 12                          ## test.c:7:12
	movb	$-10, -5(%rbp)
	.loc	1 8 13                          ## test.c:8:13
	movb	$20, -6(%rbp)
	.loc	1 9 13                          ## test.c:9:13
	movl	$0, -12(%rbp)
	.loc	1 10 10                         ## test.c:10:10
	movb	$0, -13(%rbp)
	.loc	1 11 10                         ## test.c:11:10
	movb	$89, -14(%rbp)
Ltmp1:
	.loc	1 14 9                          ## test.c:14:9
	movzbl	-6(%rbp), %eax
	.loc	1 14 24 is_stmt 0               ## test.c:14:24
	addl	-4(%rbp), %eax
	.loc	1 14 39                         ## test.c:14:39
	cmpl	$150, %eax
Ltmp2:
	.loc	1 14 9                          ## test.c:14:9
	jbe	LBB0_2
## %bb.1:
Ltmp3:
	.loc	1 15 20 is_stmt 1               ## test.c:15:20
	movb	$1, -13(%rbp)
Ltmp4:
LBB0_2:
	.loc	1 19 9                          ## test.c:19:9
	testb	$1, -13(%rbp)
	je	LBB0_4
## %bb.3:
Ltmp5:
	.loc	1 20 24                         ## test.c:20:24
	movl	-4(%rbp), %eax
	.loc	1 20 39 is_stmt 0               ## test.c:20:39
	movzbl	-6(%rbp), %ecx
	.loc	1 20 37                         ## test.c:20:37
	addl	%ecx, %eax
	.loc	1 20 21                         ## test.c:20:21
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc	1 21 24 is_stmt 1               ## test.c:21:24
	movsbl	-5(%rbp), %eax
	.loc	1 21 21 is_stmt 0               ## test.c:21:21
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc	1 22 5 is_stmt 1                ## test.c:22:5
	jmp	LBB0_5
Ltmp6:
LBB0_4:
	.loc	1 23 24                         ## test.c:23:24
	movl	-4(%rbp), %eax
	.loc	1 23 21 is_stmt 0               ## test.c:23:21
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc	1 24 17 is_stmt 1               ## test.c:24:17
	movb	$78, -14(%rbp)
Ltmp7:
LBB0_5:
	.loc	1 28 32                         ## test.c:28:32
	movb	-13(%rbp), %cl
	leaq	L_.str.2(%rip), %rsi
	leaq	L_.str.1(%rip), %rax
	testb	$1, %cl
	cmovneq	%rax, %rsi
	.loc	1 28 5 is_stmt 0                ## test.c:28:5
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 29 29 is_stmt 1               ## test.c:29:29
	movsbl	-14(%rbp), %esi
	.loc	1 29 5 is_stmt 0                ## test.c:29:5
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 30 33 is_stmt 1               ## test.c:30:33
	movl	-12(%rbp), %esi
	.loc	1 30 5 is_stmt 0                ## test.c:30:5
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 31 1 is_stmt 1                ## test.c:31:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp8:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.loc	1 33 0                          ## test.c:33:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
Ltmp9:
	.loc	1 34 5 prologue_end             ## test.c:34:5
	callq	_compute_and_print
	.loc	1 35 5                          ## test.c:35:5
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp10:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Is Greater: %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"True"

L_.str.2:                               ## @.str.2
	.asciz	"False"

L_.str.3:                               ## @.str.3
	.asciz	"Message: %c\n"

L_.str.4:                               ## @.str.4
	.asciz	"Accumulator: %d\n"

	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	14                              ## DW_FORM_strp
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	14                              ## DW_FORM_strp
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	14                              ## DW_FORM_strp
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	14                              ## DW_FORM_strp
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	1                               ## DW_TAG_array_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	0                               ## DW_CHILDREN_no
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	22                              ## DW_TAG_typedef
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x199 DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.long	46                              ## DW_AT_name
	.long	53                              ## DW_AT_LLVM_sysroot
	.long	105                             ## DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset2
	.long	116                             ## DW_AT_comp_dir
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset3, Lfunc_end1-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset3
	.byte	2                               ## Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	28                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	L_.str
	.byte	3                               ## Abbrev [3] 0x43:0xc DW_TAG_array_type
	.long	79                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x48:0x6 DW_TAG_subrange_type
	.long	86                              ## DW_AT_type
	.byte	16                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x4f:0x7 DW_TAG_base_type
	.long	175                             ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	6                               ## Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	180                             ## DW_AT_name
	.byte	8                               ## DW_AT_byte_size
	.byte	7                               ## DW_AT_encoding
	.byte	2                               ## Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	28                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	L_.str.1
	.byte	3                               ## Abbrev [3] 0x6e:0xc DW_TAG_array_type
	.long	79                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x73:0x6 DW_TAG_subrange_type
	.long	86                              ## DW_AT_type
	.byte	5                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x7a:0x11 DW_TAG_variable
	.long	139                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	28                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	L_.str.2
	.byte	3                               ## Abbrev [3] 0x8b:0xc DW_TAG_array_type
	.long	79                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x90:0x6 DW_TAG_subrange_type
	.long	86                              ## DW_AT_type
	.byte	6                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x97:0x11 DW_TAG_variable
	.long	168                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	29                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	L_.str.3
	.byte	3                               ## Abbrev [3] 0xa8:0xc DW_TAG_array_type
	.long	79                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0xad:0x6 DW_TAG_subrange_type
	.long	86                              ## DW_AT_type
	.byte	13                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0xb4:0x11 DW_TAG_variable
	.long	197                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	L_.str.4
	.byte	3                               ## Abbrev [3] 0xc5:0xc DW_TAG_array_type
	.long	79                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0xca:0x6 DW_TAG_subrange_type
	.long	86                              ## DW_AT_type
	.byte	17                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	7                               ## Abbrev [7] 0xd1:0x6a DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset4
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	201                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	5                               ## DW_AT_decl_line
                                        ## DW_AT_external
	.byte	8                               ## Abbrev [8] 0xe6:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	124
	.long	228                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	6                               ## DW_AT_decl_line
	.long	347                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0xf4:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	123
	.long	263                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	7                               ## DW_AT_decl_line
	.long	365                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x102:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	122
	.long	297                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	8                               ## DW_AT_decl_line
	.long	383                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x110:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	116
	.long	334                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
	.long	401                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x11e:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	115
	.long	354                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.long	412                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x12c:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	114
	.long	371                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
	.long	79                              ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	9                               ## Abbrev [9] 0x13b:0x19 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ## DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ## DW_AT_high_pc
	.long	Lset5
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	219                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	33                              ## DW_AT_decl_line
	.long	340                             ## DW_AT_type
                                        ## DW_AT_external
	.byte	5                               ## Abbrev [5] 0x154:0x7 DW_TAG_base_type
	.long	224                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	10                              ## Abbrev [10] 0x15b:0xb DW_TAG_typedef
	.long	358                             ## DW_AT_type
	.long	241                             ## DW_AT_name
	.byte	2                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0x166:0x7 DW_TAG_base_type
	.long	250                             ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	10                              ## Abbrev [10] 0x16d:0xb DW_TAG_typedef
	.long	376                             ## DW_AT_type
	.long	278                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0x178:0x7 DW_TAG_base_type
	.long	285                             ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	10                              ## Abbrev [10] 0x17f:0xb DW_TAG_typedef
	.long	394                             ## DW_AT_type
	.long	312                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0x18a:0x7 DW_TAG_base_type
	.long	320                             ## DW_AT_name
	.byte	8                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	10                              ## Abbrev [10] 0x191:0xb DW_TAG_typedef
	.long	340                             ## DW_AT_type
	.long	346                             ## DW_AT_name
	.byte	5                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0x19c:0x7 DW_TAG_base_type
	.long	365                             ## DW_AT_name
	.byte	2                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ## string offset=0
	.asciz	"test.c"                        ## string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=53
	.asciz	"MacOSX.sdk"                    ## string offset=105
	.asciz	"/Users/spruhanayak/Desktop/code/classes/compiler/angr_test" ## string offset=116
	.asciz	"char"                          ## string offset=175
	.asciz	"__ARRAY_SIZE_TYPE__"           ## string offset=180
	.byte	0                               ## string offset=200
	.asciz	"compute_and_print"             ## string offset=201
	.asciz	"main"                          ## string offset=219
	.asciz	"int"                           ## string offset=224
	.asciz	"large_number"                  ## string offset=228
	.asciz	"uint32_t"                      ## string offset=241
	.asciz	"unsigned int"                  ## string offset=250
	.asciz	"small_negative"                ## string offset=263
	.asciz	"int8_t"                        ## string offset=278
	.asciz	"signed char"                   ## string offset=285
	.asciz	"small_positive"                ## string offset=297
	.asciz	"uint8_t"                       ## string offset=312
	.asciz	"unsigned char"                 ## string offset=320
	.asciz	"accumulator"                   ## string offset=334
	.asciz	"int32_t"                       ## string offset=346
	.asciz	"is_greater"                    ## string offset=354
	.asciz	"_Bool"                         ## string offset=365
	.asciz	"message"                       ## string offset=371
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	3                               ## Header Bucket Count
	.long	3                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.long	0                               ## Bucket 1
	.long	1                               ## Bucket 2
	.long	2090499946                      ## Hash in Bucket 1
	.long	5381                            ## Hash in Bucket 2
	.long	792087584                       ## Hash in Bucket 2
.set Lset6, LNames0-Lnames_begin        ## Offset in Bucket 1
	.long	Lset6
.set Lset7, LNames1-Lnames_begin        ## Offset in Bucket 2
	.long	Lset7
.set Lset8, LNames2-Lnames_begin        ## Offset in Bucket 2
	.long	Lset8
LNames0:
	.long	219                             ## main
	.long	1                               ## Num DIEs
	.long	315
	.long	0
LNames1:
	.long	200                             ## 
	.long	5                               ## Num DIEs
	.long	50
	.long	93
	.long	122
	.long	151
	.long	180
	.long	0
LNames2:
	.long	201                             ## compute_and_print
	.long	1                               ## Num DIEs
	.long	209
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	11                              ## Header Bucket Count
	.long	11                              ## Header Hash Count
	.long	20                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	3                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.short	3                               ## DW_ATOM_die_tag
	.short	5                               ## DW_FORM_data2
	.short	4                               ## DW_ATOM_type_flags
	.short	11                              ## DW_FORM_data1
	.long	0                               ## Bucket 0
	.long	2                               ## Bucket 1
	.long	3                               ## Bucket 2
	.long	-1                              ## Bucket 3
	.long	4                               ## Bucket 4
	.long	-1                              ## Bucket 5
	.long	6                               ## Bucket 6
	.long	-1                              ## Bucket 7
	.long	8                               ## Bucket 8
	.long	9                               ## Bucket 9
	.long	-1                              ## Bucket 10
	.long	249311216                       ## Hash in Bucket 0
	.long	2090147939                      ## Hash in Bucket 0
	.long	789719536                       ## Hash in Bucket 1
	.long	-594775205                      ## Hash in Bucket 2
	.long	290711645                       ## Hash in Bucket 4
	.long	-104093792                      ## Hash in Bucket 4
	.long	193495088                       ## Hash in Bucket 6
	.long	-1622544152                     ## Hash in Bucket 6
	.long	-1304652851                     ## Hash in Bucket 8
	.long	80989467                        ## Hash in Bucket 9
	.long	691577533                       ## Hash in Bucket 9
.set Lset9, Ltypes0-Ltypes_begin        ## Offset in Bucket 0
	.long	Lset9
.set Lset10, Ltypes4-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset10
.set Lset11, Ltypes6-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset11
.set Lset12, Ltypes8-Ltypes_begin       ## Offset in Bucket 2
	.long	Lset12
.set Lset13, Ltypes1-Ltypes_begin       ## Offset in Bucket 4
	.long	Lset13
.set Lset14, Ltypes9-Ltypes_begin       ## Offset in Bucket 4
	.long	Lset14
.set Lset15, Ltypes2-Ltypes_begin       ## Offset in Bucket 6
	.long	Lset15
.set Lset16, Ltypes10-Ltypes_begin      ## Offset in Bucket 6
	.long	Lset16
.set Lset17, Ltypes3-Ltypes_begin       ## Offset in Bucket 8
	.long	Lset17
.set Lset18, Ltypes7-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset18
.set Lset19, Ltypes5-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset19
Ltypes0:
	.long	365                             ## _Bool
	.long	1                               ## Num DIEs
	.long	412
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	175                             ## char
	.long	1                               ## Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	312                             ## uint8_t
	.long	1                               ## Num DIEs
	.long	383
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	180                             ## __ARRAY_SIZE_TYPE__
	.long	1                               ## Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	241                             ## uint32_t
	.long	1                               ## Num DIEs
	.long	347
	.short	22
	.byte	0
	.long	0
Ltypes9:
	.long	320                             ## unsigned char
	.long	1                               ## Num DIEs
	.long	394
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	224                             ## int
	.long	1                               ## Num DIEs
	.long	340
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	346                             ## int32_t
	.long	1                               ## Num DIEs
	.long	401
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	250                             ## unsigned int
	.long	1                               ## Num DIEs
	.long	358
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	278                             ## int8_t
	.long	1                               ## Num DIEs
	.long	365
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	285                             ## signed char
	.long	1                               ## Num DIEs
	.long	376
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
