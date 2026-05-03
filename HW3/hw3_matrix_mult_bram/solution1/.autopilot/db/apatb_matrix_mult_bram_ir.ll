; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW3/hw3_matrix_mult_bram/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_matrix_mult_bram_ir([6 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %A, [6 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %B, [6 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="6" %C) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [6 x [6 x i32]], align 512
  %B_copy = alloca [6 x [6 x i32]], align 512
  %C_copy = alloca [6 x [6 x i32]], align 512
  %0 = bitcast [6 x i32]* %A to [6 x [6 x i32]]*
  %1 = bitcast [6 x i32]* %B to [6 x [6 x i32]]*
  %2 = bitcast [6 x i32]* %C to [6 x [6 x i32]]*
  call fastcc void @copy_in([6 x [6 x i32]]* nonnull %0, [6 x [6 x i32]]* nonnull align 512 %A_copy, [6 x [6 x i32]]* nonnull %1, [6 x [6 x i32]]* nonnull align 512 %B_copy, [6 x [6 x i32]]* nonnull %2, [6 x [6 x i32]]* nonnull align 512 %C_copy)
  call void @apatb_matrix_mult_bram_hw([6 x [6 x i32]]* %A_copy, [6 x [6 x i32]]* %B_copy, [6 x [6 x i32]]* %C_copy)
  call void @copy_back([6 x [6 x i32]]* %0, [6 x [6 x i32]]* %A_copy, [6 x [6 x i32]]* %1, [6 x [6 x i32]]* %B_copy, [6 x [6 x i32]]* %2, [6 x [6 x i32]]* %C_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([6 x [6 x i32]]* noalias readonly, [6 x [6 x i32]]* noalias align 512, [6 x [6 x i32]]* noalias readonly, [6 x [6 x i32]]* noalias align 512, [6 x [6 x i32]]* noalias readonly, [6 x [6 x i32]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* align 512 %1, [6 x [6 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* align 512 %3, [6 x [6 x i32]]* %2)
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* align 512 %5, [6 x [6 x i32]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* noalias align 512 %dst, [6 x [6 x i32]]* noalias readonly %src) unnamed_addr #2 {
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
define void @arraycpy_hls.p0a6a6i32([6 x [6 x i32]]* %dst, [6 x [6 x i32]]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define void @arraycpy_hls.p0a6i32([6 x i32]* %dst, [6 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
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

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([6 x [6 x i32]]* noalias, [6 x [6 x i32]]* noalias readonly align 512, [6 x [6 x i32]]* noalias, [6 x [6 x i32]]* noalias readonly align 512, [6 x [6 x i32]]* noalias, [6 x [6 x i32]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* %0, [6 x [6 x i32]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* %2, [6 x [6 x i32]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* %4, [6 x [6 x i32]]* align 512 %5)
  ret void
}

declare void @apatb_matrix_mult_bram_hw([6 x [6 x i32]]*, [6 x [6 x i32]]*, [6 x [6 x i32]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([6 x [6 x i32]]* noalias, [6 x [6 x i32]]* noalias readonly align 512, [6 x [6 x i32]]* noalias, [6 x [6 x i32]]* noalias readonly align 512, [6 x [6 x i32]]* noalias, [6 x [6 x i32]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6a6i32([6 x [6 x i32]]* %4, [6 x [6 x i32]]* align 512 %5)
  ret void
}

define void @matrix_mult_bram_hw_stub_wrapper([6 x [6 x i32]]*, [6 x [6 x i32]]*, [6 x [6 x i32]]*) #5 {
entry:
  call void @copy_out([6 x [6 x i32]]* null, [6 x [6 x i32]]* %0, [6 x [6 x i32]]* null, [6 x [6 x i32]]* %1, [6 x [6 x i32]]* null, [6 x [6 x i32]]* %2)
  %3 = bitcast [6 x [6 x i32]]* %0 to [6 x i32]*
  %4 = bitcast [6 x [6 x i32]]* %1 to [6 x i32]*
  %5 = bitcast [6 x [6 x i32]]* %2 to [6 x i32]*
  call void @matrix_mult_bram_hw_stub([6 x i32]* %3, [6 x i32]* %4, [6 x i32]* %5)
  call void @copy_in([6 x [6 x i32]]* null, [6 x [6 x i32]]* %0, [6 x [6 x i32]]* null, [6 x [6 x i32]]* %1, [6 x [6 x i32]]* null, [6 x [6 x i32]]* %2)
  ret void
}

declare void @matrix_mult_bram_hw_stub([6 x i32]* noalias nocapture nonnull readonly, [6 x i32]* noalias nocapture nonnull readonly, [6 x i32]* noalias nocapture nonnull)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
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
