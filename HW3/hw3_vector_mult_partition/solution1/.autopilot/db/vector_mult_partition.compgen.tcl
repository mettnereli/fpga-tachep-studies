# This script segment is generated automatically by AutoPilot

set name vector_mult_partition_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name a_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_0 \
    op interface \
    ports { a_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name a_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_1 \
    op interface \
    ports { a_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name a_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_2 \
    op interface \
    ports { a_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name a_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_3 \
    op interface \
    ports { a_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name a_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_4 \
    op interface \
    ports { a_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name a_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_5 \
    op interface \
    ports { a_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name a_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_6 \
    op interface \
    ports { a_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name a_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_7 \
    op interface \
    ports { a_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name a_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_8 \
    op interface \
    ports { a_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name a_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_9 \
    op interface \
    ports { a_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name a_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_10 \
    op interface \
    ports { a_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name a_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_11 \
    op interface \
    ports { a_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name a_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_12 \
    op interface \
    ports { a_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name a_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_13 \
    op interface \
    ports { a_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name a_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_14 \
    op interface \
    ports { a_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name a_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_15 \
    op interface \
    ports { a_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name b_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_0 \
    op interface \
    ports { b_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name b_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_1 \
    op interface \
    ports { b_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name b_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_2 \
    op interface \
    ports { b_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name b_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3 \
    op interface \
    ports { b_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name b_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_4 \
    op interface \
    ports { b_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name b_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_5 \
    op interface \
    ports { b_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name b_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_6 \
    op interface \
    ports { b_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name b_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_7 \
    op interface \
    ports { b_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name b_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_8 \
    op interface \
    ports { b_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name b_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_9 \
    op interface \
    ports { b_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name b_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_10 \
    op interface \
    ports { b_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name b_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_11 \
    op interface \
    ports { b_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name b_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_12 \
    op interface \
    ports { b_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name b_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_13 \
    op interface \
    ports { b_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name b_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_14 \
    op interface \
    ports { b_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name b_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_15 \
    op interface \
    ports { b_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name c_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0 \
    op interface \
    ports { c_0 { O 32 vector } c_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name c_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1 \
    op interface \
    ports { c_1 { O 32 vector } c_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name c_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2 \
    op interface \
    ports { c_2 { O 32 vector } c_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name c_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3 \
    op interface \
    ports { c_3 { O 32 vector } c_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name c_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_4 \
    op interface \
    ports { c_4 { O 32 vector } c_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name c_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_5 \
    op interface \
    ports { c_5 { O 32 vector } c_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name c_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_6 \
    op interface \
    ports { c_6 { O 32 vector } c_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name c_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_7 \
    op interface \
    ports { c_7 { O 32 vector } c_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name c_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_8 \
    op interface \
    ports { c_8 { O 32 vector } c_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name c_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_9 \
    op interface \
    ports { c_9 { O 32 vector } c_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name c_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_10 \
    op interface \
    ports { c_10 { O 32 vector } c_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name c_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_11 \
    op interface \
    ports { c_11 { O 32 vector } c_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name c_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_12 \
    op interface \
    ports { c_12 { O 32 vector } c_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name c_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_13 \
    op interface \
    ports { c_13 { O 32 vector } c_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name c_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_14 \
    op interface \
    ports { c_14 { O 32 vector } c_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name c_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_15 \
    op interface \
    ports { c_15 { O 32 vector } c_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


