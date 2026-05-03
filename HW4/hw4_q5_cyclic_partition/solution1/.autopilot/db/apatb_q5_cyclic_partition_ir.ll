; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW4/hw4_q5_cyclic_partition/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_q5_cyclic_partition_ir(i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" "partition" %A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" "partition" %B, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" "partition" %C, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" "partition" %D, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" "partition" %E) local_unnamed_addr #1 {
entry:
  %A_copy_0 = alloca [16 x i32], align 512
  %A_copy_1 = alloca [16 x i32], align 512
  %A_copy_2 = alloca [16 x i32], align 512
  %A_copy_3 = alloca [16 x i32], align 512
  %B_copy_0 = alloca [16 x i32], align 512
  %B_copy_1 = alloca [16 x i32], align 512
  %B_copy_2 = alloca [16 x i32], align 512
  %B_copy_3 = alloca [16 x i32], align 512
  %C_copy_0 = alloca [16 x i32], align 512
  %C_copy_1 = alloca [16 x i32], align 512
  %C_copy_2 = alloca [16 x i32], align 512
  %C_copy_3 = alloca [16 x i32], align 512
  %D_copy_0 = alloca [16 x i32], align 512
  %D_copy_1 = alloca [16 x i32], align 512
  %D_copy_2 = alloca [16 x i32], align 512
  %D_copy_3 = alloca [16 x i32], align 512
  %E_copy_0 = alloca [16 x i32], align 512
  %E_copy_1 = alloca [16 x i32], align 512
  %E_copy_2 = alloca [16 x i32], align 512
  %E_copy_3 = alloca [16 x i32], align 512
  %0 = bitcast i32* %A to [64 x i32]*
  %1 = bitcast i32* %B to [64 x i32]*
  %2 = bitcast i32* %C to [64 x i32]*
  %3 = bitcast i32* %D to [64 x i32]*
  %4 = bitcast i32* %E to [64 x i32]*
  call void @copy_in([64 x i32]* nonnull %0, [16 x i32]* nonnull align 512 %A_copy_0, [16 x i32]* nonnull align 512 %A_copy_1, [16 x i32]* nonnull align 512 %A_copy_2, [16 x i32]* nonnull align 512 %A_copy_3, [64 x i32]* nonnull %1, [16 x i32]* nonnull align 512 %B_copy_0, [16 x i32]* nonnull align 512 %B_copy_1, [16 x i32]* nonnull align 512 %B_copy_2, [16 x i32]* nonnull align 512 %B_copy_3, [64 x i32]* nonnull %2, [16 x i32]* nonnull align 512 %C_copy_0, [16 x i32]* nonnull align 512 %C_copy_1, [16 x i32]* nonnull align 512 %C_copy_2, [16 x i32]* nonnull align 512 %C_copy_3, [64 x i32]* nonnull %3, [16 x i32]* nonnull align 512 %D_copy_0, [16 x i32]* nonnull align 512 %D_copy_1, [16 x i32]* nonnull align 512 %D_copy_2, [16 x i32]* nonnull align 512 %D_copy_3, [64 x i32]* nonnull %4, [16 x i32]* nonnull align 512 %E_copy_0, [16 x i32]* nonnull align 512 %E_copy_1, [16 x i32]* nonnull align 512 %E_copy_2, [16 x i32]* nonnull align 512 %E_copy_3)
  %_0 = getelementptr [16 x i32], [16 x i32]* %A_copy_0, i64 0, i64 0
  %_1 = getelementptr [16 x i32], [16 x i32]* %A_copy_1, i64 0, i64 0
  %_2 = getelementptr [16 x i32], [16 x i32]* %A_copy_2, i64 0, i64 0
  %_3 = getelementptr [16 x i32], [16 x i32]* %A_copy_3, i64 0, i64 0
  %_01 = getelementptr [16 x i32], [16 x i32]* %B_copy_0, i64 0, i64 0
  %_12 = getelementptr [16 x i32], [16 x i32]* %B_copy_1, i64 0, i64 0
  %_23 = getelementptr [16 x i32], [16 x i32]* %B_copy_2, i64 0, i64 0
  %_34 = getelementptr [16 x i32], [16 x i32]* %B_copy_3, i64 0, i64 0
  %_05 = getelementptr [16 x i32], [16 x i32]* %C_copy_0, i64 0, i64 0
  %_16 = getelementptr [16 x i32], [16 x i32]* %C_copy_1, i64 0, i64 0
  %_27 = getelementptr [16 x i32], [16 x i32]* %C_copy_2, i64 0, i64 0
  %_38 = getelementptr [16 x i32], [16 x i32]* %C_copy_3, i64 0, i64 0
  %_09 = getelementptr [16 x i32], [16 x i32]* %D_copy_0, i64 0, i64 0
  %_110 = getelementptr [16 x i32], [16 x i32]* %D_copy_1, i64 0, i64 0
  %_211 = getelementptr [16 x i32], [16 x i32]* %D_copy_2, i64 0, i64 0
  %_312 = getelementptr [16 x i32], [16 x i32]* %D_copy_3, i64 0, i64 0
  %_013 = getelementptr [16 x i32], [16 x i32]* %E_copy_0, i64 0, i64 0
  %_114 = getelementptr [16 x i32], [16 x i32]* %E_copy_1, i64 0, i64 0
  %_215 = getelementptr [16 x i32], [16 x i32]* %E_copy_2, i64 0, i64 0
  %_316 = getelementptr [16 x i32], [16 x i32]* %E_copy_3, i64 0, i64 0
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_0, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_1, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_2, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_3, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_01, i32 999, i32 1, i32 1, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_12, i32 999, i32 1, i32 1, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_23, i32 999, i32 1, i32 1, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_34, i32 999, i32 1, i32 1, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_01, i32 998, i32 1, i32 0, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_23, i32 998, i32 1, i32 0, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_34, i32 998, i32 1, i32 0, i1 false) ], !dbg !56
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_05, i32 999, i32 1, i32 1, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_16, i32 999, i32 1, i32 1, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_27, i32 999, i32 1, i32 1, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_38, i32 999, i32 1, i32 1, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_05, i32 998, i32 1, i32 0, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_16, i32 998, i32 1, i32 0, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_27, i32 998, i32 1, i32 0, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_38, i32 998, i32 1, i32 0, i1 false) ], !dbg !57
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_09, i32 999, i32 1, i32 1, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_110, i32 999, i32 1, i32 1, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_211, i32 999, i32 1, i32 1, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_312, i32 999, i32 1, i32 1, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_09, i32 998, i32 1, i32 0, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_110, i32 998, i32 1, i32 0, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_211, i32 998, i32 1, i32 0, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_312, i32 998, i32 1, i32 0, i1 false) ], !dbg !58
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_013, i32 999, i32 1, i32 1, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_114, i32 999, i32 1, i32 1, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_215, i32 999, i32 1, i32 1, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_316, i32 999, i32 1, i32 1, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_013, i32 998, i32 1, i32 0, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_114, i32 998, i32 1, i32 0, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_215, i32 998, i32 1, i32 0, i1 false) ], !dbg !59
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %_316, i32 998, i32 1, i32 0, i1 false) ], !dbg !59
  call void @apatb_q5_cyclic_partition_hw([16 x i32]* %A_copy_0, [16 x i32]* %A_copy_1, [16 x i32]* %A_copy_2, [16 x i32]* %A_copy_3, [16 x i32]* %B_copy_0, [16 x i32]* %B_copy_1, [16 x i32]* %B_copy_2, [16 x i32]* %B_copy_3, [16 x i32]* %C_copy_0, [16 x i32]* %C_copy_1, [16 x i32]* %C_copy_2, [16 x i32]* %C_copy_3, [16 x i32]* %D_copy_0, [16 x i32]* %D_copy_1, [16 x i32]* %D_copy_2, [16 x i32]* %D_copy_3, [16 x i32]* %E_copy_0, [16 x i32]* %E_copy_1, [16 x i32]* %E_copy_2, [16 x i32]* %E_copy_3)
  call void @copy_back([64 x i32]* %0, [16 x i32]* %A_copy_0, [16 x i32]* %A_copy_1, [16 x i32]* %A_copy_2, [16 x i32]* %A_copy_3, [64 x i32]* %1, [16 x i32]* %B_copy_0, [16 x i32]* %B_copy_1, [16 x i32]* %B_copy_2, [16 x i32]* %B_copy_3, [64 x i32]* %2, [16 x i32]* %C_copy_0, [16 x i32]* %C_copy_1, [16 x i32]* %C_copy_2, [16 x i32]* %C_copy_3, [64 x i32]* %3, [16 x i32]* %D_copy_0, [16 x i32]* %D_copy_1, [16 x i32]* %D_copy_2, [16 x i32]* %D_copy_3, [64 x i32]* %4, [16 x i32]* %E_copy_0, [16 x i32]* %E_copy_1, [16 x i32]* %E_copy_2, [16 x i32]* %E_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32([64 x i32]* "orig.arg.no"="0" %dst, [64 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i32]* %src, null
  %1 = icmp eq [64 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x i32], [64 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [64 x i32], [64 x i32]* %src, i64 0, i64 %for.loop.idx2
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
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32.4.5([16 x i32]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [16 x i32]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [16 x i32]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [16 x i32]* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [64 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [64 x i32]* %src, null
  %1 = icmp eq [16 x i32]* %dst_0, null
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
  %dst.addr_0 = getelementptr [16 x i32], [16 x i32]* %dst_0, i64 0, i64 %3
  %dst.addr_1 = getelementptr [16 x i32], [16 x i32]* %dst_1, i64 0, i64 %3
  %dst.addr_2 = getelementptr [16 x i32], [16 x i32]* %dst_2, i64 0, i64 %3
  %dst.addr_3 = getelementptr [16 x i32], [16 x i32]* %dst_3, i64 0, i64 %3
  %src.addr = getelementptr [64 x i32], [64 x i32]* %src, i64 0, i64 %for.loop.idx2
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
define internal void @onebyonecpy_hls.p0a64i32.3.6([16 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [16 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [16 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [16 x i32]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [64 x i32]* noalias readonly "orig.arg.no"="1" %src) #4 {
entry:
  %0 = icmp eq [16 x i32]* %dst_0, null
  %1 = icmp eq [64 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32.4.5([16 x i32]* nonnull %dst_0, [16 x i32]* %dst_1, [16 x i32]* %dst_2, [16 x i32]* %dst_3, [64 x i32]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([64 x i32]* noalias readonly "orig.arg.no"="0", [16 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [16 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [16 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [16 x i32]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [64 x i32]* noalias readonly "orig.arg.no"="2", [16 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [16 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [16 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [16 x i32]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [64 x i32]* noalias readonly "orig.arg.no"="4", [16 x i32]* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_05, [16 x i32]* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_16, [16 x i32]* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_27, [16 x i32]* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3" %_38, [64 x i32]* noalias readonly "orig.arg.no"="6", [16 x i32]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0" %_09, [16 x i32]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1" %_110, [16 x i32]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2" %_211, [16 x i32]* noalias align 512 "orig.arg.no"="7" "unpacked"="7.3" %_312, [64 x i32]* noalias readonly "orig.arg.no"="8", [16 x i32]* noalias align 512 "orig.arg.no"="9" "unpacked"="9.0" %_013, [16 x i32]* noalias align 512 "orig.arg.no"="9" "unpacked"="9.1" %_114, [16 x i32]* noalias align 512 "orig.arg.no"="9" "unpacked"="9.2" %_215, [16 x i32]* noalias align 512 "orig.arg.no"="9" "unpacked"="9.3" %_316) #5 {
entry:
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i32]* align 512 %_0, [16 x i32]* align 512 %_1, [16 x i32]* align 512 %_2, [16 x i32]* align 512 %_3, [64 x i32]* %0)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i32]* align 512 %_01, [16 x i32]* align 512 %_12, [16 x i32]* align 512 %_23, [16 x i32]* align 512 %_34, [64 x i32]* %1)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i32]* align 512 %_05, [16 x i32]* align 512 %_16, [16 x i32]* align 512 %_27, [16 x i32]* align 512 %_38, [64 x i32]* %2)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i32]* align 512 %_09, [16 x i32]* align 512 %_110, [16 x i32]* align 512 %_211, [16 x i32]* align 512 %_312, [64 x i32]* %3)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i32]* align 512 %_013, [16 x i32]* align 512 %_114, [16 x i32]* align 512 %_215, [16 x i32]* align 512 %_316, [64 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32.12.13([64 x i32]* "orig.arg.no"="0" %dst, [16 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [16 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [16 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [16 x i32]* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x i32]* %src_0, null
  %1 = icmp eq [64 x i32]* %dst, null
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
  %dst.addr = getelementptr [64 x i32], [64 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr_0 = getelementptr [16 x i32], [16 x i32]* %src_0, i64 0, i64 %3
  %src.addr_1 = getelementptr [16 x i32], [16 x i32]* %src_1, i64 0, i64 %3
  %src.addr_2 = getelementptr [16 x i32], [16 x i32]* %src_2, i64 0, i64 %3
  %src.addr_3 = getelementptr [16 x i32], [16 x i32]* %src_3, i64 0, i64 %3
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
define internal void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* noalias "orig.arg.no"="0" %dst, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3) #4 {
entry:
  %0 = icmp eq [64 x i32]* %dst, null
  %1 = icmp eq [16 x i32]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32.12.13([64 x i32]* nonnull %dst, [16 x i32]* nonnull %src_0, [16 x i32]* %src_1, [16 x i32]* %src_2, [16 x i32]* %src_3, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([64 x i32]* noalias "orig.arg.no"="0", [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [64 x i32]* noalias "orig.arg.no"="2", [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [64 x i32]* noalias "orig.arg.no"="4", [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_05, [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_16, [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_27, [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_38, [64 x i32]* noalias "orig.arg.no"="6", [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_09, [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_110, [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2" %_211, [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.3" %_312, [64 x i32]* noalias "orig.arg.no"="8", [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.0" %_013, [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.1" %_114, [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.2" %_215, [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.3" %_316) #6 {
entry:
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %0, [16 x i32]* align 512 %_0, [16 x i32]* align 512 %_1, [16 x i32]* align 512 %_2, [16 x i32]* align 512 %_3)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %1, [16 x i32]* align 512 %_01, [16 x i32]* align 512 %_12, [16 x i32]* align 512 %_23, [16 x i32]* align 512 %_34)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %2, [16 x i32]* align 512 %_05, [16 x i32]* align 512 %_16, [16 x i32]* align 512 %_27, [16 x i32]* align 512 %_38)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %3, [16 x i32]* align 512 %_09, [16 x i32]* align 512 %_110, [16 x i32]* align 512 %_211, [16 x i32]* align 512 %_312)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %4, [16 x i32]* align 512 %_013, [16 x i32]* align 512 %_114, [16 x i32]* align 512 %_215, [16 x i32]* align 512 %_316)
  ret void
}

declare void @apatb_q5_cyclic_partition_hw([16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([64 x i32]* noalias "orig.arg.no"="0", [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [16 x i32]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [64 x i32]* noalias "orig.arg.no"="2", [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [16 x i32]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [64 x i32]* noalias "orig.arg.no"="4", [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_05, [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_16, [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_27, [16 x i32]* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_38, [64 x i32]* noalias "orig.arg.no"="6", [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_09, [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_110, [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2" %_211, [16 x i32]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.3" %_312, [64 x i32]* noalias "orig.arg.no"="8", [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.0" %_013, [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.1" %_114, [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.2" %_215, [16 x i32]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.3" %_316) #6 {
entry:
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %2, [16 x i32]* align 512 %_05, [16 x i32]* align 512 %_16, [16 x i32]* align 512 %_27, [16 x i32]* align 512 %_38)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %3, [16 x i32]* align 512 %_09, [16 x i32]* align 512 %_110, [16 x i32]* align 512 %_211, [16 x i32]* align 512 %_312)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %4, [16 x i32]* align 512 %_013, [16 x i32]* align 512 %_114, [16 x i32]* align 512 %_215, [16 x i32]* align 512 %_316)
  ret void
}

define void @q5_cyclic_partition_hw_stub_wrapper([16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*, [16 x i32]*) #7 {
entry:
  %20 = alloca [64 x i32]
  %21 = alloca [64 x i32]
  %22 = alloca [64 x i32]
  %23 = alloca [64 x i32]
  %24 = alloca [64 x i32]
  call void @copy_out([64 x i32]* %20, [16 x i32]* %0, [16 x i32]* %1, [16 x i32]* %2, [16 x i32]* %3, [64 x i32]* %21, [16 x i32]* %4, [16 x i32]* %5, [16 x i32]* %6, [16 x i32]* %7, [64 x i32]* %22, [16 x i32]* %8, [16 x i32]* %9, [16 x i32]* %10, [16 x i32]* %11, [64 x i32]* %23, [16 x i32]* %12, [16 x i32]* %13, [16 x i32]* %14, [16 x i32]* %15, [64 x i32]* %24, [16 x i32]* %16, [16 x i32]* %17, [16 x i32]* %18, [16 x i32]* %19)
  %25 = bitcast [64 x i32]* %20 to i32*
  %26 = bitcast [64 x i32]* %21 to i32*
  %27 = bitcast [64 x i32]* %22 to i32*
  %28 = bitcast [64 x i32]* %23 to i32*
  %29 = bitcast [64 x i32]* %24 to i32*
  call void @q5_cyclic_partition_hw_stub(i32* %25, i32* %26, i32* %27, i32* %28, i32* %29)
  call void @copy_in([64 x i32]* %20, [16 x i32]* %0, [16 x i32]* %1, [16 x i32]* %2, [16 x i32]* %3, [64 x i32]* %21, [16 x i32]* %4, [16 x i32]* %5, [16 x i32]* %6, [16 x i32]* %7, [64 x i32]* %22, [16 x i32]* %8, [16 x i32]* %9, [16 x i32]* %10, [16 x i32]* %11, [64 x i32]* %23, [16 x i32]* %12, [16 x i32]* %13, [16 x i32]* %14, [16 x i32]* %15, [64 x i32]* %24, [16 x i32]* %16, [16 x i32]* %17, [16 x i32]* %18, [16 x i32]* %19)
  ret void
}

declare void @q5_cyclic_partition_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { nounwind willreturn }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !15, !23, !31, !39}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [64 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=4"}
!10 = !{!11, !12, !13, !14}
!11 = !{!"0.0", [16 x i32]* null}
!12 = !{!"0.1", [16 x i32]* null}
!13 = !{!"0.2", [16 x i32]* null}
!14 = !{!"0.3", [16 x i32]* null}
!15 = !{!16, !8, !18}
!16 = !{!17}
!17 = !{!"1", [64 x i32]* null}
!18 = !{!19, !20, !21, !22}
!19 = !{!"1.0", [16 x i32]* null}
!20 = !{!"1.1", [16 x i32]* null}
!21 = !{!"1.2", [16 x i32]* null}
!22 = !{!"1.3", [16 x i32]* null}
!23 = !{!24, !8, !26}
!24 = !{!25}
!25 = !{!"2", [64 x i32]* null}
!26 = !{!27, !28, !29, !30}
!27 = !{!"2.0", [16 x i32]* null}
!28 = !{!"2.1", [16 x i32]* null}
!29 = !{!"2.2", [16 x i32]* null}
!30 = !{!"2.3", [16 x i32]* null}
!31 = !{!32, !8, !34}
!32 = !{!33}
!33 = !{!"3", [64 x i32]* null}
!34 = !{!35, !36, !37, !38}
!35 = !{!"3.0", [16 x i32]* null}
!36 = !{!"3.1", [16 x i32]* null}
!37 = !{!"3.2", [16 x i32]* null}
!38 = !{!"3.3", [16 x i32]* null}
!39 = !{!40, !8, !42}
!40 = !{!41}
!41 = !{!"4", [64 x i32]* null}
!42 = !{!43, !44, !45, !46}
!43 = !{!"4.0", [16 x i32]* null}
!44 = !{!"4.1", [16 x i32]* null}
!45 = !{!"4.2", [16 x i32]* null}
!46 = !{!"4.3", [16 x i32]* null}
!47 = !DILocation(line: 111, column: 9, scope: !48)
!48 = distinct !DISubprogram(name: "q5_cyclic_partition", linkageName: "_Z19q5_cyclic_partitionPiS_S_S_S_", scope: !49, file: !49, line: 102, type: !50, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !54, variables: !4)
!49 = !DIFile(filename: "q5_kernel.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW4")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52, !52, !52, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !55, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!55 = !DIFile(filename: "/scratch/emettner/fpga-tachep-studies/HW4/hw4_q5_cyclic_partition/solution1/.autopilot/db/q5_kernel.pp.0.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW4")
!56 = !DILocation(line: 112, column: 9, scope: !48)
!57 = !DILocation(line: 113, column: 9, scope: !48)
!58 = !DILocation(line: 114, column: 9, scope: !48)
!59 = !DILocation(line: 115, column: 9, scope: !48)
