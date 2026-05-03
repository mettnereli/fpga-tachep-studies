; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW3/hw3_matrix_mult_partition_one_dim/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_matrix_mult_partition_one_dim_ir([6 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" "partition" %A, [6 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" "partition" %B, [6 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="6" %C) local_unnamed_addr #1 {
entry:
  %A_copy_0 = alloca [6 x i32], align 512
  %A_copy_1 = alloca [6 x i32], align 512
  %A_copy_2 = alloca [6 x i32], align 512
  %A_copy_3 = alloca [6 x i32], align 512
  %A_copy_4 = alloca [6 x i32], align 512
  %A_copy_5 = alloca [6 x i32], align 512
  %B_copy_0 = alloca [6 x i32], align 512
  %B_copy_1 = alloca [6 x i32], align 512
  %B_copy_2 = alloca [6 x i32], align 512
  %B_copy_3 = alloca [6 x i32], align 512
  %B_copy_4 = alloca [6 x i32], align 512
  %B_copy_5 = alloca [6 x i32], align 512
  %C_copy = alloca [6 x [6 x i32]], align 512
  %0 = bitcast [6 x i32]* %A to [6 x [6 x i32]]*
  %1 = bitcast [6 x i32]* %B to [6 x [6 x i32]]*
  %2 = bitcast [6 x i32]* %C to [6 x [6 x i32]]*
  call void @copy_in([6 x [6 x i32]]* nonnull %0, [6 x i32]* nonnull align 512 %A_copy_0, [6 x i32]* nonnull align 512 %A_copy_1, [6 x i32]* nonnull align 512 %A_copy_2, [6 x i32]* nonnull align 512 %A_copy_3, [6 x i32]* nonnull align 512 %A_copy_4, [6 x i32]* nonnull align 512 %A_copy_5, [6 x [6 x i32]]* nonnull %1, [6 x i32]* nonnull align 512 %B_copy_0, [6 x i32]* nonnull align 512 %B_copy_1, [6 x i32]* nonnull align 512 %B_copy_2, [6 x i32]* nonnull align 512 %B_copy_3, [6 x i32]* nonnull align 512 %B_copy_4, [6 x i32]* nonnull align 512 %B_copy_5, [6 x [6 x i32]]* nonnull %2, [6 x [6 x i32]]* nonnull align 512 %C_copy)
  %_0 = getelementptr [6 x i32], [6 x i32]* %A_copy_0, i64 0, i64 0
  %_1 = getelementptr [6 x i32], [6 x i32]* %A_copy_1, i64 0, i64 0
  %_2 = getelementptr [6 x i32], [6 x i32]* %A_copy_2, i64 0, i64 0
  %_3 = getelementptr [6 x i32], [6 x i32]* %A_copy_3, i64 0, i64 0
  %_4 = getelementptr [6 x i32], [6 x i32]* %A_copy_4, i64 0, i64 0
  %_5 = getelementptr [6 x i32], [6 x i32]* %A_copy_5, i64 0, i64 0
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([6 x i32]* %B_copy_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !41
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([6 x i32]* %B_copy_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !41
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([6 x i32]* %B_copy_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !41
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([6 x i32]* %B_copy_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !41
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([6 x i32]* %B_copy_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !41
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([6 x i32]* %B_copy_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !41
  call void @apatb_matrix_mult_partition_one_dim_hw([6 x i32]* %A_copy_0, [6 x i32]* %A_copy_1, [6 x i32]* %A_copy_2, [6 x i32]* %A_copy_3, [6 x i32]* %A_copy_4, [6 x i32]* %A_copy_5, [6 x i32]* %B_copy_0, [6 x i32]* %B_copy_1, [6 x i32]* %B_copy_2, [6 x i32]* %B_copy_3, [6 x i32]* %B_copy_4, [6 x i32]* %B_copy_5, [6 x [6 x i32]]* %C_copy)
  call void @copy_back([6 x [6 x i32]]* %0, [6 x i32]* %A_copy_0, [6 x i32]* %A_copy_1, [6 x i32]* %A_copy_2, [6 x i32]* %A_copy_3, [6 x i32]* %A_copy_4, [6 x i32]* %A_copy_5, [6 x [6 x i32]]* %1, [6 x i32]* %B_copy_0, [6 x i32]* %B_copy_1, [6 x i32]* %B_copy_2, [6 x i32]* %B_copy_3, [6 x i32]* %B_copy_4, [6 x i32]* %B_copy_5, [6 x [6 x i32]]* %2, [6 x [6 x i32]]* %C_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* noalias align 512 "orig.arg.no"="0" %dst, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %dst, null
  %1 = icmp eq [6 x [6 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32([6 x [6 x i32]]* nonnull %dst, [6 x [6 x i32]]* nonnull %src, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6a6i32([6 x [6 x i32]]* "orig.arg.no"="0" %dst, [6 x [6 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #3 {
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
define void @arraycpy_hls.p0a6i32([6 x i32]* "orig.arg.no"="0" %dst, [6 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #3 {
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
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6i32.5.6(i32* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i32* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i32* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i32* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i32* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [6 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #3 {
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
define void @arraycpy_hls.p0a6a6i32.4.7([6 x i32]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [6 x [6 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #3 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %src, null
  %1 = icmp eq [6 x i32]* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr_0 = getelementptr [6 x i32], [6 x i32]* %dst_0, i64 0, i64 %for.loop.idx2
  %dst.addr_1 = getelementptr [6 x i32], [6 x i32]* %dst_1, i64 0, i64 %for.loop.idx2
  %dst.addr_2 = getelementptr [6 x i32], [6 x i32]* %dst_2, i64 0, i64 %for.loop.idx2
  %dst.addr_3 = getelementptr [6 x i32], [6 x i32]* %dst_3, i64 0, i64 %for.loop.idx2
  %dst.addr_4 = getelementptr [6 x i32], [6 x i32]* %dst_4, i64 0, i64 %for.loop.idx2
  %dst.addr_5 = getelementptr [6 x i32], [6 x i32]* %dst_5, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [6 x [6 x i32]], [6 x [6 x i32]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a6i32.5.6(i32* %dst.addr_0, i32* %dst.addr_1, i32* %dst.addr_2, i32* %dst.addr_3, i32* %dst.addr_4, i32* %dst.addr_5, [6 x i32]* %src.addr, i64 6)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a6a6i32.3.8([6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4" %dst_4, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="1" %src) #2 {
entry:
  %0 = icmp eq [6 x i32]* %dst_0, null
  %1 = icmp eq [6 x [6 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32.4.7([6 x i32]* nonnull %dst_0, [6 x i32]* %dst_1, [6 x i32]* %dst_2, [6 x i32]* %dst_3, [6 x i32]* %dst_4, [6 x i32]* %dst_5, [6 x [6 x i32]]* nonnull %src, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6a6i32.10.11([6 x i32]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, [6 x i32]* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [6 x [6 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #3 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %src, null
  %1 = icmp eq [6 x i32]* %dst_0, null
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
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst_0, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst_1, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst_2, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst_3, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst_4, [6 x i32]* %src.addr, i64 6)
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 5
  call void @llvm.assume(i1 %3)
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst_5, [6 x i32]* %src.addr, i64 6)
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
define internal void @onebyonecpy_hls.p0a6a6i32.9.12([6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4" %dst_4, [6 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="1" %src) #2 {
entry:
  %0 = icmp eq [6 x i32]* %dst_0, null
  %1 = icmp eq [6 x [6 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32.10.11([6 x i32]* nonnull %dst_0, [6 x i32]* %dst_1, [6 x i32]* %dst_2, [6 x i32]* %dst_3, [6 x i32]* %dst_4, [6 x i32]* %dst_5, [6 x [6 x i32]]* nonnull %src, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([6 x [6 x i32]]* noalias readonly "orig.arg.no"="0", [6 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [6 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [6 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [6 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [6 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, [6 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="2", [6 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [6 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [6 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [6 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [6 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_45, [6 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_56, [6 x [6 x i32]]* noalias readonly "orig.arg.no"="4", [6 x [6 x i32]]* noalias align 512 "orig.arg.no"="5") #5 {
entry:
  call void @onebyonecpy_hls.p0a6a6i32.3.8([6 x i32]* align 512 %_0, [6 x i32]* align 512 %_1, [6 x i32]* align 512 %_2, [6 x i32]* align 512 %_3, [6 x i32]* align 512 %_4, [6 x i32]* align 512 %_5, [6 x [6 x i32]]* %0)
  call void @onebyonecpy_hls.p0a6a6i32.9.12([6 x i32]* align 512 %_01, [6 x i32]* align 512 %_12, [6 x i32]* align 512 %_23, [6 x i32]* align 512 %_34, [6 x i32]* align 512 %_45, [6 x i32]* align 512 %_56, [6 x [6 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* align 512 %3, [6 x [6 x i32]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6i32.19.20([6 x i32]* "orig.arg.no"="0" %dst, i32* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i64 "orig.arg.no"="2" %num) #3 {
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
define void @arraycpy_hls.p0a6a6i32.18.21([6 x [6 x i32]]* "orig.arg.no"="0" %dst, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i64 "orig.arg.no"="2" %num) #3 {
entry:
  %0 = icmp eq [6 x i32]* %src_0, null
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
  %src.addr_0 = getelementptr [6 x i32], [6 x i32]* %src_0, i64 0, i64 %for.loop.idx2
  %src.addr_1 = getelementptr [6 x i32], [6 x i32]* %src_1, i64 0, i64 %for.loop.idx2
  %src.addr_2 = getelementptr [6 x i32], [6 x i32]* %src_2, i64 0, i64 %for.loop.idx2
  %src.addr_3 = getelementptr [6 x i32], [6 x i32]* %src_3, i64 0, i64 %for.loop.idx2
  %src.addr_4 = getelementptr [6 x i32], [6 x i32]* %src_4, i64 0, i64 %for.loop.idx2
  %src.addr_5 = getelementptr [6 x i32], [6 x i32]* %src_5, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a6i32.19.20([6 x i32]* %dst.addr, i32* %src.addr_0, i32* %src.addr_1, i32* %src.addr_2, i32* %src.addr_3, i32* %src.addr_4, i32* %src.addr_5, i64 6)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a6a6i32.17.22([6 x [6 x i32]]* noalias "orig.arg.no"="0" %dst, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %src_4, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %src_5) #2 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %dst, null
  %1 = icmp eq [6 x i32]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32.18.21([6 x [6 x i32]]* nonnull %dst, [6 x i32]* nonnull %src_0, [6 x i32]* %src_1, [6 x i32]* %src_2, [6 x i32]* %src_3, [6 x i32]* %src_4, [6 x i32]* %src_5, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6a6i32.24.25([6 x [6 x i32]]* "orig.arg.no"="0" %dst, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, [6 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i64 "orig.arg.no"="2" %num) #3 {
entry:
  %0 = icmp eq [6 x i32]* %src_0, null
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
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src_0, i64 6)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src_1, i64 6)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src_2, i64 6)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src_3, i64 6)
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src_4, i64 6)
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 5
  call void @llvm.assume(i1 %3)
  call void @arraycpy_hls.p0a6i32([6 x i32]* %dst.addr, [6 x i32]* %src_5, i64 6)
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
define internal void @onebyonecpy_hls.p0a6a6i32.23.26([6 x [6 x i32]]* noalias "orig.arg.no"="0" %dst, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %src_4, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %src_5) #2 {
entry:
  %0 = icmp eq [6 x [6 x i32]]* %dst, null
  %1 = icmp eq [6 x i32]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6a6i32.24.25([6 x [6 x i32]]* nonnull %dst, [6 x i32]* nonnull %src_0, [6 x i32]* %src_1, [6 x i32]* %src_2, [6 x i32]* %src_3, [6 x i32]* %src_4, [6 x i32]* %src_5, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([6 x [6 x i32]]* noalias "orig.arg.no"="0", [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, [6 x [6 x i32]]* noalias "orig.arg.no"="2", [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_45, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_56, [6 x [6 x i32]]* noalias "orig.arg.no"="4", [6 x [6 x i32]]* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call void @onebyonecpy_hls.p0a6a6i32.17.22([6 x [6 x i32]]* %0, [6 x i32]* align 512 %_0, [6 x i32]* align 512 %_1, [6 x i32]* align 512 %_2, [6 x i32]* align 512 %_3, [6 x i32]* align 512 %_4, [6 x i32]* align 512 %_5)
  call void @onebyonecpy_hls.p0a6a6i32.23.26([6 x [6 x i32]]* %1, [6 x i32]* align 512 %_01, [6 x i32]* align 512 %_12, [6 x i32]* align 512 %_23, [6 x i32]* align 512 %_34, [6 x i32]* align 512 %_45, [6 x i32]* align 512 %_56)
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* %2, [6 x [6 x i32]]* align 512 %3)
  ret void
}

declare void @apatb_matrix_mult_partition_one_dim_hw([6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x [6 x i32]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([6 x [6 x i32]]* noalias "orig.arg.no"="0", [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, [6 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, [6 x [6 x i32]]* noalias "orig.arg.no"="2", [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_45, [6 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_56, [6 x [6 x i32]]* noalias "orig.arg.no"="4", [6 x [6 x i32]]* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* %2, [6 x [6 x i32]]* align 512 %3)
  ret void
}

define void @matrix_mult_partition_one_dim_hw_stub_wrapper([6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x i32]*, [6 x [6 x i32]]*) #7 {
entry:
  %13 = alloca [6 x [6 x i32]]
  %14 = alloca [6 x [6 x i32]]
  call void @copy_out([6 x [6 x i32]]* %13, [6 x i32]* %0, [6 x i32]* %1, [6 x i32]* %2, [6 x i32]* %3, [6 x i32]* %4, [6 x i32]* %5, [6 x [6 x i32]]* %14, [6 x i32]* %6, [6 x i32]* %7, [6 x i32]* %8, [6 x i32]* %9, [6 x i32]* %10, [6 x i32]* %11, [6 x [6 x i32]]* null, [6 x [6 x i32]]* %12)
  %15 = bitcast [6 x [6 x i32]]* %13 to [6 x i32]*
  %16 = bitcast [6 x [6 x i32]]* %14 to [6 x i32]*
  %17 = bitcast [6 x [6 x i32]]* %12 to [6 x i32]*
  call void @matrix_mult_partition_one_dim_hw_stub([6 x i32]* %15, [6 x i32]* %16, [6 x i32]* %17)
  call void @copy_in([6 x [6 x i32]]* %13, [6 x i32]* %0, [6 x i32]* %1, [6 x i32]* %2, [6 x i32]* %3, [6 x i32]* %4, [6 x i32]* %5, [6 x [6 x i32]]* %14, [6 x i32]* %6, [6 x i32]* %7, [6 x i32]* %8, [6 x i32]* %9, [6 x i32]* %10, [6 x i32]* %11, [6 x [6 x i32]]* null, [6 x [6 x i32]]* %12)
  ret void
}

declare void @matrix_mult_partition_one_dim_hw_stub([6 x i32]* noalias nocapture nonnull readonly, [6 x i32]* noalias nocapture nonnull readonly, [6 x i32]* noalias nocapture nonnull)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { nounwind willreturn }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !17}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [6 x [6 x i32]]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=2"}
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !{!"0.0", [6 x i32]* null}
!12 = !{!"0.1", [6 x i32]* null}
!13 = !{!"0.2", [6 x i32]* null}
!14 = !{!"0.3", [6 x i32]* null}
!15 = !{!"0.4", [6 x i32]* null}
!16 = !{!"0.5", [6 x i32]* null}
!17 = !{!18, !20, !22}
!18 = !{!19}
!19 = !{!"1", [6 x [6 x i32]]* null}
!20 = !{!21}
!21 = !{!"array_partition", !"type=Complete", !"dim=1"}
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !{!"1.0", [6 x i32]* null}
!24 = !{!"1.1", [6 x i32]* null}
!25 = !{!"1.2", [6 x i32]* null}
!26 = !{!"1.3", [6 x i32]* null}
!27 = !{!"1.4", [6 x i32]* null}
!28 = !{!"1.5", [6 x i32]* null}
!29 = !DILocation(line: 59, column: 9, scope: !30)
!30 = distinct !DISubprogram(name: "matrix_mult_partition_one_dim", linkageName: "_Z29matrix_mult_partition_one_dimPA6_iS0_S0_", scope: !31, file: !31, line: 50, type: !32, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !39, variables: !4)
!31 = !DIFile(filename: "hw3_kernels.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW3")
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 192, elements: !37)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38}
!38 = !DISubrange(count: 6)
!39 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !40, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!40 = !DIFile(filename: "/scratch/emettner/fpga-tachep-studies/HW3/hw3_matrix_mult_partition_one_dim/solution1/.autopilot/db/hw3_kernels.pp.0.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW3")
!41 = !DILocation(line: 60, column: 9, scope: !30)
