; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW3/hw3_matrix_mult_partition_both_dims/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_matrix_mult_partition_both_dims_ir([6 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" "partition" %A, [6 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" "partition" %B, [6 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="6" "partition" %C) local_unnamed_addr #0 {
entry:
  %A_copy_0_0 = alloca i32, align 512
  %A_copy_0_1 = alloca i32, align 512
  %A_copy_0_2 = alloca i32, align 512
  %A_copy_0_3 = alloca i32, align 512
  %A_copy_0_4 = alloca i32, align 512
  %A_copy_0_5 = alloca i32, align 512
  %A_copy_1_0 = alloca i32, align 512
  %A_copy_1_1 = alloca i32, align 512
  %A_copy_1_2 = alloca i32, align 512
  %A_copy_1_3 = alloca i32, align 512
  %A_copy_1_4 = alloca i32, align 512
  %A_copy_1_5 = alloca i32, align 512
  %A_copy_2_0 = alloca i32, align 512
  %A_copy_2_1 = alloca i32, align 512
  %A_copy_2_2 = alloca i32, align 512
  %A_copy_2_3 = alloca i32, align 512
  %A_copy_2_4 = alloca i32, align 512
  %A_copy_2_5 = alloca i32, align 512
  %A_copy_3_0 = alloca i32, align 512
  %A_copy_3_1 = alloca i32, align 512
  %A_copy_3_2 = alloca i32, align 512
  %A_copy_3_3 = alloca i32, align 512
  %A_copy_3_4 = alloca i32, align 512
  %A_copy_3_5 = alloca i32, align 512
  %A_copy_4_0 = alloca i32, align 512
  %A_copy_4_1 = alloca i32, align 512
  %A_copy_4_2 = alloca i32, align 512
  %A_copy_4_3 = alloca i32, align 512
  %A_copy_4_4 = alloca i32, align 512
  %A_copy_4_5 = alloca i32, align 512
  %A_copy_5_0 = alloca i32, align 512
  %A_copy_5_1 = alloca i32, align 512
  %A_copy_5_2 = alloca i32, align 512
  %A_copy_5_3 = alloca i32, align 512
  %A_copy_5_4 = alloca i32, align 512
  %A_copy_5_5 = alloca i32, align 512
  %B_copy_0_0 = alloca i32, align 512
  %B_copy_0_1 = alloca i32, align 512
  %B_copy_0_2 = alloca i32, align 512
  %B_copy_0_3 = alloca i32, align 512
  %B_copy_0_4 = alloca i32, align 512
  %B_copy_0_5 = alloca i32, align 512
  %B_copy_1_0 = alloca i32, align 512
  %B_copy_1_1 = alloca i32, align 512
  %B_copy_1_2 = alloca i32, align 512
  %B_copy_1_3 = alloca i32, align 512
  %B_copy_1_4 = alloca i32, align 512
  %B_copy_1_5 = alloca i32, align 512
  %B_copy_2_0 = alloca i32, align 512
  %B_copy_2_1 = alloca i32, align 512
  %B_copy_2_2 = alloca i32, align 512
  %B_copy_2_3 = alloca i32, align 512
  %B_copy_2_4 = alloca i32, align 512
  %B_copy_2_5 = alloca i32, align 512
  %B_copy_3_0 = alloca i32, align 512
  %B_copy_3_1 = alloca i32, align 512
  %B_copy_3_2 = alloca i32, align 512
  %B_copy_3_3 = alloca i32, align 512
  %B_copy_3_4 = alloca i32, align 512
  %B_copy_3_5 = alloca i32, align 512
  %B_copy_4_0 = alloca i32, align 512
  %B_copy_4_1 = alloca i32, align 512
  %B_copy_4_2 = alloca i32, align 512
  %B_copy_4_3 = alloca i32, align 512
  %B_copy_4_4 = alloca i32, align 512
  %B_copy_4_5 = alloca i32, align 512
  %B_copy_5_0 = alloca i32, align 512
  %B_copy_5_1 = alloca i32, align 512
  %B_copy_5_2 = alloca i32, align 512
  %B_copy_5_3 = alloca i32, align 512
  %B_copy_5_4 = alloca i32, align 512
  %B_copy_5_5 = alloca i32, align 512
  %C_copy_0_0 = alloca i32, align 512
  %C_copy_0_1 = alloca i32, align 512
  %C_copy_0_2 = alloca i32, align 512
  %C_copy_0_3 = alloca i32, align 512
  %C_copy_0_4 = alloca i32, align 512
  %C_copy_0_5 = alloca i32, align 512
  %C_copy_1_0 = alloca i32, align 512
  %C_copy_1_1 = alloca i32, align 512
  %C_copy_1_2 = alloca i32, align 512
  %C_copy_1_3 = alloca i32, align 512
  %C_copy_1_4 = alloca i32, align 512
  %C_copy_1_5 = alloca i32, align 512
  %C_copy_2_0 = alloca i32, align 512
  %C_copy_2_1 = alloca i32, align 512
  %C_copy_2_2 = alloca i32, align 512
  %C_copy_2_3 = alloca i32, align 512
  %C_copy_2_4 = alloca i32, align 512
  %C_copy_2_5 = alloca i32, align 512
  %C_copy_3_0 = alloca i32, align 512
  %C_copy_3_1 = alloca i32, align 512
  %C_copy_3_2 = alloca i32, align 512
  %C_copy_3_3 = alloca i32, align 512
  %C_copy_3_4 = alloca i32, align 512
  %C_copy_3_5 = alloca i32, align 512
  %C_copy_4_0 = alloca i32, align 512
  %C_copy_4_1 = alloca i32, align 512
  %C_copy_4_2 = alloca i32, align 512
  %C_copy_4_3 = alloca i32, align 512
  %C_copy_4_4 = alloca i32, align 512
  %C_copy_4_5 = alloca i32, align 512
  %C_copy_5_0 = alloca i32, align 512
  %C_copy_5_1 = alloca i32, align 512
  %C_copy_5_2 = alloca i32, align 512
  %C_copy_5_3 = alloca i32, align 512
  %C_copy_5_4 = alloca i32, align 512
  %C_copy_5_5 = alloca i32, align 512
  %0 = bitcast [6 x i32]* %A to [6 x [6 x i32]]*
  %1 = bitcast [6 x i32]* %B to [6 x [6 x i32]]*
  %2 = bitcast [6 x i32]* %C to [6 x [6 x i32]]*
  call void @copy_in([6 x [6 x i32]]* nonnull %0, i32* nonnull align 512 %A_copy_0_0, i32* nonnull align 512 %A_copy_0_1, i32* nonnull align 512 %A_copy_0_2, i32* nonnull align 512 %A_copy_0_3, i32* nonnull align 512 %A_copy_0_4, i32* nonnull align 512 %A_copy_0_5, i32* nonnull align 512 %A_copy_1_0, i32* nonnull align 512 %A_copy_1_1, i32* nonnull align 512 %A_copy_1_2, i32* nonnull align 512 %A_copy_1_3, i32* nonnull align 512 %A_copy_1_4, i32* nonnull align 512 %A_copy_1_5, i32* nonnull align 512 %A_copy_2_0, i32* nonnull align 512 %A_copy_2_1, i32* nonnull align 512 %A_copy_2_2, i32* nonnull align 512 %A_copy_2_3, i32* nonnull align 512 %A_copy_2_4, i32* nonnull align 512 %A_copy_2_5, i32* nonnull align 512 %A_copy_3_0, i32* nonnull align 512 %A_copy_3_1, i32* nonnull align 512 %A_copy_3_2, i32* nonnull align 512 %A_copy_3_3, i32* nonnull align 512 %A_copy_3_4, i32* nonnull align 512 %A_copy_3_5, i32* nonnull align 512 %A_copy_4_0, i32* nonnull align 512 %A_copy_4_1, i32* nonnull align 512 %A_copy_4_2, i32* nonnull align 512 %A_copy_4_3, i32* nonnull align 512 %A_copy_4_4, i32* nonnull align 512 %A_copy_4_5, i32* nonnull align 512 %A_copy_5_0, i32* nonnull align 512 %A_copy_5_1, i32* nonnull align 512 %A_copy_5_2, i32* nonnull align 512 %A_copy_5_3, i32* nonnull align 512 %A_copy_5_4, i32* nonnull align 512 %A_copy_5_5, [6 x [6 x i32]]* nonnull %1, i32* nonnull align 512 %B_copy_0_0, i32* nonnull align 512 %B_copy_0_1, i32* nonnull align 512 %B_copy_0_2, i32* nonnull align 512 %B_copy_0_3, i32* nonnull align 512 %B_copy_0_4, i32* nonnull align 512 %B_copy_0_5, i32* nonnull align 512 %B_copy_1_0, i32* nonnull align 512 %B_copy_1_1, i32* nonnull align 512 %B_copy_1_2, i32* nonnull align 512 %B_copy_1_3, i32* nonnull align 512 %B_copy_1_4, i32* nonnull align 512 %B_copy_1_5, i32* nonnull align 512 %B_copy_2_0, i32* nonnull align 512 %B_copy_2_1, i32* nonnull align 512 %B_copy_2_2, i32* nonnull align 512 %B_copy_2_3, i32* nonnull align 512 %B_copy_2_4, i32* nonnull align 512 %B_copy_2_5, i32* nonnull align 512 %B_copy_3_0, i32* nonnull align 512 %B_copy_3_1, i32* nonnull align 512 %B_copy_3_2, i32* nonnull align 512 %B_copy_3_3, i32* nonnull align 512 %B_copy_3_4, i32* nonnull align 512 %B_copy_3_5, i32* nonnull align 512 %B_copy_4_0, i32* nonnull align 512 %B_copy_4_1, i32* nonnull align 512 %B_copy_4_2, i32* nonnull align 512 %B_copy_4_3, i32* nonnull align 512 %B_copy_4_4, i32* nonnull align 512 %B_copy_4_5, i32* nonnull align 512 %B_copy_5_0, i32* nonnull align 512 %B_copy_5_1, i32* nonnull align 512 %B_copy_5_2, i32* nonnull align 512 %B_copy_5_3, i32* nonnull align 512 %B_copy_5_4, i32* nonnull align 512 %B_copy_5_5, [6 x [6 x i32]]* nonnull %2, i32* nonnull align 512 %C_copy_0_0, i32* nonnull align 512 %C_copy_0_1, i32* nonnull align 512 %C_copy_0_2, i32* nonnull align 512 %C_copy_0_3, i32* nonnull align 512 %C_copy_0_4, i32* nonnull align 512 %C_copy_0_5, i32* nonnull align 512 %C_copy_1_0, i32* nonnull align 512 %C_copy_1_1, i32* nonnull align 512 %C_copy_1_2, i32* nonnull align 512 %C_copy_1_3, i32* nonnull align 512 %C_copy_1_4, i32* nonnull align 512 %C_copy_1_5, i32* nonnull align 512 %C_copy_2_0, i32* nonnull align 512 %C_copy_2_1, i32* nonnull align 512 %C_copy_2_2, i32* nonnull align 512 %C_copy_2_3, i32* nonnull align 512 %C_copy_2_4, i32* nonnull align 512 %C_copy_2_5, i32* nonnull align 512 %C_copy_3_0, i32* nonnull align 512 %C_copy_3_1, i32* nonnull align 512 %C_copy_3_2, i32* nonnull align 512 %C_copy_3_3, i32* nonnull align 512 %C_copy_3_4, i32* nonnull align 512 %C_copy_3_5, i32* nonnull align 512 %C_copy_4_0, i32* nonnull align 512 %C_copy_4_1, i32* nonnull align 512 %C_copy_4_2, i32* nonnull align 512 %C_copy_4_3, i32* nonnull align 512 %C_copy_4_4, i32* nonnull align 512 %C_copy_4_5, i32* nonnull align 512 %C_copy_5_0, i32* nonnull align 512 %C_copy_5_1, i32* nonnull align 512 %C_copy_5_2, i32* nonnull align 512 %C_copy_5_3, i32* nonnull align 512 %C_copy_5_4, i32* nonnull align 512 %C_copy_5_5)
  call void @apatb_matrix_mult_partition_both_dims_hw(i32* %A_copy_0_0, i32* %A_copy_0_1, i32* %A_copy_0_2, i32* %A_copy_0_3, i32* %A_copy_0_4, i32* %A_copy_0_5, i32* %A_copy_1_0, i32* %A_copy_1_1, i32* %A_copy_1_2, i32* %A_copy_1_3, i32* %A_copy_1_4, i32* %A_copy_1_5, i32* %A_copy_2_0, i32* %A_copy_2_1, i32* %A_copy_2_2, i32* %A_copy_2_3, i32* %A_copy_2_4, i32* %A_copy_2_5, i32* %A_copy_3_0, i32* %A_copy_3_1, i32* %A_copy_3_2, i32* %A_copy_3_3, i32* %A_copy_3_4, i32* %A_copy_3_5, i32* %A_copy_4_0, i32* %A_copy_4_1, i32* %A_copy_4_2, i32* %A_copy_4_3, i32* %A_copy_4_4, i32* %A_copy_4_5, i32* %A_copy_5_0, i32* %A_copy_5_1, i32* %A_copy_5_2, i32* %A_copy_5_3, i32* %A_copy_5_4, i32* %A_copy_5_5, i32* %B_copy_0_0, i32* %B_copy_0_1, i32* %B_copy_0_2, i32* %B_copy_0_3, i32* %B_copy_0_4, i32* %B_copy_0_5, i32* %B_copy_1_0, i32* %B_copy_1_1, i32* %B_copy_1_2, i32* %B_copy_1_3, i32* %B_copy_1_4, i32* %B_copy_1_5, i32* %B_copy_2_0, i32* %B_copy_2_1, i32* %B_copy_2_2, i32* %B_copy_2_3, i32* %B_copy_2_4, i32* %B_copy_2_5, i32* %B_copy_3_0, i32* %B_copy_3_1, i32* %B_copy_3_2, i32* %B_copy_3_3, i32* %B_copy_3_4, i32* %B_copy_3_5, i32* %B_copy_4_0, i32* %B_copy_4_1, i32* %B_copy_4_2, i32* %B_copy_4_3, i32* %B_copy_4_4, i32* %B_copy_4_5, i32* %B_copy_5_0, i32* %B_copy_5_1, i32* %B_copy_5_2, i32* %B_copy_5_3, i32* %B_copy_5_4, i32* %B_copy_5_5, i32* %C_copy_0_0, i32* %C_copy_0_1, i32* %C_copy_0_2, i32* %C_copy_0_3, i32* %C_copy_0_4, i32* %C_copy_0_5, i32* %C_copy_1_0, i32* %C_copy_1_1, i32* %C_copy_1_2, i32* %C_copy_1_3, i32* %C_copy_1_4, i32* %C_copy_1_5, i32* %C_copy_2_0, i32* %C_copy_2_1, i32* %C_copy_2_2, i32* %C_copy_2_3, i32* %C_copy_2_4, i32* %C_copy_2_5, i32* %C_copy_3_0, i32* %C_copy_3_1, i32* %C_copy_3_2, i32* %C_copy_3_3, i32* %C_copy_3_4, i32* %C_copy_3_5, i32* %C_copy_4_0, i32* %C_copy_4_1, i32* %C_copy_4_2, i32* %C_copy_4_3, i32* %C_copy_4_4, i32* %C_copy_4_5, i32* %C_copy_5_0, i32* %C_copy_5_1, i32* %C_copy_5_2, i32* %C_copy_5_3, i32* %C_copy_5_4, i32* %C_copy_5_5)
  call void @copy_back([6 x [6 x i32]]* %0, i32* %A_copy_0_0, i32* %A_copy_0_1, i32* %A_copy_0_2, i32* %A_copy_0_3, i32* %A_copy_0_4, i32* %A_copy_0_5, i32* %A_copy_1_0, i32* %A_copy_1_1, i32* %A_copy_1_2, i32* %A_copy_1_3, i32* %A_copy_1_4, i32* %A_copy_1_5, i32* %A_copy_2_0, i32* %A_copy_2_1, i32* %A_copy_2_2, i32* %A_copy_2_3, i32* %A_copy_2_4, i32* %A_copy_2_5, i32* %A_copy_3_0, i32* %A_copy_3_1, i32* %A_copy_3_2, i32* %A_copy_3_3, i32* %A_copy_3_4, i32* %A_copy_3_5, i32* %A_copy_4_0, i32* %A_copy_4_1, i32* %A_copy_4_2, i32* %A_copy_4_3, i32* %A_copy_4_4, i32* %A_copy_4_5, i32* %A_copy_5_0, i32* %A_copy_5_1, i32* %A_copy_5_2, i32* %A_copy_5_3, i32* %A_copy_5_4, i32* %A_copy_5_5, [6 x [6 x i32]]* %1, i32* %B_copy_0_0, i32* %B_copy_0_1, i32* %B_copy_0_2, i32* %B_copy_0_3, i32* %B_copy_0_4, i32* %B_copy_0_5, i32* %B_copy_1_0, i32* %B_copy_1_1, i32* %B_copy_1_2, i32* %B_copy_1_3, i32* %B_copy_1_4, i32* %B_copy_1_5, i32* %B_copy_2_0, i32* %B_copy_2_1, i32* %B_copy_2_2, i32* %B_copy_2_3, i32* %B_copy_2_4, i32* %B_copy_2_5, i32* %B_copy_3_0, i32* %B_copy_3_1, i32* %B_copy_3_2, i32* %B_copy_3_3, i32* %B_copy_3_4, i32* %B_copy_3_5, i32* %B_copy_4_0, i32* %B_copy_4_1, i32* %B_copy_4_2, i32* %B_copy_4_3, i32* %B_copy_4_4, i32* %B_copy_4_5, i32* %B_copy_5_0, i32* %B_copy_5_1, i32* %B_copy_5_2, i32* %B_copy_5_3, i32* %B_copy_5_4, i32* %B_copy_5_5, [6 x [6 x i32]]* %2, i32* %C_copy_0_0, i32* %C_copy_0_1, i32* %C_copy_0_2, i32* %C_copy_0_3, i32* %C_copy_0_4, i32* %C_copy_0_5, i32* %C_copy_1_0, i32* %C_copy_1_1, i32* %C_copy_1_2, i32* %C_copy_1_3, i32* %C_copy_1_4, i32* %C_copy_1_5, i32* %C_copy_2_0, i32* %C_copy_2_1, i32* %C_copy_2_2, i32* %C_copy_2_3, i32* %C_copy_2_4, i32* %C_copy_2_5, i32* %C_copy_3_0, i32* %C_copy_3_1, i32* %C_copy_3_2, i32* %C_copy_3_3, i32* %C_copy_3_4, i32* %C_copy_3_5, i32* %C_copy_4_0, i32* %C_copy_4_1, i32* %C_copy_4_2, i32* %C_copy_4_3, i32* %C_copy_4_4, i32* %C_copy_4_5, i32* %C_copy_5_0, i32* %C_copy_5_1, i32* %C_copy_5_2, i32* %C_copy_5_3, i32* %C_copy_5_4, i32* %C_copy_5_5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6a6i32([6 x [6 x i32]]* "orig.arg.no"="0" %dst, [6 x [6 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %src, null
  %1 = icmp eq [6 x [6 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6 x [6 x i32]], [6 x [6 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [6 x [6 x i32]], [6 x [6 x i32]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src.addr, i64 6)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6i32([6 x i32]* "orig.arg.no"="0" %dst, [6 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [6 x i32]* %src, null
  %1 = icmp eq [6 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6 x i32], [6 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [6 x i32], [6 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6i32.5.6(i32* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i32* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i32* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i32* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i32* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [6 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [6 x i32]* %src, null
  %1 = icmp eq i32* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [6 x i32], [6 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  switch i64 %for.loop.idx2, label %dst.addr.case.5 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
    i64 3, label %dst.addr.case.3
    i64 4, label %dst.addr.case.4
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_3, align 4
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_4, align 4
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 5
  call void @llvm.assume(i1 %4)
  store i32 %3, i32* %dst_5, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6a6i32.4.7(i32* "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0_0, i32* "orig.arg.no"="0" "unpacked"="0.0.1" %dst_0_1, i32* "orig.arg.no"="0" "unpacked"="0.0.2" %dst_0_2, i32* "orig.arg.no"="0" "unpacked"="0.0.3" %dst_0_3, i32* "orig.arg.no"="0" "unpacked"="0.0.4" %dst_0_4, i32* "orig.arg.no"="0" "unpacked"="0.0.5" %dst_0_5, i32* "orig.arg.no"="0" "unpacked"="0.1.0" %dst_1_0, i32* "orig.arg.no"="0" "unpacked"="0.1.1" %dst_1_1, i32* "orig.arg.no"="0" "unpacked"="0.1.2" %dst_1_2, i32* "orig.arg.no"="0" "unpacked"="0.1.3" %dst_1_3, i32* "orig.arg.no"="0" "unpacked"="0.1.4" %dst_1_4, i32* "orig.arg.no"="0" "unpacked"="0.1.5" %dst_1_5, i32* "orig.arg.no"="0" "unpacked"="0.2.0" %dst_2_0, i32* "orig.arg.no"="0" "unpacked"="0.2.1" %dst_2_1, i32* "orig.arg.no"="0" "unpacked"="0.2.2" %dst_2_2, i32* "orig.arg.no"="0" "unpacked"="0.2.3" %dst_2_3, i32* "orig.arg.no"="0" "unpacked"="0.2.4" %dst_2_4, i32* "orig.arg.no"="0" "unpacked"="0.2.5" %dst_2_5, i32* "orig.arg.no"="0" "unpacked"="0.3.0" %dst_3_0, i32* "orig.arg.no"="0" "unpacked"="0.3.1" %dst_3_1, i32* "orig.arg.no"="0" "unpacked"="0.3.2" %dst_3_2, i32* "orig.arg.no"="0" "unpacked"="0.3.3" %dst_3_3, i32* "orig.arg.no"="0" "unpacked"="0.3.4" %dst_3_4, i32* "orig.arg.no"="0" "unpacked"="0.3.5" %dst_3_5, i32* "orig.arg.no"="0" "unpacked"="0.4.0" %dst_4_0, i32* "orig.arg.no"="0" "unpacked"="0.4.1" %dst_4_1, i32* "orig.arg.no"="0" "unpacked"="0.4.2" %dst_4_2, i32* "orig.arg.no"="0" "unpacked"="0.4.3" %dst_4_3, i32* "orig.arg.no"="0" "unpacked"="0.4.4" %dst_4_4, i32* "orig.arg.no"="0" "unpacked"="0.4.5" %dst_4_5, i32* "orig.arg.no"="0" "unpacked"="0.5.0" %dst_5_0, i32* "orig.arg.no"="0" "unpacked"="0.5.1" %dst_5_1, i32* "orig.arg.no"="0" "unpacked"="0.5.2" %dst_5_2, i32* "orig.arg.no"="0" "unpacked"="0.5.3" %dst_5_3, i32* "orig.arg.no"="0" "unpacked"="0.5.4" %dst_5_4, i32* "orig.arg.no"="0" "unpacked"="0.5.5" %dst_5_5, [6 x [6 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %src, null
  %1 = icmp eq i32* %dst_0_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [6 x [6 x i32]], [6 x [6 x i32]]* %src, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %dst.addr.case.5 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
    i64 3, label %dst.addr.case.3
    i64 4, label %dst.addr.case.4
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst_0_0, i32* %dst_0_1, i32* %dst_0_2, i32* %dst_0_3, i32* %dst_0_4, i32* %dst_0_5, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst_1_0, i32* %dst_1_1, i32* %dst_1_2, i32* %dst_1_3, i32* %dst_1_4, i32* %dst_1_5, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst_2_0, i32* %dst_2_1, i32* %dst_2_2, i32* %dst_2_3, i32* %dst_2_4, i32* %dst_2_5, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst_3_0, i32* %dst_3_1, i32* %dst_3_2, i32* %dst_3_3, i32* %dst_3_4, i32* %dst_3_5, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst_4_0, i32* %dst_4_1, i32* %dst_4_2, i32* %dst_4_3, i32* %dst_4_4, i32* %dst_4_5, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 5
  call void @llvm.assume(i1 %3)
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst_5_0, i32* %dst_5_1, i32* %dst_5_2, i32* %dst_5_3, i32* %dst_5_4, i32* %dst_5_5, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a6a6i32.3.8(i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_0_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_0_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_0_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.4" %dst_0_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.5" %dst_0_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.0" %dst_1_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.1" %dst_1_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.2" %dst_1_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.3" %dst_1_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.4" %dst_1_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.5" %dst_1_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.0" %dst_2_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.1" %dst_2_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.2" %dst_2_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.3" %dst_2_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.4" %dst_2_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2.5" %dst_2_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3.0" %dst_3_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3.1" %dst_3_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3.2" %dst_3_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3.3" %dst_3_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3.4" %dst_3_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3.5" %dst_3_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4.0" %dst_4_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4.1" %dst_4_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4.2" %dst_4_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4.3" %dst_4_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4.4" %dst_4_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4.5" %dst_4_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5.0" %dst_5_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5.1" %dst_5_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5.2" %dst_5_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5.3" %dst_5_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5.4" %dst_5_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5.5" %dst_5_5, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq i32* %dst_0_0, null
  %1 = icmp eq [6 x [6 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32.4.7(i32* nonnull %dst_0_0, i32* %dst_0_1, i32* %dst_0_2, i32* %dst_0_3, i32* %dst_0_4, i32* %dst_0_5, i32* %dst_1_0, i32* %dst_1_1, i32* %dst_1_2, i32* %dst_1_3, i32* %dst_1_4, i32* %dst_1_5, i32* %dst_2_0, i32* %dst_2_1, i32* %dst_2_2, i32* %dst_2_3, i32* %dst_2_4, i32* %dst_2_5, i32* %dst_3_0, i32* %dst_3_1, i32* %dst_3_2, i32* %dst_3_3, i32* %dst_3_4, i32* %dst_3_5, i32* %dst_4_0, i32* %dst_4_1, i32* %dst_4_2, i32* %dst_4_3, i32* %dst_4_4, i32* %dst_4_5, i32* %dst_5_0, i32* %dst_5_1, i32* %dst_5_2, i32* %dst_5_3, i32* %dst_5_4, i32* %dst_5_5, [6 x [6 x i32]]* nonnull %src, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([6 x [6 x i32]]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_0_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %_0_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %_0_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %_1_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.4" %_1_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.5" %_1_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2.3" %_2_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2.4" %_2_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2.5" %_2_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3.0" %_3_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3.1" %_3_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3.2" %_3_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3.3" %_3_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3.4" %_3_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3.5" %_3_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4.0" %_4_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4.1" %_4_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4.2" %_4_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4.3" %_4_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4.4" %_4_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4.5" %_4_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5.0" %_5_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5.1" %_5_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5.2" %_5_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5.3" %_5_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5.4" %_5_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5.5" %_5_5, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0_01, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_0_12, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_0_23, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_0_34, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_0_45, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_0_56, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.0" %_1_07, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.1" %_1_18, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.2" %_1_29, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.3" %_1_310, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.4" %_1_411, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.5" %_1_512, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2.0" %_2_013, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2.1" %_2_114, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2.2" %_2_215, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2.3" %_2_316, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2.4" %_2_417, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2.5" %_2_518, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3.0" %_3_019, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3.1" %_3_120, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3.2" %_3_221, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3.3" %_3_322, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3.4" %_3_423, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3.5" %_3_524, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4.0" %_4_025, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4.1" %_4_126, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4.2" %_4_227, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4.3" %_4_328, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4.4" %_4_429, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4.5" %_4_530, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5.0" %_5_031, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5.1" %_5_132, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5.2" %_5_233, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5.3" %_5_334, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5.4" %_5_435, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5.5" %_5_536, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0.0" %_0_037, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0.1" %_0_138, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0.2" %_0_239, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0.3" %_0_340, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0.4" %_0_441, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0.5" %_0_542, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1.0" %_1_043, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1.1" %_1_144, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1.2" %_1_245, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1.3" %_1_346, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1.4" %_1_447, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1.5" %_1_548, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2.0" %_2_049, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2.1" %_2_150, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2.2" %_2_251, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2.3" %_2_352, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2.4" %_2_453, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2.5" %_2_554, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3.0" %_3_055, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3.1" %_3_156, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3.2" %_3_257, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3.3" %_3_358, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3.4" %_3_459, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3.5" %_3_560, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4.0" %_4_061, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4.1" %_4_162, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4.2" %_4_263, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4.3" %_4_364, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4.4" %_4_465, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4.5" %_4_566, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5.0" %_5_067, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5.1" %_5_168, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5.2" %_5_269, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5.3" %_5_370, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5.4" %_5_471, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5.5" %_5_572) #4 {
entry:
  call void @onebyonecpy_hls.p0a6a6i32.3.8(i32* align 512 %_0_0, i32* align 512 %_0_1, i32* align 512 %_0_2, i32* align 512 %_0_3, i32* align 512 %_0_4, i32* align 512 %_0_5, i32* align 512 %_1_0, i32* align 512 %_1_1, i32* align 512 %_1_2, i32* align 512 %_1_3, i32* align 512 %_1_4, i32* align 512 %_1_5, i32* align 512 %_2_0, i32* align 512 %_2_1, i32* align 512 %_2_2, i32* align 512 %_2_3, i32* align 512 %_2_4, i32* align 512 %_2_5, i32* align 512 %_3_0, i32* align 512 %_3_1, i32* align 512 %_3_2, i32* align 512 %_3_3, i32* align 512 %_3_4, i32* align 512 %_3_5, i32* align 512 %_4_0, i32* align 512 %_4_1, i32* align 512 %_4_2, i32* align 512 %_4_3, i32* align 512 %_4_4, i32* align 512 %_4_5, i32* align 512 %_5_0, i32* align 512 %_5_1, i32* align 512 %_5_2, i32* align 512 %_5_3, i32* align 512 %_5_4, i32* align 512 %_5_5, [6 x [6 x i32]]* %0)
  call void @onebyonecpy_hls.p0a6a6i32.3.8(i32* align 512 %_0_01, i32* align 512 %_0_12, i32* align 512 %_0_23, i32* align 512 %_0_34, i32* align 512 %_0_45, i32* align 512 %_0_56, i32* align 512 %_1_07, i32* align 512 %_1_18, i32* align 512 %_1_29, i32* align 512 %_1_310, i32* align 512 %_1_411, i32* align 512 %_1_512, i32* align 512 %_2_013, i32* align 512 %_2_114, i32* align 512 %_2_215, i32* align 512 %_2_316, i32* align 512 %_2_417, i32* align 512 %_2_518, i32* align 512 %_3_019, i32* align 512 %_3_120, i32* align 512 %_3_221, i32* align 512 %_3_322, i32* align 512 %_3_423, i32* align 512 %_3_524, i32* align 512 %_4_025, i32* align 512 %_4_126, i32* align 512 %_4_227, i32* align 512 %_4_328, i32* align 512 %_4_429, i32* align 512 %_4_530, i32* align 512 %_5_031, i32* align 512 %_5_132, i32* align 512 %_5_233, i32* align 512 %_5_334, i32* align 512 %_5_435, i32* align 512 %_5_536, [6 x [6 x i32]]* %1)
  call void @onebyonecpy_hls.p0a6a6i32.3.8(i32* align 512 %_0_037, i32* align 512 %_0_138, i32* align 512 %_0_239, i32* align 512 %_0_340, i32* align 512 %_0_441, i32* align 512 %_0_542, i32* align 512 %_1_043, i32* align 512 %_1_144, i32* align 512 %_1_245, i32* align 512 %_1_346, i32* align 512 %_1_447, i32* align 512 %_1_548, i32* align 512 %_2_049, i32* align 512 %_2_150, i32* align 512 %_2_251, i32* align 512 %_2_352, i32* align 512 %_2_453, i32* align 512 %_2_554, i32* align 512 %_3_055, i32* align 512 %_3_156, i32* align 512 %_3_257, i32* align 512 %_3_358, i32* align 512 %_3_459, i32* align 512 %_3_560, i32* align 512 %_4_061, i32* align 512 %_4_162, i32* align 512 %_4_263, i32* align 512 %_4_364, i32* align 512 %_4_465, i32* align 512 %_4_566, i32* align 512 %_5_067, i32* align 512 %_5_168, i32* align 512 %_5_269, i32* align 512 %_5_370, i32* align 512 %_5_471, i32* align 512 %_5_572, [6 x [6 x i32]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6i32.15.16([6 x i32]* "orig.arg.no"="0" %dst, i32* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq i32* %src_0, null
  %1 = icmp eq [6 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [6 x i32], [6 x i32]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.5 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
    i64 3, label %src.addr.case.3
    i64 4, label %src.addr.case.4
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i32, i32* %src_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load i32, i32* %src_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_2 = load i32, i32* %src_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_3 = load i32, i32* %src_3, align 4
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_4 = load i32, i32* %src_4, align 4
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 5
  call void @llvm.assume(i1 %3)
  %_5 = load i32, i32* %src_5, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi i32 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ], [ %_3, %src.addr.case.3 ], [ %_4, %src.addr.case.4 ], [ %_5, %src.addr.case.5 ]
  store i32 %4, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6a6i32.14.17([6 x [6 x i32]]* "orig.arg.no"="0" %dst, i32* readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_0_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_0_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_0_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.0.4" %src_0_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.0.5" %src_0_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.1.0" %src_1_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.1.1" %src_1_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.1.2" %src_1_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.1.3" %src_1_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.1.4" %src_1_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.1.5" %src_1_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.2.0" %src_2_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.2.1" %src_2_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.2.2" %src_2_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.2.3" %src_2_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.2.4" %src_2_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.2.5" %src_2_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.3.0" %src_3_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.3.1" %src_3_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.3.2" %src_3_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.3.3" %src_3_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.3.4" %src_3_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.3.5" %src_3_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.4.0" %src_4_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.4.1" %src_4_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.4.2" %src_4_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.4.3" %src_4_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.4.4" %src_4_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.4.5" %src_4_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.5.0" %src_5_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.5.1" %src_5_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.5.2" %src_5_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.5.3" %src_5_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.5.4" %src_5_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.5.5" %src_5_5, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq i32* %src_0_0, null
  %1 = icmp eq [6 x [6 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [6 x [6 x i32]], [6 x [6 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.5 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
    i64 3, label %src.addr.case.3
    i64 4, label %src.addr.case.4
  ]

src.addr.case.0:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.15.16([6 x i32]* %dst.addr, i32* %src_0_0, i32* %src_0_1, i32* %src_0_2, i32* %src_0_3, i32* %src_0_4, i32* %src_0_5, i64 6)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.15.16([6 x i32]* %dst.addr, i32* %src_1_0, i32* %src_1_1, i32* %src_1_2, i32* %src_1_3, i32* %src_1_4, i32* %src_1_5, i64 6)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.15.16([6 x i32]* %dst.addr, i32* %src_2_0, i32* %src_2_1, i32* %src_2_2, i32* %src_2_3, i32* %src_2_4, i32* %src_2_5, i64 6)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.15.16([6 x i32]* %dst.addr, i32* %src_3_0, i32* %src_3_1, i32* %src_3_2, i32* %src_3_3, i32* %src_3_4, i32* %src_3_5, i64 6)
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32.15.16([6 x i32]* %dst.addr, i32* %src_4_0, i32* %src_4_1, i32* %src_4_2, i32* %src_4_3, i32* %src_4_4, i32* %src_4_5, i64 6)
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 5
  call void @llvm.assume(i1 %3)
  call void @arraycpy_hls.p0a6i32.15.16([6 x i32]* %dst.addr, i32* %src_5_0, i32* %src_5_1, i32* %src_5_2, i32* %src_5_3, i32* %src_5_4, i32* %src_5_5, i64 6)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a6a6i32.13.18([6 x [6 x i32]]* noalias "orig.arg.no"="0" %dst, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_0_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_0_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_0_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %src_0_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %src_0_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %src_1_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %src_1_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %src_1_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %src_1_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.4" %src_1_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.5" %src_1_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.0" %src_2_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.1" %src_2_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.2" %src_2_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.3" %src_2_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.4" %src_2_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.5" %src_2_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.0" %src_3_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.1" %src_3_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.2" %src_3_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.3" %src_3_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.4" %src_3_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.5" %src_3_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.0" %src_4_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.1" %src_4_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.2" %src_4_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.3" %src_4_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.4" %src_4_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.5" %src_4_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.0" %src_5_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.1" %src_5_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.2" %src_5_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.3" %src_5_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.4" %src_5_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.5" %src_5_5) #3 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %dst, null
  %1 = icmp eq i32* %src_0_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32.14.17([6 x [6 x i32]]* nonnull %dst, i32* nonnull %src_0_0, i32* %src_0_1, i32* %src_0_2, i32* %src_0_3, i32* %src_0_4, i32* %src_0_5, i32* %src_1_0, i32* %src_1_1, i32* %src_1_2, i32* %src_1_3, i32* %src_1_4, i32* %src_1_5, i32* %src_2_0, i32* %src_2_1, i32* %src_2_2, i32* %src_2_3, i32* %src_2_4, i32* %src_2_5, i32* %src_3_0, i32* %src_3_1, i32* %src_3_2, i32* %src_3_3, i32* %src_3_4, i32* %src_3_5, i32* %src_4_0, i32* %src_4_1, i32* %src_4_2, i32* %src_4_3, i32* %src_4_4, i32* %src_4_5, i32* %src_5_0, i32* %src_5_1, i32* %src_5_2, i32* %src_5_3, i32* %src_5_4, i32* %src_5_5, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([6 x [6 x i32]]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_0_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %_0_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %_0_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %_1_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.4" %_1_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.5" %_1_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.3" %_2_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.4" %_2_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.5" %_2_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.0" %_3_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.1" %_3_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.2" %_3_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.3" %_3_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.4" %_3_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.5" %_3_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.0" %_4_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.1" %_4_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.2" %_4_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.3" %_4_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.4" %_4_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.5" %_4_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.0" %_5_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.1" %_5_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.2" %_5_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.3" %_5_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.4" %_5_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.5" %_5_5, [6 x [6 x i32]]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0_01, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_0_12, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_0_23, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_0_34, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_0_45, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_0_56, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.0" %_1_07, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.1" %_1_18, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.2" %_1_29, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.3" %_1_310, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.4" %_1_411, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.5" %_1_512, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.0" %_2_013, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.1" %_2_114, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.2" %_2_215, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.3" %_2_316, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.4" %_2_417, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.5" %_2_518, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.0" %_3_019, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.1" %_3_120, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.2" %_3_221, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.3" %_3_322, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.4" %_3_423, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.5" %_3_524, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.0" %_4_025, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.1" %_4_126, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.2" %_4_227, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.3" %_4_328, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.4" %_4_429, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.5" %_4_530, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.0" %_5_031, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.1" %_5_132, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.2" %_5_233, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.3" %_5_334, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.4" %_5_435, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.5" %_5_536, [6 x [6 x i32]]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.0" %_0_037, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.1" %_0_138, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.2" %_0_239, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.3" %_0_340, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.4" %_0_441, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.5" %_0_542, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.0" %_1_043, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.1" %_1_144, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.2" %_1_245, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.3" %_1_346, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.4" %_1_447, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.5" %_1_548, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.0" %_2_049, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.1" %_2_150, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.2" %_2_251, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.3" %_2_352, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.4" %_2_453, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.5" %_2_554, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.0" %_3_055, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.1" %_3_156, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.2" %_3_257, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.3" %_3_358, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.4" %_3_459, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.5" %_3_560, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.0" %_4_061, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.1" %_4_162, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.2" %_4_263, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.3" %_4_364, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.4" %_4_465, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.5" %_4_566, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.0" %_5_067, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.1" %_5_168, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.2" %_5_269, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.3" %_5_370, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.4" %_5_471, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.5" %_5_572) #5 {
entry:
  call void @onebyonecpy_hls.p0a6a6i32.13.18([6 x [6 x i32]]* %0, i32* align 512 %_0_0, i32* align 512 %_0_1, i32* align 512 %_0_2, i32* align 512 %_0_3, i32* align 512 %_0_4, i32* align 512 %_0_5, i32* align 512 %_1_0, i32* align 512 %_1_1, i32* align 512 %_1_2, i32* align 512 %_1_3, i32* align 512 %_1_4, i32* align 512 %_1_5, i32* align 512 %_2_0, i32* align 512 %_2_1, i32* align 512 %_2_2, i32* align 512 %_2_3, i32* align 512 %_2_4, i32* align 512 %_2_5, i32* align 512 %_3_0, i32* align 512 %_3_1, i32* align 512 %_3_2, i32* align 512 %_3_3, i32* align 512 %_3_4, i32* align 512 %_3_5, i32* align 512 %_4_0, i32* align 512 %_4_1, i32* align 512 %_4_2, i32* align 512 %_4_3, i32* align 512 %_4_4, i32* align 512 %_4_5, i32* align 512 %_5_0, i32* align 512 %_5_1, i32* align 512 %_5_2, i32* align 512 %_5_3, i32* align 512 %_5_4, i32* align 512 %_5_5)
  call void @onebyonecpy_hls.p0a6a6i32.13.18([6 x [6 x i32]]* %1, i32* align 512 %_0_01, i32* align 512 %_0_12, i32* align 512 %_0_23, i32* align 512 %_0_34, i32* align 512 %_0_45, i32* align 512 %_0_56, i32* align 512 %_1_07, i32* align 512 %_1_18, i32* align 512 %_1_29, i32* align 512 %_1_310, i32* align 512 %_1_411, i32* align 512 %_1_512, i32* align 512 %_2_013, i32* align 512 %_2_114, i32* align 512 %_2_215, i32* align 512 %_2_316, i32* align 512 %_2_417, i32* align 512 %_2_518, i32* align 512 %_3_019, i32* align 512 %_3_120, i32* align 512 %_3_221, i32* align 512 %_3_322, i32* align 512 %_3_423, i32* align 512 %_3_524, i32* align 512 %_4_025, i32* align 512 %_4_126, i32* align 512 %_4_227, i32* align 512 %_4_328, i32* align 512 %_4_429, i32* align 512 %_4_530, i32* align 512 %_5_031, i32* align 512 %_5_132, i32* align 512 %_5_233, i32* align 512 %_5_334, i32* align 512 %_5_435, i32* align 512 %_5_536)
  call void @onebyonecpy_hls.p0a6a6i32.13.18([6 x [6 x i32]]* %2, i32* align 512 %_0_037, i32* align 512 %_0_138, i32* align 512 %_0_239, i32* align 512 %_0_340, i32* align 512 %_0_441, i32* align 512 %_0_542, i32* align 512 %_1_043, i32* align 512 %_1_144, i32* align 512 %_1_245, i32* align 512 %_1_346, i32* align 512 %_1_447, i32* align 512 %_1_548, i32* align 512 %_2_049, i32* align 512 %_2_150, i32* align 512 %_2_251, i32* align 512 %_2_352, i32* align 512 %_2_453, i32* align 512 %_2_554, i32* align 512 %_3_055, i32* align 512 %_3_156, i32* align 512 %_3_257, i32* align 512 %_3_358, i32* align 512 %_3_459, i32* align 512 %_3_560, i32* align 512 %_4_061, i32* align 512 %_4_162, i32* align 512 %_4_263, i32* align 512 %_4_364, i32* align 512 %_4_465, i32* align 512 %_4_566, i32* align 512 %_5_067, i32* align 512 %_5_168, i32* align 512 %_5_269, i32* align 512 %_5_370, i32* align 512 %_5_471, i32* align 512 %_5_572)
  ret void
}

declare void @apatb_matrix_mult_partition_both_dims_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([6 x [6 x i32]]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_0_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %_0_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %_0_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %_1_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.4" %_1_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1.5" %_1_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.3" %_2_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.4" %_2_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2.5" %_2_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.0" %_3_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.1" %_3_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.2" %_3_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.3" %_3_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.4" %_3_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3.5" %_3_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.0" %_4_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.1" %_4_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.2" %_4_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.3" %_4_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.4" %_4_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4.5" %_4_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.0" %_5_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.1" %_5_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.2" %_5_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.3" %_5_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.4" %_5_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5.5" %_5_5, [6 x [6 x i32]]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0_01, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_0_12, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_0_23, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_0_34, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_0_45, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_0_56, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.0" %_1_07, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.1" %_1_18, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.2" %_1_29, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.3" %_1_310, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.4" %_1_411, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1.5" %_1_512, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.0" %_2_013, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.1" %_2_114, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.2" %_2_215, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.3" %_2_316, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.4" %_2_417, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2.5" %_2_518, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.0" %_3_019, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.1" %_3_120, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.2" %_3_221, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.3" %_3_322, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.4" %_3_423, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3.5" %_3_524, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.0" %_4_025, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.1" %_4_126, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.2" %_4_227, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.3" %_4_328, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.4" %_4_429, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4.5" %_4_530, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.0" %_5_031, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.1" %_5_132, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.2" %_5_233, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.3" %_5_334, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.4" %_5_435, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5.5" %_5_536, [6 x [6 x i32]]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.0" %_0_037, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.1" %_0_138, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.2" %_0_239, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.3" %_0_340, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.4" %_0_441, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0.5" %_0_542, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.0" %_1_043, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.1" %_1_144, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.2" %_1_245, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.3" %_1_346, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.4" %_1_447, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1.5" %_1_548, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.0" %_2_049, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.1" %_2_150, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.2" %_2_251, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.3" %_2_352, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.4" %_2_453, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2.5" %_2_554, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.0" %_3_055, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.1" %_3_156, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.2" %_3_257, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.3" %_3_358, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.4" %_3_459, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3.5" %_3_560, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.0" %_4_061, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.1" %_4_162, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.2" %_4_263, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.3" %_4_364, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.4" %_4_465, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4.5" %_4_566, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.0" %_5_067, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.1" %_5_168, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.2" %_5_269, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.3" %_5_370, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.4" %_5_471, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5.5" %_5_572) #5 {
entry:
  call void @onebyonecpy_hls.p0a6a6i32.13.18([6 x [6 x i32]]* %2, i32* align 512 %_0_037, i32* align 512 %_0_138, i32* align 512 %_0_239, i32* align 512 %_0_340, i32* align 512 %_0_441, i32* align 512 %_0_542, i32* align 512 %_1_043, i32* align 512 %_1_144, i32* align 512 %_1_245, i32* align 512 %_1_346, i32* align 512 %_1_447, i32* align 512 %_1_548, i32* align 512 %_2_049, i32* align 512 %_2_150, i32* align 512 %_2_251, i32* align 512 %_2_352, i32* align 512 %_2_453, i32* align 512 %_2_554, i32* align 512 %_3_055, i32* align 512 %_3_156, i32* align 512 %_3_257, i32* align 512 %_3_358, i32* align 512 %_3_459, i32* align 512 %_3_560, i32* align 512 %_4_061, i32* align 512 %_4_162, i32* align 512 %_4_263, i32* align 512 %_4_364, i32* align 512 %_4_465, i32* align 512 %_4_566, i32* align 512 %_5_067, i32* align 512 %_5_168, i32* align 512 %_5_269, i32* align 512 %_5_370, i32* align 512 %_5_471, i32* align 512 %_5_572)
  ret void
}

define void @matrix_mult_partition_both_dims_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #6 {
entry:
  %108 = alloca [6 x [6 x i32]]
  %109 = alloca [6 x [6 x i32]]
  %110 = alloca [6 x [6 x i32]]
  call void @copy_out([6 x [6 x i32]]* %108, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, [6 x [6 x i32]]* %109, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %71, [6 x [6 x i32]]* %110, i32* %72, i32* %73, i32* %74, i32* %75, i32* %76, i32* %77, i32* %78, i32* %79, i32* %80, i32* %81, i32* %82, i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, i32* %88, i32* %89, i32* %90, i32* %91, i32* %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* %97, i32* %98, i32* %99, i32* %100, i32* %101, i32* %102, i32* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %111 = bitcast [6 x [6 x i32]]* %108 to [6 x i32]*
  %112 = bitcast [6 x [6 x i32]]* %109 to [6 x i32]*
  %113 = bitcast [6 x [6 x i32]]* %110 to [6 x i32]*
  call void @matrix_mult_partition_both_dims_hw_stub([6 x i32]* %111, [6 x i32]* %112, [6 x i32]* %113)
  call void @copy_in([6 x [6 x i32]]* %108, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, [6 x [6 x i32]]* %109, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %71, [6 x [6 x i32]]* %110, i32* %72, i32* %73, i32* %74, i32* %75, i32* %76, i32* %77, i32* %78, i32* %79, i32* %80, i32* %81, i32* %82, i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, i32* %88, i32* %89, i32* %90, i32* %91, i32* %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* %97, i32* %98, i32* %99, i32* %100, i32* %101, i32* %102, i32* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  ret void
}

declare void @matrix_mult_partition_both_dims_hw_stub([6 x i32]* noalias nocapture nonnull readonly, [6 x i32]* noalias nocapture nonnull readonly, [6 x i32]* noalias nocapture nonnull)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { nounwind willreturn }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !48, !88}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !11}
!6 = !{!7}
!7 = !{!"0", [6 x [6 x i32]]* null}
!8 = !{!9, !10}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!"array_partition", !"type=Complete", !"dim=2"}
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!12 = !{!"0.0.0", i32* null}
!13 = !{!"0.0.1", i32* null}
!14 = !{!"0.0.2", i32* null}
!15 = !{!"0.0.3", i32* null}
!16 = !{!"0.0.4", i32* null}
!17 = !{!"0.0.5", i32* null}
!18 = !{!"0.1.0", i32* null}
!19 = !{!"0.1.1", i32* null}
!20 = !{!"0.1.2", i32* null}
!21 = !{!"0.1.3", i32* null}
!22 = !{!"0.1.4", i32* null}
!23 = !{!"0.1.5", i32* null}
!24 = !{!"0.2.0", i32* null}
!25 = !{!"0.2.1", i32* null}
!26 = !{!"0.2.2", i32* null}
!27 = !{!"0.2.3", i32* null}
!28 = !{!"0.2.4", i32* null}
!29 = !{!"0.2.5", i32* null}
!30 = !{!"0.3.0", i32* null}
!31 = !{!"0.3.1", i32* null}
!32 = !{!"0.3.2", i32* null}
!33 = !{!"0.3.3", i32* null}
!34 = !{!"0.3.4", i32* null}
!35 = !{!"0.3.5", i32* null}
!36 = !{!"0.4.0", i32* null}
!37 = !{!"0.4.1", i32* null}
!38 = !{!"0.4.2", i32* null}
!39 = !{!"0.4.3", i32* null}
!40 = !{!"0.4.4", i32* null}
!41 = !{!"0.4.5", i32* null}
!42 = !{!"0.5.0", i32* null}
!43 = !{!"0.5.1", i32* null}
!44 = !{!"0.5.2", i32* null}
!45 = !{!"0.5.3", i32* null}
!46 = !{!"0.5.4", i32* null}
!47 = !{!"0.5.5", i32* null}
!48 = !{!49, !8, !51}
!49 = !{!50}
!50 = !{!"1", [6 x [6 x i32]]* null}
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!52 = !{!"1.0.0", i32* null}
!53 = !{!"1.0.1", i32* null}
!54 = !{!"1.0.2", i32* null}
!55 = !{!"1.0.3", i32* null}
!56 = !{!"1.0.4", i32* null}
!57 = !{!"1.0.5", i32* null}
!58 = !{!"1.1.0", i32* null}
!59 = !{!"1.1.1", i32* null}
!60 = !{!"1.1.2", i32* null}
!61 = !{!"1.1.3", i32* null}
!62 = !{!"1.1.4", i32* null}
!63 = !{!"1.1.5", i32* null}
!64 = !{!"1.2.0", i32* null}
!65 = !{!"1.2.1", i32* null}
!66 = !{!"1.2.2", i32* null}
!67 = !{!"1.2.3", i32* null}
!68 = !{!"1.2.4", i32* null}
!69 = !{!"1.2.5", i32* null}
!70 = !{!"1.3.0", i32* null}
!71 = !{!"1.3.1", i32* null}
!72 = !{!"1.3.2", i32* null}
!73 = !{!"1.3.3", i32* null}
!74 = !{!"1.3.4", i32* null}
!75 = !{!"1.3.5", i32* null}
!76 = !{!"1.4.0", i32* null}
!77 = !{!"1.4.1", i32* null}
!78 = !{!"1.4.2", i32* null}
!79 = !{!"1.4.3", i32* null}
!80 = !{!"1.4.4", i32* null}
!81 = !{!"1.4.5", i32* null}
!82 = !{!"1.5.0", i32* null}
!83 = !{!"1.5.1", i32* null}
!84 = !{!"1.5.2", i32* null}
!85 = !{!"1.5.3", i32* null}
!86 = !{!"1.5.4", i32* null}
!87 = !{!"1.5.5", i32* null}
!88 = !{!89, !8, !91}
!89 = !{!90}
!90 = !{!"2", [6 x [6 x i32]]* null}
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!92 = !{!"2.0.0", i32* null}
!93 = !{!"2.0.1", i32* null}
!94 = !{!"2.0.2", i32* null}
!95 = !{!"2.0.3", i32* null}
!96 = !{!"2.0.4", i32* null}
!97 = !{!"2.0.5", i32* null}
!98 = !{!"2.1.0", i32* null}
!99 = !{!"2.1.1", i32* null}
!100 = !{!"2.1.2", i32* null}
!101 = !{!"2.1.3", i32* null}
!102 = !{!"2.1.4", i32* null}
!103 = !{!"2.1.5", i32* null}
!104 = !{!"2.2.0", i32* null}
!105 = !{!"2.2.1", i32* null}
!106 = !{!"2.2.2", i32* null}
!107 = !{!"2.2.3", i32* null}
!108 = !{!"2.2.4", i32* null}
!109 = !{!"2.2.5", i32* null}
!110 = !{!"2.3.0", i32* null}
!111 = !{!"2.3.1", i32* null}
!112 = !{!"2.3.2", i32* null}
!113 = !{!"2.3.3", i32* null}
!114 = !{!"2.3.4", i32* null}
!115 = !{!"2.3.5", i32* null}
!116 = !{!"2.4.0", i32* null}
!117 = !{!"2.4.1", i32* null}
!118 = !{!"2.4.2", i32* null}
!119 = !{!"2.4.3", i32* null}
!120 = !{!"2.4.4", i32* null}
!121 = !{!"2.4.5", i32* null}
!122 = !{!"2.5.0", i32* null}
!123 = !{!"2.5.1", i32* null}
!124 = !{!"2.5.2", i32* null}
!125 = !{!"2.5.3", i32* null}
!126 = !{!"2.5.4", i32* null}
!127 = !{!"2.5.5", i32* null}
