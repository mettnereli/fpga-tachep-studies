; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW4/hw4_q5_reshape/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_q5_reshape_ir(i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %B, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %C, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %D, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %E) local_unnamed_addr #1 {
entry:
  %A_copy1 = alloca [16 x i128], align 512
  %B_copy2 = alloca [16 x i128], align 512
  %C_copy3 = alloca [16 x i128], align 512
  %D_copy4 = alloca [16 x i128], align 512
  %E_copy5 = alloca [16 x i128], align 512
  %0 = bitcast i32* %A to [64 x i32]*
  %1 = bitcast i32* %B to [64 x i32]*
  %2 = bitcast i32* %C to [64 x i32]*
  %3 = bitcast i32* %D to [64 x i32]*
  %4 = bitcast i32* %E to [64 x i32]*
  call void @copy_in([64 x i32]* nonnull %0, [16 x i128]* nonnull align 512 %A_copy1, [64 x i32]* nonnull %1, [16 x i128]* nonnull align 512 %B_copy2, [64 x i32]* nonnull %2, [16 x i128]* nonnull align 512 %C_copy3, [64 x i32]* nonnull %3, [16 x i128]* nonnull align 512 %D_copy4, [64 x i32]* nonnull %4, [16 x i128]* nonnull align 512 %E_copy5)
  %5 = getelementptr [16 x i128], [16 x i128]* %A_copy1, i64 0, i64 0
  %6 = getelementptr [16 x i128], [16 x i128]* %B_copy2, i64 0, i64 0
  %7 = getelementptr [16 x i128], [16 x i128]* %C_copy3, i64 0, i64 0
  %8 = getelementptr [16 x i128], [16 x i128]* %D_copy4, i64 0, i64 0
  %9 = getelementptr [16 x i128], [16 x i128]* %E_copy5, i64 0, i64 0
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %5, i32 999, i32 1, i32 1) ], !dbg !5
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %5, i32 998, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %6, i32 999, i32 1, i32 1) ], !dbg !14
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %6, i32 998, i32 1, i32 0) ], !dbg !14
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %7, i32 999, i32 1, i32 1) ], !dbg !15
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %7, i32 998, i32 1, i32 0) ], !dbg !15
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %8, i32 999, i32 1, i32 1) ], !dbg !16
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %8, i32 998, i32 1, i32 0) ], !dbg !16
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %9, i32 999, i32 1, i32 1) ], !dbg !17
  call void @llvm.sideeffect() #7 [ "xlx_array_reshape"(i128* %9, i32 998, i32 1, i32 0) ], !dbg !17
  call void @apatb_q5_reshape_hw([16 x i128]* %A_copy1, [16 x i128]* %B_copy2, [16 x i128]* %C_copy3, [16 x i128]* %D_copy4, [16 x i128]* %E_copy5)
  call void @copy_back([64 x i32]* %0, [16 x i128]* %A_copy1, [64 x i32]* %1, [16 x i128]* %B_copy2, [64 x i32]* %2, [16 x i128]* %C_copy3, [64 x i32]* %3, [16 x i128]* %D_copy4, [64 x i32]* %4, [16 x i128]* %E_copy5)
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

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32.4.5([16 x i128]* "orig.arg.no"="0" %dst, i64 %dst_shift, [64 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [64 x i32]* %src, null
  %1 = icmp eq [16 x i128]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = udiv i64 %for.loop.idx2, 4
  %4 = urem i64 %for.loop.idx2, 4
  %5 = mul i64 32, %4
  %6 = add i64 %dst_shift, %5
  %dst.addr1 = getelementptr [16 x i128], [16 x i128]* %dst, i64 0, i64 %3
  %src.addr = getelementptr [64 x i32], [64 x i32]* %src, i64 0, i64 %for.loop.idx2
  %7 = load i32, i32* %src.addr, align 4
  %8 = load i128, i128* %dst.addr1, align 16
  %9 = zext i64 %6 to i128
  %10 = shl i128 4294967295, %9
  %11 = zext i32 %7 to i128
  %12 = shl i128 %11, %9
  %thr.xor1 = xor i128 %10, -1
  %thr.and2 = and i128 %8, %thr.xor1
  %thr.or3 = or i128 %thr.and2, %12
  store i128 %thr.or3, i128* %dst.addr1, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a64i32.3.6([16 x i128]* noalias align 512 "orig.arg.no"="0" %dst, [64 x i32]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq [16 x i128]* %dst, null
  %1 = icmp eq [64 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32.4.5([16 x i128]* nonnull %dst, i64 0, [64 x i32]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([64 x i32]* noalias readonly "orig.arg.no"="0", [16 x i128]* noalias align 512 "orig.arg.no"="1", [64 x i32]* noalias readonly "orig.arg.no"="2", [16 x i128]* noalias align 512 "orig.arg.no"="3", [64 x i32]* noalias readonly "orig.arg.no"="4", [16 x i128]* noalias align 512 "orig.arg.no"="5", [64 x i32]* noalias readonly "orig.arg.no"="6", [16 x i128]* noalias align 512 "orig.arg.no"="7", [64 x i32]* noalias readonly "orig.arg.no"="8", [16 x i128]* noalias align 512 "orig.arg.no"="9") #4 {
entry:
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i128]* align 512 %1, [64 x i32]* %0)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i128]* align 512 %3, [64 x i32]* %2)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i128]* align 512 %5, [64 x i32]* %4)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i128]* align 512 %7, [64 x i32]* %6)
  call void @onebyonecpy_hls.p0a64i32.3.6([16 x i128]* align 512 %9, [64 x i32]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32.12.13([64 x i32]* "orig.arg.no"="0" %dst, [16 x i128]* readonly "orig.arg.no"="1" %src, i64 %src_shift, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x i128]* %src, null
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
  %3 = udiv i64 %for.loop.idx2, 4
  %4 = urem i64 %for.loop.idx2, 4
  %dst.addr = getelementptr [64 x i32], [64 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %5 = mul i64 32, %4
  %6 = add i64 %src_shift, %5
  %src.addr1 = getelementptr [16 x i128], [16 x i128]* %src, i64 0, i64 %3
  %7 = load i128, i128* %src.addr1, align 16
  %8 = zext i64 %6 to i128
  %9 = lshr i128 %7, %8
  %10 = trunc i128 %9 to i32
  store i32 %10, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* noalias "orig.arg.no"="0" %dst, [16 x i128]* noalias readonly align 512 "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq [64 x i32]* %dst, null
  %1 = icmp eq [16 x i128]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32.12.13([64 x i32]* nonnull %dst, [16 x i128]* nonnull %src, i64 0, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([64 x i32]* noalias "orig.arg.no"="0", [16 x i128]* noalias readonly align 512 "orig.arg.no"="1", [64 x i32]* noalias "orig.arg.no"="2", [16 x i128]* noalias readonly align 512 "orig.arg.no"="3", [64 x i32]* noalias "orig.arg.no"="4", [16 x i128]* noalias readonly align 512 "orig.arg.no"="5", [64 x i32]* noalias "orig.arg.no"="6", [16 x i128]* noalias readonly align 512 "orig.arg.no"="7", [64 x i32]* noalias "orig.arg.no"="8", [16 x i128]* noalias readonly align 512 "orig.arg.no"="9") #5 {
entry:
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %0, [16 x i128]* align 512 %1)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %2, [16 x i128]* align 512 %3)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %4, [16 x i128]* align 512 %5)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %6, [16 x i128]* align 512 %7)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %8, [16 x i128]* align 512 %9)
  ret void
}

declare void @apatb_q5_reshape_hw([16 x i128]*, [16 x i128]*, [16 x i128]*, [16 x i128]*, [16 x i128]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([64 x i32]* noalias "orig.arg.no"="0", [16 x i128]* noalias readonly align 512 "orig.arg.no"="1", [64 x i32]* noalias "orig.arg.no"="2", [16 x i128]* noalias readonly align 512 "orig.arg.no"="3", [64 x i32]* noalias "orig.arg.no"="4", [16 x i128]* noalias readonly align 512 "orig.arg.no"="5", [64 x i32]* noalias "orig.arg.no"="6", [16 x i128]* noalias readonly align 512 "orig.arg.no"="7", [64 x i32]* noalias "orig.arg.no"="8", [16 x i128]* noalias readonly align 512 "orig.arg.no"="9") #5 {
entry:
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %4, [16 x i128]* align 512 %5)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %6, [16 x i128]* align 512 %7)
  call void @onebyonecpy_hls.p0a64i32.11.14([64 x i32]* %8, [16 x i128]* align 512 %9)
  ret void
}

define void @q5_reshape_hw_stub_wrapper([16 x i128]*, [16 x i128]*, [16 x i128]*, [16 x i128]*, [16 x i128]*) #6 {
entry:
  %5 = alloca [64 x i32]
  %6 = alloca [64 x i32]
  %7 = alloca [64 x i32]
  %8 = alloca [64 x i32]
  %9 = alloca [64 x i32]
  call void @copy_out([64 x i32]* %5, [16 x i128]* %0, [64 x i32]* %6, [16 x i128]* %1, [64 x i32]* %7, [16 x i128]* %2, [64 x i32]* %8, [16 x i128]* %3, [64 x i32]* %9, [16 x i128]* %4)
  %10 = bitcast [64 x i32]* %5 to i32*
  %11 = bitcast [64 x i32]* %6 to i32*
  %12 = bitcast [64 x i32]* %7 to i32*
  %13 = bitcast [64 x i32]* %8 to i32*
  %14 = bitcast [64 x i32]* %9 to i32*
  call void @q5_reshape_hw_stub(i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  call void @copy_in([64 x i32]* %5, [16 x i128]* %0, [64 x i32]* %6, [16 x i128]* %1, [64 x i32]* %7, [16 x i128]* %2, [64 x i32]* %8, [16 x i128]* %3, [64 x i32]* %9, [16 x i128]* %4)
  ret void
}

declare void @q5_reshape_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 165, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "q5_reshape", linkageName: "_Z10q5_reshapePiS_S_S_S_", scope: !7, file: !7, line: 156, type: !8, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !12, variables: !4)
!7 = !DIFile(filename: "q5_kernel.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW4")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !13, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!13 = !DIFile(filename: "/scratch/emettner/fpga-tachep-studies/HW4/hw4_q5_reshape/solution1/.autopilot/db/q5_kernel.pp.0.cpp", directory: "/scratch/emettner/fpga-tachep-studies/HW4")
!14 = !DILocation(line: 166, column: 9, scope: !6)
!15 = !DILocation(line: 167, column: 9, scope: !6)
!16 = !DILocation(line: 168, column: 9, scope: !6)
!17 = !DILocation(line: 169, column: 9, scope: !6)
