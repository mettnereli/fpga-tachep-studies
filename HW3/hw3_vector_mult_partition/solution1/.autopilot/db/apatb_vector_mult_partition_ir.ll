; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW3/hw3_vector_mult_partition/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_vector_mult_partition_ir(i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "partition" %a, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "partition" %b, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" "partition" %c) local_unnamed_addr #0 {
entry:
  %a_copy_0 = alloca i32, align 512
  %a_copy_1 = alloca i32, align 512
  %a_copy_2 = alloca i32, align 512
  %a_copy_3 = alloca i32, align 512
  %a_copy_4 = alloca i32, align 512
  %a_copy_5 = alloca i32, align 512
  %a_copy_6 = alloca i32, align 512
  %a_copy_7 = alloca i32, align 512
  %a_copy_8 = alloca i32, align 512
  %a_copy_9 = alloca i32, align 512
  %a_copy_10 = alloca i32, align 512
  %a_copy_11 = alloca i32, align 512
  %a_copy_12 = alloca i32, align 512
  %a_copy_13 = alloca i32, align 512
  %a_copy_14 = alloca i32, align 512
  %a_copy_15 = alloca i32, align 512
  %b_copy_0 = alloca i32, align 512
  %b_copy_1 = alloca i32, align 512
  %b_copy_2 = alloca i32, align 512
  %b_copy_3 = alloca i32, align 512
  %b_copy_4 = alloca i32, align 512
  %b_copy_5 = alloca i32, align 512
  %b_copy_6 = alloca i32, align 512
  %b_copy_7 = alloca i32, align 512
  %b_copy_8 = alloca i32, align 512
  %b_copy_9 = alloca i32, align 512
  %b_copy_10 = alloca i32, align 512
  %b_copy_11 = alloca i32, align 512
  %b_copy_12 = alloca i32, align 512
  %b_copy_13 = alloca i32, align 512
  %b_copy_14 = alloca i32, align 512
  %b_copy_15 = alloca i32, align 512
  %c_copy_0 = alloca i32, align 512
  %c_copy_1 = alloca i32, align 512
  %c_copy_2 = alloca i32, align 512
  %c_copy_3 = alloca i32, align 512
  %c_copy_4 = alloca i32, align 512
  %c_copy_5 = alloca i32, align 512
  %c_copy_6 = alloca i32, align 512
  %c_copy_7 = alloca i32, align 512
  %c_copy_8 = alloca i32, align 512
  %c_copy_9 = alloca i32, align 512
  %c_copy_10 = alloca i32, align 512
  %c_copy_11 = alloca i32, align 512
  %c_copy_12 = alloca i32, align 512
  %c_copy_13 = alloca i32, align 512
  %c_copy_14 = alloca i32, align 512
  %c_copy_15 = alloca i32, align 512
  %0 = bitcast i32* %a to [16 x i32]*
  %1 = bitcast i32* %b to [16 x i32]*
  %2 = bitcast i32* %c to [16 x i32]*
  call void @copy_in([16 x i32]* nonnull %0, i32* nonnull align 512 %a_copy_0, i32* nonnull align 512 %a_copy_1, i32* nonnull align 512 %a_copy_2, i32* nonnull align 512 %a_copy_3, i32* nonnull align 512 %a_copy_4, i32* nonnull align 512 %a_copy_5, i32* nonnull align 512 %a_copy_6, i32* nonnull align 512 %a_copy_7, i32* nonnull align 512 %a_copy_8, i32* nonnull align 512 %a_copy_9, i32* nonnull align 512 %a_copy_10, i32* nonnull align 512 %a_copy_11, i32* nonnull align 512 %a_copy_12, i32* nonnull align 512 %a_copy_13, i32* nonnull align 512 %a_copy_14, i32* nonnull align 512 %a_copy_15, [16 x i32]* nonnull %1, i32* nonnull align 512 %b_copy_0, i32* nonnull align 512 %b_copy_1, i32* nonnull align 512 %b_copy_2, i32* nonnull align 512 %b_copy_3, i32* nonnull align 512 %b_copy_4, i32* nonnull align 512 %b_copy_5, i32* nonnull align 512 %b_copy_6, i32* nonnull align 512 %b_copy_7, i32* nonnull align 512 %b_copy_8, i32* nonnull align 512 %b_copy_9, i32* nonnull align 512 %b_copy_10, i32* nonnull align 512 %b_copy_11, i32* nonnull align 512 %b_copy_12, i32* nonnull align 512 %b_copy_13, i32* nonnull align 512 %b_copy_14, i32* nonnull align 512 %b_copy_15, [16 x i32]* nonnull %2, i32* nonnull align 512 %c_copy_0, i32* nonnull align 512 %c_copy_1, i32* nonnull align 512 %c_copy_2, i32* nonnull align 512 %c_copy_3, i32* nonnull align 512 %c_copy_4, i32* nonnull align 512 %c_copy_5, i32* nonnull align 512 %c_copy_6, i32* nonnull align 512 %c_copy_7, i32* nonnull align 512 %c_copy_8, i32* nonnull align 512 %c_copy_9, i32* nonnull align 512 %c_copy_10, i32* nonnull align 512 %c_copy_11, i32* nonnull align 512 %c_copy_12, i32* nonnull align 512 %c_copy_13, i32* nonnull align 512 %c_copy_14, i32* nonnull align 512 %c_copy_15)
  call void @apatb_vector_mult_partition_hw(i32* %a_copy_0, i32* %a_copy_1, i32* %a_copy_2, i32* %a_copy_3, i32* %a_copy_4, i32* %a_copy_5, i32* %a_copy_6, i32* %a_copy_7, i32* %a_copy_8, i32* %a_copy_9, i32* %a_copy_10, i32* %a_copy_11, i32* %a_copy_12, i32* %a_copy_13, i32* %a_copy_14, i32* %a_copy_15, i32* %b_copy_0, i32* %b_copy_1, i32* %b_copy_2, i32* %b_copy_3, i32* %b_copy_4, i32* %b_copy_5, i32* %b_copy_6, i32* %b_copy_7, i32* %b_copy_8, i32* %b_copy_9, i32* %b_copy_10, i32* %b_copy_11, i32* %b_copy_12, i32* %b_copy_13, i32* %b_copy_14, i32* %b_copy_15, i32* %c_copy_0, i32* %c_copy_1, i32* %c_copy_2, i32* %c_copy_3, i32* %c_copy_4, i32* %c_copy_5, i32* %c_copy_6, i32* %c_copy_7, i32* %c_copy_8, i32* %c_copy_9, i32* %c_copy_10, i32* %c_copy_11, i32* %c_copy_12, i32* %c_copy_13, i32* %c_copy_14, i32* %c_copy_15)
  call void @copy_back([16 x i32]* %0, i32* %a_copy_0, i32* %a_copy_1, i32* %a_copy_2, i32* %a_copy_3, i32* %a_copy_4, i32* %a_copy_5, i32* %a_copy_6, i32* %a_copy_7, i32* %a_copy_8, i32* %a_copy_9, i32* %a_copy_10, i32* %a_copy_11, i32* %a_copy_12, i32* %a_copy_13, i32* %a_copy_14, i32* %a_copy_15, [16 x i32]* %1, i32* %b_copy_0, i32* %b_copy_1, i32* %b_copy_2, i32* %b_copy_3, i32* %b_copy_4, i32* %b_copy_5, i32* %b_copy_6, i32* %b_copy_7, i32* %b_copy_8, i32* %b_copy_9, i32* %b_copy_10, i32* %b_copy_11, i32* %b_copy_12, i32* %b_copy_13, i32* %b_copy_14, i32* %b_copy_15, [16 x i32]* %2, i32* %c_copy_0, i32* %c_copy_1, i32* %c_copy_2, i32* %c_copy_3, i32* %c_copy_4, i32* %c_copy_5, i32* %c_copy_6, i32* %c_copy_7, i32* %c_copy_8, i32* %c_copy_9, i32* %c_copy_10, i32* %c_copy_11, i32* %c_copy_12, i32* %c_copy_13, i32* %c_copy_14, i32* %c_copy_15)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32([16 x i32]* "orig.arg.no"="0" %dst, [16 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
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

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32.4.5(i32* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i32* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i32* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i32* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i32* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, i32* "orig.arg.no"="0" "unpacked"="0.6" %dst_6, i32* "orig.arg.no"="0" "unpacked"="0.7" %dst_7, i32* "orig.arg.no"="0" "unpacked"="0.8" %dst_8, i32* "orig.arg.no"="0" "unpacked"="0.9" %dst_9, i32* "orig.arg.no"="0" "unpacked"="0.10" %dst_10, i32* "orig.arg.no"="0" "unpacked"="0.11" %dst_11, i32* "orig.arg.no"="0" "unpacked"="0.12" %dst_12, i32* "orig.arg.no"="0" "unpacked"="0.13" %dst_13, i32* "orig.arg.no"="0" "unpacked"="0.14" %dst_14, i32* "orig.arg.no"="0" "unpacked"="0.15" %dst_15, [16 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [16 x i32]* %src, null
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
  %src.addr = getelementptr [16 x i32], [16 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  switch i64 %for.loop.idx2, label %dst.addr.case.15 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
    i64 3, label %dst.addr.case.3
    i64 4, label %dst.addr.case.4
    i64 5, label %dst.addr.case.5
    i64 6, label %dst.addr.case.6
    i64 7, label %dst.addr.case.7
    i64 8, label %dst.addr.case.8
    i64 9, label %dst.addr.case.9
    i64 10, label %dst.addr.case.10
    i64 11, label %dst.addr.case.11
    i64 12, label %dst.addr.case.12
    i64 13, label %dst.addr.case.13
    i64 14, label %dst.addr.case.14
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
  store i32 %3, i32* %dst_5, align 4
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_6, align 4
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_7, align 4
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_8, align 4
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_9, align 4
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store i32 %3, i32* %dst_10, align 4
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store i32 %3, i32* %dst_11, align 4
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store i32 %3, i32* %dst_12, align 4
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store i32 %3, i32* %dst_13, align 4
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store i32 %3, i32* %dst_14, align 4
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 15
  call void @llvm.assume(i1 %4)
  store i32 %3, i32* %dst_15, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a16i32.3.6(i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5" %dst_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.6" %dst_6, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.7" %dst_7, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.8" %dst_8, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.9" %dst_9, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.10" %dst_10, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.11" %dst_11, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.12" %dst_12, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.13" %dst_13, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.14" %dst_14, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.15" %dst_15, [16 x i32]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq i32* %dst_0, null
  %1 = icmp eq [16 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16i32.4.5(i32* nonnull %dst_0, i32* %dst_1, i32* %dst_2, i32* %dst_3, i32* %dst_4, i32* %dst_5, i32* %dst_6, i32* %dst_7, i32* %dst_8, i32* %dst_9, i32* %dst_10, i32* %dst_11, i32* %dst_12, i32* %dst_13, i32* %dst_14, i32* %dst_15, [16 x i32]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([16 x i32]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.11" %_11, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.12" %_12, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.13" %_13, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.14" %_14, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.15" %_15, [16 x i32]* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_16, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_27, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_38, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_49, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_510, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.6" %_611, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.7" %_712, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.8" %_813, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.9" %_914, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.10" %_1015, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.11" %_1116, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.12" %_1217, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.13" %_1318, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.14" %_1419, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.15" %_1520, [16 x i32]* noalias readonly "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_021, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_122, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_223, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3" %_324, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4" %_425, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5" %_526, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.6" %_627, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.7" %_728, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.8" %_829, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.9" %_930, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.10" %_1031, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.11" %_1132, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.12" %_1233, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.13" %_1334, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.14" %_1435, i32* noalias align 512 "orig.arg.no"="5" "unpacked"="5.15" %_1536) #4 {
entry:
  call void @onebyonecpy_hls.p0a16i32.3.6(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11, i32* align 512 %_12, i32* align 512 %_13, i32* align 512 %_14, i32* align 512 %_15, [16 x i32]* %0)
  call void @onebyonecpy_hls.p0a16i32.3.6(i32* align 512 %_01, i32* align 512 %_16, i32* align 512 %_27, i32* align 512 %_38, i32* align 512 %_49, i32* align 512 %_510, i32* align 512 %_611, i32* align 512 %_712, i32* align 512 %_813, i32* align 512 %_914, i32* align 512 %_1015, i32* align 512 %_1116, i32* align 512 %_1217, i32* align 512 %_1318, i32* align 512 %_1419, i32* align 512 %_1520, [16 x i32]* %1)
  call void @onebyonecpy_hls.p0a16i32.3.6(i32* align 512 %_021, i32* align 512 %_122, i32* align 512 %_223, i32* align 512 %_324, i32* align 512 %_425, i32* align 512 %_526, i32* align 512 %_627, i32* align 512 %_728, i32* align 512 %_829, i32* align 512 %_930, i32* align 512 %_1031, i32* align 512 %_1132, i32* align 512 %_1233, i32* align 512 %_1334, i32* align 512 %_1435, i32* align 512 %_1536, [16 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32.12.13([16 x i32]* "orig.arg.no"="0" %dst, i32* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.6" %src_6, i32* readonly "orig.arg.no"="1" "unpacked"="1.7" %src_7, i32* readonly "orig.arg.no"="1" "unpacked"="1.8" %src_8, i32* readonly "orig.arg.no"="1" "unpacked"="1.9" %src_9, i32* readonly "orig.arg.no"="1" "unpacked"="1.10" %src_10, i32* readonly "orig.arg.no"="1" "unpacked"="1.11" %src_11, i32* readonly "orig.arg.no"="1" "unpacked"="1.12" %src_12, i32* readonly "orig.arg.no"="1" "unpacked"="1.13" %src_13, i32* readonly "orig.arg.no"="1" "unpacked"="1.14" %src_14, i32* readonly "orig.arg.no"="1" "unpacked"="1.15" %src_15, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq i32* %src_0, null
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
  %dst.addr = getelementptr [16 x i32], [16 x i32]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.15 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
    i64 3, label %src.addr.case.3
    i64 4, label %src.addr.case.4
    i64 5, label %src.addr.case.5
    i64 6, label %src.addr.case.6
    i64 7, label %src.addr.case.7
    i64 8, label %src.addr.case.8
    i64 9, label %src.addr.case.9
    i64 10, label %src.addr.case.10
    i64 11, label %src.addr.case.11
    i64 12, label %src.addr.case.12
    i64 13, label %src.addr.case.13
    i64 14, label %src.addr.case.14
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
  %_5 = load i32, i32* %src_5, align 4
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_6 = load i32, i32* %src_6, align 4
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_7 = load i32, i32* %src_7, align 4
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_8 = load i32, i32* %src_8, align 4
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_9 = load i32, i32* %src_9, align 4
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_10 = load i32, i32* %src_10, align 4
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_11 = load i32, i32* %src_11, align 4
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_12 = load i32, i32* %src_12, align 4
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_13 = load i32, i32* %src_13, align 4
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_14 = load i32, i32* %src_14, align 4
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 15
  call void @llvm.assume(i1 %3)
  %_15 = load i32, i32* %src_15, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi i32 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ], [ %_3, %src.addr.case.3 ], [ %_4, %src.addr.case.4 ], [ %_5, %src.addr.case.5 ], [ %_6, %src.addr.case.6 ], [ %_7, %src.addr.case.7 ], [ %_8, %src.addr.case.8 ], [ %_9, %src.addr.case.9 ], [ %_10, %src.addr.case.10 ], [ %_11, %src.addr.case.11 ], [ %_12, %src.addr.case.12 ], [ %_13, %src.addr.case.13 ], [ %_14, %src.addr.case.14 ], [ %_15, %src.addr.case.15 ]
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
define internal void @onebyonecpy_hls.p0a16i32.11.14([16 x i32]* noalias "orig.arg.no"="0" %dst, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %src_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %src_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %src_6, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %src_7, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.8" %src_8, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.9" %src_9, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.10" %src_10, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.11" %src_11, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.12" %src_12, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.13" %src_13, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.14" %src_14, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.15" %src_15) #3 {
entry:
  %0 = icmp eq [16 x i32]* %dst, null
  %1 = icmp eq i32* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16i32.12.13([16 x i32]* nonnull %dst, i32* nonnull %src_0, i32* %src_1, i32* %src_2, i32* %src_3, i32* %src_4, i32* %src_5, i32* %src_6, i32* %src_7, i32* %src_8, i32* %src_9, i32* %src_10, i32* %src_11, i32* %src_12, i32* %src_13, i32* %src_14, i32* %src_15, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([16 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.11" %_11, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.12" %_12, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.13" %_13, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.14" %_14, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.15" %_15, [16 x i32]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_16, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_27, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_38, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_49, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_510, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.6" %_611, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.7" %_712, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.8" %_813, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.9" %_914, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.10" %_1015, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.11" %_1116, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.12" %_1217, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.13" %_1318, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.14" %_1419, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.15" %_1520, [16 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_021, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_122, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_223, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_324, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4" %_425, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5" %_526, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.6" %_627, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.7" %_728, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.8" %_829, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.9" %_930, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.10" %_1031, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.11" %_1132, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.12" %_1233, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.13" %_1334, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.14" %_1435, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.15" %_1536) #5 {
entry:
  call void @onebyonecpy_hls.p0a16i32.11.14([16 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11, i32* align 512 %_12, i32* align 512 %_13, i32* align 512 %_14, i32* align 512 %_15)
  call void @onebyonecpy_hls.p0a16i32.11.14([16 x i32]* %1, i32* align 512 %_01, i32* align 512 %_16, i32* align 512 %_27, i32* align 512 %_38, i32* align 512 %_49, i32* align 512 %_510, i32* align 512 %_611, i32* align 512 %_712, i32* align 512 %_813, i32* align 512 %_914, i32* align 512 %_1015, i32* align 512 %_1116, i32* align 512 %_1217, i32* align 512 %_1318, i32* align 512 %_1419, i32* align 512 %_1520)
  call void @onebyonecpy_hls.p0a16i32.11.14([16 x i32]* %2, i32* align 512 %_021, i32* align 512 %_122, i32* align 512 %_223, i32* align 512 %_324, i32* align 512 %_425, i32* align 512 %_526, i32* align 512 %_627, i32* align 512 %_728, i32* align 512 %_829, i32* align 512 %_930, i32* align 512 %_1031, i32* align 512 %_1132, i32* align 512 %_1233, i32* align 512 %_1334, i32* align 512 %_1435, i32* align 512 %_1536)
  ret void
}

declare void @apatb_vector_mult_partition_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([16 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.11" %_11, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.12" %_12, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.13" %_13, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.14" %_14, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.15" %_15, [16 x i32]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_16, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_27, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_38, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_49, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_510, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.6" %_611, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.7" %_712, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.8" %_813, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.9" %_914, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.10" %_1015, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.11" %_1116, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.12" %_1217, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.13" %_1318, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.14" %_1419, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.15" %_1520, [16 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_021, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_122, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_223, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_324, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4" %_425, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5" %_526, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.6" %_627, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.7" %_728, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.8" %_829, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.9" %_930, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.10" %_1031, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.11" %_1132, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.12" %_1233, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.13" %_1334, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.14" %_1435, i32* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.15" %_1536) #5 {
entry:
  call void @onebyonecpy_hls.p0a16i32.11.14([16 x i32]* %2, i32* align 512 %_021, i32* align 512 %_122, i32* align 512 %_223, i32* align 512 %_324, i32* align 512 %_425, i32* align 512 %_526, i32* align 512 %_627, i32* align 512 %_728, i32* align 512 %_829, i32* align 512 %_930, i32* align 512 %_1031, i32* align 512 %_1132, i32* align 512 %_1233, i32* align 512 %_1334, i32* align 512 %_1435, i32* align 512 %_1536)
  ret void
}

define void @vector_mult_partition_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #6 {
entry:
  %48 = alloca [16 x i32]
  %49 = alloca [16 x i32]
  %50 = alloca [16 x i32]
  call void @copy_out([16 x i32]* %48, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, [16 x i32]* %49, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, [16 x i32]* %50, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47)
  %51 = bitcast [16 x i32]* %48 to i32*
  %52 = bitcast [16 x i32]* %49 to i32*
  %53 = bitcast [16 x i32]* %50 to i32*
  call void @vector_mult_partition_hw_stub(i32* %51, i32* %52, i32* %53)
  call void @copy_in([16 x i32]* %48, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, [16 x i32]* %49, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, [16 x i32]* %50, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47)
  ret void
}

declare void @vector_mult_partition_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull)

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
!datalayout.transforms.on.top = !{!5, !27, !47}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [16 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!11 = !{!"0.0", i32* null}
!12 = !{!"0.1", i32* null}
!13 = !{!"0.2", i32* null}
!14 = !{!"0.3", i32* null}
!15 = !{!"0.4", i32* null}
!16 = !{!"0.5", i32* null}
!17 = !{!"0.6", i32* null}
!18 = !{!"0.7", i32* null}
!19 = !{!"0.8", i32* null}
!20 = !{!"0.9", i32* null}
!21 = !{!"0.10", i32* null}
!22 = !{!"0.11", i32* null}
!23 = !{!"0.12", i32* null}
!24 = !{!"0.13", i32* null}
!25 = !{!"0.14", i32* null}
!26 = !{!"0.15", i32* null}
!27 = !{!28, !8, !30}
!28 = !{!29}
!29 = !{!"1", [16 x i32]* null}
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!31 = !{!"1.0", i32* null}
!32 = !{!"1.1", i32* null}
!33 = !{!"1.2", i32* null}
!34 = !{!"1.3", i32* null}
!35 = !{!"1.4", i32* null}
!36 = !{!"1.5", i32* null}
!37 = !{!"1.6", i32* null}
!38 = !{!"1.7", i32* null}
!39 = !{!"1.8", i32* null}
!40 = !{!"1.9", i32* null}
!41 = !{!"1.10", i32* null}
!42 = !{!"1.11", i32* null}
!43 = !{!"1.12", i32* null}
!44 = !{!"1.13", i32* null}
!45 = !{!"1.14", i32* null}
!46 = !{!"1.15", i32* null}
!47 = !{!48, !8, !50}
!48 = !{!49}
!49 = !{!"2", [16 x i32]* null}
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!51 = !{!"2.0", i32* null}
!52 = !{!"2.1", i32* null}
!53 = !{!"2.2", i32* null}
!54 = !{!"2.3", i32* null}
!55 = !{!"2.4", i32* null}
!56 = !{!"2.5", i32* null}
!57 = !{!"2.6", i32* null}
!58 = !{!"2.7", i32* null}
!59 = !{!"2.8", i32* null}
!60 = !{!"2.9", i32* null}
!61 = !{!"2.10", i32* null}
!62 = !{!"2.11", i32* null}
!63 = !{!"2.12", i32* null}
!64 = !{!"2.13", i32* null}
!65 = !{!"2.14", i32* null}
!66 = !{!"2.15", i32* null}
