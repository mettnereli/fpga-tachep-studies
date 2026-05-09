; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW6/Q11/dense_optimized_proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_dense_optimized_ir(i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "partition" %x, [8 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "partition" %w, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="8" %y) local_unnamed_addr #1 {
entry:
  %x_copy_0 = alloca [4 x i32], align 512
  %x_copy_1 = alloca [4 x i32], align 512
  %x_copy_2 = alloca [4 x i32], align 512
  %x_copy_3 = alloca [4 x i32], align 512
  %w_copy_0 = alloca [4 x [8 x i32]], align 512
  %w_copy_1 = alloca [4 x [8 x i32]], align 512
  %w_copy_2 = alloca [4 x [8 x i32]], align 512
  %w_copy_3 = alloca [4 x [8 x i32]], align 512
  %y_copy = alloca [8 x i32], align 512
  %0 = bitcast i32* %x to [16 x i32]*
  %1 = bitcast [8 x i32]* %w to [16 x [8 x i32]]*
  %2 = bitcast i32* %y to [8 x i32]*
  call void @copy_in([16 x i32]* nonnull %0, [4 x i32]* nonnull align 512 %x_copy_0, [4 x i32]* nonnull align 512 %x_copy_1, [4 x i32]* nonnull align 512 %x_copy_2, [4 x i32]* nonnull align 512 %x_copy_3, [16 x [8 x i32]]* nonnull %1, [4 x [8 x i32]]* nonnull align 512 %w_copy_0, [4 x [8 x i32]]* nonnull align 512 %w_copy_1, [4 x [8 x i32]]* nonnull align 512 %w_copy_2, [4 x [8 x i32]]* nonnull align 512 %w_copy_3, [8 x i32]* nonnull %2, [8 x i32]* nonnull align 512 %y_copy)
  %_0 = getelementptr [4 x i32], [4 x i32]* %x_copy_0, i64 0, i64 0
  %_1 = getelementptr [4 x i32], [4 x i32]* %x_copy_1, i64 0, i64 0
  %_2 = getelementptr [4 x i32], [4 x i32]* %x_copy_2, i64 0, i64 0
  %_3 = getelementptr [4 x i32], [4 x i32]* %x_copy_3, i64 0, i64 0
  %_01 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %w_copy_0, i64 0, i64 0
  %_12 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %w_copy_1, i64 0, i64 0
  %_23 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %w_copy_2, i64 0, i64 0
  %_34 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %w_copy_3, i64 0, i64 0
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_0, i32 999, i32 1, i32 1, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_1, i32 999, i32 1, i32 1, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_2, i32 999, i32 1, i32 1, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_3, i32 999, i32 1, i32 1, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !23
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_01, i32 999, i32 1, i32 1, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_12, i32 999, i32 1, i32 1, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_23, i32 999, i32 1, i32 1, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_34, i32 999, i32 1, i32 1, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_01, i32 998, i32 1, i32 0, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_23, i32 998, i32 1, i32 0, i1 false) ], !dbg !36
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"([8 x i32]* %_34, i32 998, i32 1, i32 0, i1 false) ], !dbg !36
  call void @apatb_dense_optimized_hw([4 x i32]* %x_copy_0, [4 x i32]* %x_copy_1, [4 x i32]* %x_copy_2, [4 x i32]* %x_copy_3, [4 x [8 x i32]]* %w_copy_0, [4 x [8 x i32]]* %w_copy_1, [4 x [8 x i32]]* %w_copy_2, [4 x [8 x i32]]* %w_copy_3, [8 x i32]* %y_copy)
  call void @copy_back([16 x i32]* %0, [4 x i32]* %x_copy_0, [4 x i32]* %x_copy_1, [4 x i32]* %x_copy_2, [4 x i32]* %x_copy_3, [16 x [8 x i32]]* %1, [4 x [8 x i32]]* %w_copy_0, [4 x [8 x i32]]* %w_copy_1, [4 x [8 x i32]]* %w_copy_2, [4 x [8 x i32]]* %w_copy_3, [8 x i32]* %2, [8 x i32]* %y_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32([16 x i32]* "orig.arg.no"="0" %dst, [16 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x i32]* %src, null
  %1 = icmp eq [16 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i32], [16 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x i32], [16 x i32]* %src, i64 0, i64 %for.loop.idx2
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

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16a8i32([16 x [8 x i32]]* "orig.arg.no"="0" %dst, [16 x [8 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x [8 x i32]]* %src, null
  %1 = icmp eq [16 x [8 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x [8 x i32]], [16 x [8 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x [8 x i32]], [16 x [8 x i32]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr, [8 x i32]* %src.addr, i64 8)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8i32([8 x i32]* %dst, [8 x i32]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x i32]* %src, null
  %1 = icmp eq [8 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x i32], [8 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [8 x i32], [8 x i32]* %src, i64 0, i64 %for.loop.idx2
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

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* noalias align 512 %dst, [8 x i32]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [8 x i32]* %dst, null
  %1 = icmp eq [8 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a8i32([8 x i32]* nonnull %dst, [8 x i32]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32.4.5([4 x i32]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [4 x i32]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [4 x i32]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [4 x i32]* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [16 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x i32]* %src, null
  %1 = icmp eq [4 x i32]* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %3 = udiv i64 %for.loop.idx2, 4
  %4 = urem i64 %for.loop.idx2, 4
  %dst.addr_0 = getelementptr [4 x i32], [4 x i32]* %dst_0, i64 0, i64 %3
  %dst.addr_1 = getelementptr [4 x i32], [4 x i32]* %dst_1, i64 0, i64 %3
  %dst.addr_2 = getelementptr [4 x i32], [4 x i32]* %dst_2, i64 0, i64 %3
  %dst.addr_3 = getelementptr [4 x i32], [4 x i32]* %dst_3, i64 0, i64 %3
  %src.addr = getelementptr [16 x i32], [16 x i32]* %src, i64 0, i64 %for.loop.idx2
  %5 = load i32, i32* %src.addr, align 4
  switch i64 %4, label %dst.addr.case.3 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %5, i32* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %5, i32* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i32 %5, i32* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  %6 = icmp eq i64 %4, 3
  call void @llvm.assume(i1 %6)
  store i32 %5, i32* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a16i32.3.6([4 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [4 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [4 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [4 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [16 x i32]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq [4 x i32]* %dst_0, null
  %1 = icmp eq [16 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16i32.4.5([4 x i32]* nonnull %dst_0, [4 x i32]* %dst_1, [4 x i32]* %dst_2, [4 x i32]* %dst_3, [16 x i32]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16a8i32.8.9([4 x [8 x i32]]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [4 x [8 x i32]]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [4 x [8 x i32]]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [4 x [8 x i32]]* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [16 x [8 x i32]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x [8 x i32]]* %src, null
  %1 = icmp eq [4 x [8 x i32]]* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %3 = udiv i64 %for.loop.idx2, 4
  %4 = urem i64 %for.loop.idx2, 4
  %dst.addr_0 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %dst_0, i64 0, i64 %3
  %dst.addr_1 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %dst_1, i64 0, i64 %3
  %dst.addr_2 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %dst_2, i64 0, i64 %3
  %dst.addr_3 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %dst_3, i64 0, i64 %3
  %src.addr = getelementptr [16 x [8 x i32]], [16 x [8 x i32]]* %src, i64 0, i64 %for.loop.idx2
  switch i64 %4, label %dst.addr.case.3 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr_0, [8 x i32]* %src.addr, i64 8)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr_1, [8 x i32]* %src.addr, i64 8)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr_2, [8 x i32]* %src.addr, i64 8)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  %5 = icmp eq i64 %4, 3
  call void @llvm.assume(i1 %5)
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr_3, [8 x i32]* %src.addr, i64 8)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a16a8i32.7.10([4 x [8 x i32]]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [16 x [8 x i32]]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq [4 x [8 x i32]]* %dst_0, null
  %1 = icmp eq [16 x [8 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16a8i32.8.9([4 x [8 x i32]]* nonnull %dst_0, [4 x [8 x i32]]* %dst_1, [4 x [8 x i32]]* %dst_2, [4 x [8 x i32]]* %dst_3, [16 x [8 x i32]]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([16 x i32]* noalias readonly "orig.arg.no"="0", [4 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [4 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [4 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [4 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [16 x [8 x i32]]* noalias readonly "orig.arg.no"="2", [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [4 x [8 x i32]]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [8 x i32]* noalias readonly "orig.arg.no"="4", [8 x i32]* noalias align 512 "orig.arg.no"="5") #5 {
entry:
  call void @onebyonecpy_hls.p0a16i32.3.6([4 x i32]* align 512 %_0, [4 x i32]* align 512 %_1, [4 x i32]* align 512 %_2, [4 x i32]* align 512 %_3, [16 x i32]* %0)
  call void @onebyonecpy_hls.p0a16a8i32.7.10([4 x [8 x i32]]* align 512 %_01, [4 x [8 x i32]]* align 512 %_12, [4 x [8 x i32]]* align 512 %_23, [4 x [8 x i32]]* align 512 %_34, [16 x [8 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* align 512 %3, [8 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32.16.17([16 x i32]* "orig.arg.no"="0" %dst, [4 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [4 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [4 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [4 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [4 x i32]* %src_0, null
  %1 = icmp eq [16 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %3 = udiv i64 %for.loop.idx2, 4
  %4 = urem i64 %for.loop.idx2, 4
  %dst.addr = getelementptr [16 x i32], [16 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr_0 = getelementptr [4 x i32], [4 x i32]* %src_0, i64 0, i64 %3
  %src.addr_1 = getelementptr [4 x i32], [4 x i32]* %src_1, i64 0, i64 %3
  %src.addr_2 = getelementptr [4 x i32], [4 x i32]* %src_2, i64 0, i64 %3
  %src.addr_3 = getelementptr [4 x i32], [4 x i32]* %src_3, i64 0, i64 %3
  switch i64 %4, label %src.addr.case.3 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i32, i32* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load i32, i32* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_2 = load i32, i32* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %5 = icmp eq i64 %4, 3
  call void @llvm.assume(i1 %5)
  %_3 = load i32, i32* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %6 = phi i32 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ], [ %_3, %src.addr.case.3 ]
  store i32 %6, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a16i32.15.18([16 x i32]* noalias "orig.arg.no"="0" %dst, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3) #3 {
entry:
  %0 = icmp eq [16 x i32]* %dst, null
  %1 = icmp eq [4 x i32]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16i32.16.17([16 x i32]* nonnull %dst, [4 x i32]* nonnull %src_0, [4 x i32]* %src_1, [4 x i32]* %src_2, [4 x i32]* %src_3, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16a8i32.20.21([16 x [8 x i32]]* "orig.arg.no"="0" %dst, [4 x [8 x i32]]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [4 x [8 x i32]]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [4 x [8 x i32]]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [4 x [8 x i32]]* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [4 x [8 x i32]]* %src_0, null
  %1 = icmp eq [16 x [8 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %3 = udiv i64 %for.loop.idx2, 4
  %4 = urem i64 %for.loop.idx2, 4
  %dst.addr = getelementptr [16 x [8 x i32]], [16 x [8 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr_0 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %src_0, i64 0, i64 %3
  %src.addr_1 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %src_1, i64 0, i64 %3
  %src.addr_2 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %src_2, i64 0, i64 %3
  %src.addr_3 = getelementptr [4 x [8 x i32]], [4 x [8 x i32]]* %src_3, i64 0, i64 %3
  switch i64 %4, label %src.addr.case.3 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr, [8 x i32]* %src.addr_0, i64 8)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr, [8 x i32]* %src.addr_1, i64 8)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr, [8 x i32]* %src.addr_2, i64 8)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %5 = icmp eq i64 %4, 3
  call void @llvm.assume(i1 %5)
  call void @arraycpy_hls.p0a8i32([8 x i32]* %dst.addr, [8 x i32]* %src.addr_3, i64 8)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a16a8i32.19.22([16 x [8 x i32]]* noalias "orig.arg.no"="0" %dst, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3) #3 {
entry:
  %0 = icmp eq [16 x [8 x i32]]* %dst, null
  %1 = icmp eq [4 x [8 x i32]]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16a8i32.20.21([16 x [8 x i32]]* nonnull %dst, [4 x [8 x i32]]* nonnull %src_0, [4 x [8 x i32]]* %src_1, [4 x [8 x i32]]* %src_2, [4 x [8 x i32]]* %src_3, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([16 x i32]* noalias "orig.arg.no"="0", [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [16 x [8 x i32]]* noalias "orig.arg.no"="2", [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [8 x i32]* noalias "orig.arg.no"="4", [8 x i32]* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call void @onebyonecpy_hls.p0a16i32.15.18([16 x i32]* %0, [4 x i32]* align 512 %_0, [4 x i32]* align 512 %_1, [4 x i32]* align 512 %_2, [4 x i32]* align 512 %_3)
  call void @onebyonecpy_hls.p0a16a8i32.19.22([16 x [8 x i32]]* %1, [4 x [8 x i32]]* align 512 %_01, [4 x [8 x i32]]* align 512 %_12, [4 x [8 x i32]]* align 512 %_23, [4 x [8 x i32]]* align 512 %_34)
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %2, [8 x i32]* align 512 %3)
  ret void
}

declare void @apatb_dense_optimized_hw([4 x i32]*, [4 x i32]*, [4 x i32]*, [4 x i32]*, [4 x [8 x i32]]*, [4 x [8 x i32]]*, [4 x [8 x i32]]*, [4 x [8 x i32]]*, [8 x i32]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([16 x i32]* noalias "orig.arg.no"="0", [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [4 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [16 x [8 x i32]]* noalias "orig.arg.no"="2", [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [4 x [8 x i32]]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [8 x i32]* noalias "orig.arg.no"="4", [8 x i32]* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a8i32([8 x i32]* %2, [8 x i32]* align 512 %3)
  ret void
}

define void @dense_optimized_hw_stub_wrapper([4 x i32]*, [4 x i32]*, [4 x i32]*, [4 x i32]*, [4 x [8 x i32]]*, [4 x [8 x i32]]*, [4 x [8 x i32]]*, [4 x [8 x i32]]*, [8 x i32]*) #7 {
entry:
  %9 = alloca [16 x i32]
  %10 = alloca [16 x [8 x i32]]
  call void @copy_out([16 x i32]* %9, [4 x i32]* %0, [4 x i32]* %1, [4 x i32]* %2, [4 x i32]* %3, [16 x [8 x i32]]* %10, [4 x [8 x i32]]* %4, [4 x [8 x i32]]* %5, [4 x [8 x i32]]* %6, [4 x [8 x i32]]* %7, [8 x i32]* null, [8 x i32]* %8)
  %11 = bitcast [16 x i32]* %9 to i32*
  %12 = bitcast [16 x [8 x i32]]* %10 to [8 x i32]*
  %13 = bitcast [8 x i32]* %8 to i32*
  call void @dense_optimized_hw_stub(i32* %11, [8 x i32]* %12, i32* %13)
  call void @copy_in([16 x i32]* %9, [4 x i32]* %0, [4 x i32]* %1, [4 x i32]* %2, [4 x i32]* %3, [16 x [8 x i32]]* %10, [4 x [8 x i32]]* %4, [4 x [8 x i32]]* %5, [4 x [8 x i32]]* %6, [4 x [8 x i32]]* %7, [8 x i32]* null, [8 x i32]* %8)
  ret void
}

declare void @dense_optimized_hw_stub(i32* noalias nocapture nonnull readonly, [8 x i32]* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { nounwind willreturn }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !15}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [16 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=4"}
!10 = !{!11, !12, !13, !14}
!11 = !{!"0.0", [4 x i32]* null}
!12 = !{!"0.1", [4 x i32]* null}
!13 = !{!"0.2", [4 x i32]* null}
!14 = !{!"0.3", [4 x i32]* null}
!15 = !{!16, !8, !18}
!16 = !{!17}
!17 = !{!"1", [16 x [8 x i32]]* null}
!18 = !{!19, !20, !21, !22}
!19 = !{!"1.0", [4 x [8 x i32]]* null}
!20 = !{!"1.1", [4 x [8 x i32]]* null}
!21 = !{!"1.2", [4 x [8 x i32]]* null}
!22 = !{!"1.3", [4 x [8 x i32]]* null}
!23 = !DILocation(line: 30, column: 9, scope: !24)
!24 = distinct !DISubprogram(name: "dense_optimized", linkageName: "_Z15dense_optimizedPiPA8_iS_", scope: !25, file: !25, line: 19, type: !26, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !34, variables: !4)
!25 = !DIFile(filename: "dense_layer.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW6/Q11")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !30, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 8)
!34 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !35, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!35 = !DIFile(filename: "/scratch/emettner/fpga-tachep-studies/HW6/Q11/dense_optimized_proj/solution1/.autopilot/db/dense_layer.pp.0.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW6/Q11")
!36 = !DILocation(line: 31, column: 9, scope: !24)
