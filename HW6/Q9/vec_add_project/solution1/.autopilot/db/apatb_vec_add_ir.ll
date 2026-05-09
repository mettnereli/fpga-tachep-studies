; ModuleID = '/scratch/emettner/fpga-tachep-studies/HW6/Q9/vec_add_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }

; Function Attrs: argmemonly noinline willreturn
define void @apatb_vec_add_ir(%"struct.ap_uint<16>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="15" %A, %"struct.ap_uint<16>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="15" %B, %"struct.ap_uint<16>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="15" %C) local_unnamed_addr #0 {
entry:
  %A_copy = alloca [15 x i16], align 512
  %B_copy = alloca [15 x i16], align 512
  %C_copy = alloca [15 x i16], align 512
  %0 = bitcast %"struct.ap_uint<16>"* %A to [15 x %"struct.ap_uint<16>"]*
  %1 = bitcast %"struct.ap_uint<16>"* %B to [15 x %"struct.ap_uint<16>"]*
  %2 = bitcast %"struct.ap_uint<16>"* %C to [15 x %"struct.ap_uint<16>"]*
  call fastcc void @copy_in([15 x %"struct.ap_uint<16>"]* nonnull %0, [15 x i16]* nonnull align 512 %A_copy, [15 x %"struct.ap_uint<16>"]* nonnull %1, [15 x i16]* nonnull align 512 %B_copy, [15 x %"struct.ap_uint<16>"]* nonnull %2, [15 x i16]* nonnull align 512 %C_copy)
  call void @apatb_vec_add_hw([15 x i16]* %A_copy, [15 x i16]* %B_copy, [15 x i16]* %C_copy)
  call void @copy_back([15 x %"struct.ap_uint<16>"]* %0, [15 x i16]* %A_copy, [15 x %"struct.ap_uint<16>"]* %1, [15 x i16]* %B_copy, [15 x %"struct.ap_uint<16>"]* %2, [15 x i16]* %C_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([15 x %"struct.ap_uint<16>"]* noalias readonly "unpacked"="0", [15 x i16]* noalias nocapture align 512 "unpacked"="1.0", [15 x %"struct.ap_uint<16>"]* noalias readonly "unpacked"="2", [15 x i16]* noalias nocapture align 512 "unpacked"="3.0", [15 x %"struct.ap_uint<16>"]* noalias readonly "unpacked"="4", [15 x i16]* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>"([15 x i16]* align 512 %1, [15 x %"struct.ap_uint<16>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>"([15 x i16]* align 512 %3, [15 x %"struct.ap_uint<16>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>"([15 x i16]* align 512 %5, [15 x %"struct.ap_uint<16>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a15struct.ap_uint<16>"([15 x %"struct.ap_uint<16>"]* %dst, [15 x %"struct.ap_uint<16>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [15 x %"struct.ap_uint<16>"]* %src, null
  %1 = icmp eq [15 x %"struct.ap_uint<16>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [15 x %"struct.ap_uint<16>"], [15 x %"struct.ap_uint<16>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [15 x %"struct.ap_uint<16>"], [15 x %"struct.ap_uint<16>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([15 x %"struct.ap_uint<16>"]* noalias "unpacked"="0", [15 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", [15 x %"struct.ap_uint<16>"]* noalias "unpacked"="2", [15 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0", [15 x %"struct.ap_uint<16>"]* noalias "unpacked"="4", [15 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>.5"([15 x %"struct.ap_uint<16>"]* %0, [15 x i16]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>.5"([15 x %"struct.ap_uint<16>"]* %2, [15 x i16]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>.5"([15 x %"struct.ap_uint<16>"]* %4, [15 x i16]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>.5"([15 x %"struct.ap_uint<16>"]* noalias "unpacked"="0" %dst, [15 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [15 x %"struct.ap_uint<16>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a15struct.ap_uint<16>.8"([15 x %"struct.ap_uint<16>"]* nonnull %dst, [15 x i16]* %src, i64 15)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a15struct.ap_uint<16>.8"([15 x %"struct.ap_uint<16>"]* "unpacked"="0" %dst, [15 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [15 x %"struct.ap_uint<16>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [15 x i16], [15 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [15 x %"struct.ap_uint<16>"], [15 x %"struct.ap_uint<16>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>"([15 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [15 x %"struct.ap_uint<16>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [15 x %"struct.ap_uint<16>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a15struct.ap_uint<16>.15"([15 x i16]* %dst, [15 x %"struct.ap_uint<16>"]* nonnull %src, i64 15)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a15struct.ap_uint<16>.15"([15 x i16]* nocapture "unpacked"="0.0" %dst, [15 x %"struct.ap_uint<16>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [15 x %"struct.ap_uint<16>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [15 x %"struct.ap_uint<16>"], [15 x %"struct.ap_uint<16>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [15 x i16], [15 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_vec_add_hw([15 x i16]*, [15 x i16]*, [15 x i16]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([15 x %"struct.ap_uint<16>"]* noalias "unpacked"="0", [15 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", [15 x %"struct.ap_uint<16>"]* noalias "unpacked"="2", [15 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0", [15 x %"struct.ap_uint<16>"]* noalias "unpacked"="4", [15 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a15struct.ap_uint<16>.5"([15 x %"struct.ap_uint<16>"]* %4, [15 x i16]* align 512 %5)
  ret void
}

define void @vec_add_hw_stub_wrapper([15 x i16]*, [15 x i16]*, [15 x i16]*) #5 {
entry:
  %3 = alloca [15 x %"struct.ap_uint<16>"]
  %4 = alloca [15 x %"struct.ap_uint<16>"]
  %5 = alloca [15 x %"struct.ap_uint<16>"]
  call void @copy_out([15 x %"struct.ap_uint<16>"]* %3, [15 x i16]* %0, [15 x %"struct.ap_uint<16>"]* %4, [15 x i16]* %1, [15 x %"struct.ap_uint<16>"]* %5, [15 x i16]* %2)
  %6 = bitcast [15 x %"struct.ap_uint<16>"]* %3 to %"struct.ap_uint<16>"*
  %7 = bitcast [15 x %"struct.ap_uint<16>"]* %4 to %"struct.ap_uint<16>"*
  %8 = bitcast [15 x %"struct.ap_uint<16>"]* %5 to %"struct.ap_uint<16>"*
  call void @vec_add_hw_stub(%"struct.ap_uint<16>"* %6, %"struct.ap_uint<16>"* %7, %"struct.ap_uint<16>"* %8)
  call void @copy_in([15 x %"struct.ap_uint<16>"]* %3, [15 x i16]* %0, [15 x %"struct.ap_uint<16>"]* %4, [15 x i16]* %1, [15 x %"struct.ap_uint<16>"]* %5, [15 x i16]* %2)
  ret void
}

declare void @vec_add_hw_stub(%"struct.ap_uint<16>"* noalias nocapture nonnull readonly, %"struct.ap_uint<16>"* noalias nocapture nonnull readonly, %"struct.ap_uint<16>"* noalias nocapture nonnull)

attributes #0 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
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
