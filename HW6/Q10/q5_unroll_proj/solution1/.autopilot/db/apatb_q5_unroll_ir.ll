; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW6/Q10/q5_unroll_proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline willreturn
define void @apatb_q5_unroll_ir(i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %A, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %B, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %C, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %D, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %E) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [64 x i32], align 512
  %B_copy = alloca [64 x i32], align 512
  %C_copy = alloca [64 x i32], align 512
  %D_copy = alloca [64 x i32], align 512
  %E_copy = alloca [64 x i32], align 512
  %0 = bitcast i32* %A to [64 x i32]*
  %1 = bitcast i32* %B to [64 x i32]*
  %2 = bitcast i32* %C to [64 x i32]*
  %3 = bitcast i32* %D to [64 x i32]*
  %4 = bitcast i32* %E to [64 x i32]*
  call fastcc void @copy_in([64 x i32]* nonnull %0, [64 x i32]* nonnull align 512 %A_copy, [64 x i32]* nonnull %1, [64 x i32]* nonnull align 512 %B_copy, [64 x i32]* nonnull %2, [64 x i32]* nonnull align 512 %C_copy, [64 x i32]* nonnull %3, [64 x i32]* nonnull align 512 %D_copy, [64 x i32]* nonnull %4, [64 x i32]* nonnull align 512 %E_copy)
  call void @apatb_q5_unroll_hw([64 x i32]* %A_copy, [64 x i32]* %B_copy, [64 x i32]* %C_copy, [64 x i32]* %D_copy, [64 x i32]* %E_copy)
  call void @copy_back([64 x i32]* %0, [64 x i32]* %A_copy, [64 x i32]* %1, [64 x i32]* %B_copy, [64 x i32]* %2, [64 x i32]* %C_copy, [64 x i32]* %3, [64 x i32]* %D_copy, [64 x i32]* %4, [64 x i32]* %E_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([64 x i32]* noalias readonly, [64 x i32]* noalias align 512, [64 x i32]* noalias readonly, [64 x i32]* noalias align 512, [64 x i32]* noalias readonly, [64 x i32]* noalias align 512, [64 x i32]* noalias readonly, [64 x i32]* noalias align 512, [64 x i32]* noalias readonly, [64 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %1, [64 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %3, [64 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %5, [64 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %7, [64 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %9, [64 x i32]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* noalias align 512 %dst, [64 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i32]* %dst, null
  %1 = icmp eq [64 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32([64 x i32]* nonnull %dst, [64 x i32]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32([64 x i32]* %dst, [64 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define internal fastcc void @copy_out([64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %0, [64 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %2, [64 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %4, [64 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %6, [64 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %8, [64 x i32]* align 512 %9)
  ret void
}

declare void @apatb_q5_unroll_hw([64 x i32]*, [64 x i32]*, [64 x i32]*, [64 x i32]*, [64 x i32]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %4, [64 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %6, [64 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %8, [64 x i32]* align 512 %9)
  ret void
}

define void @q5_unroll_hw_stub_wrapper([64 x i32]*, [64 x i32]*, [64 x i32]*, [64 x i32]*, [64 x i32]*) #5 {
entry:
  call void @copy_out([64 x i32]* null, [64 x i32]* %0, [64 x i32]* null, [64 x i32]* %1, [64 x i32]* null, [64 x i32]* %2, [64 x i32]* null, [64 x i32]* %3, [64 x i32]* null, [64 x i32]* %4)
  %5 = bitcast [64 x i32]* %0 to i32*
  %6 = bitcast [64 x i32]* %1 to i32*
  %7 = bitcast [64 x i32]* %2 to i32*
  %8 = bitcast [64 x i32]* %3 to i32*
  %9 = bitcast [64 x i32]* %4 to i32*
  call void @q5_unroll_hw_stub(i32* %5, i32* %6, i32* %7, i32* %8, i32* %9)
  call void @copy_in([64 x i32]* null, [64 x i32]* %0, [64 x i32]* null, [64 x i32]* %1, [64 x i32]* null, [64 x i32]* %2, [64 x i32]* null, [64 x i32]* %3, [64 x i32]* null, [64 x i32]* %4)
  ret void
}

declare void @q5_unroll_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
