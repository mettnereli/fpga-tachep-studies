# This script segment is generated automatically by AutoPilot

set name matrix_mult_partition_both_dims_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler matrix_mult_partition_both_dims_sparsemux_13_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
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
    id 21 \
    name A_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0_0 \
    op interface \
    ports { A_0_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name A_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0_1 \
    op interface \
    ports { A_0_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name A_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0_2 \
    op interface \
    ports { A_0_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name A_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0_3 \
    op interface \
    ports { A_0_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name A_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0_4 \
    op interface \
    ports { A_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name A_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0_5 \
    op interface \
    ports { A_0_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name A_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1_0 \
    op interface \
    ports { A_1_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name A_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1_1 \
    op interface \
    ports { A_1_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name A_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1_2 \
    op interface \
    ports { A_1_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name A_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1_3 \
    op interface \
    ports { A_1_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name A_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1_4 \
    op interface \
    ports { A_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name A_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1_5 \
    op interface \
    ports { A_1_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name A_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2_0 \
    op interface \
    ports { A_2_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name A_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2_1 \
    op interface \
    ports { A_2_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name A_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2_2 \
    op interface \
    ports { A_2_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name A_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2_3 \
    op interface \
    ports { A_2_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name A_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2_4 \
    op interface \
    ports { A_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name A_2_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2_5 \
    op interface \
    ports { A_2_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name A_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3_0 \
    op interface \
    ports { A_3_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name A_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3_1 \
    op interface \
    ports { A_3_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name A_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3_2 \
    op interface \
    ports { A_3_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name A_3_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3_3 \
    op interface \
    ports { A_3_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name A_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3_4 \
    op interface \
    ports { A_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name A_3_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3_5 \
    op interface \
    ports { A_3_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name A_4_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4_0 \
    op interface \
    ports { A_4_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name A_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4_1 \
    op interface \
    ports { A_4_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name A_4_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4_2 \
    op interface \
    ports { A_4_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name A_4_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4_3 \
    op interface \
    ports { A_4_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name A_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4_4 \
    op interface \
    ports { A_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name A_4_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4_5 \
    op interface \
    ports { A_4_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name A_5_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5_0 \
    op interface \
    ports { A_5_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name A_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5_1 \
    op interface \
    ports { A_5_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name A_5_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5_2 \
    op interface \
    ports { A_5_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name A_5_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5_3 \
    op interface \
    ports { A_5_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name A_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5_4 \
    op interface \
    ports { A_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name A_5_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5_5 \
    op interface \
    ports { A_5_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name B_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_0 \
    op interface \
    ports { B_0_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name B_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_1 \
    op interface \
    ports { B_0_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name B_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_2 \
    op interface \
    ports { B_0_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name B_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_3 \
    op interface \
    ports { B_0_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name B_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_4 \
    op interface \
    ports { B_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name B_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_5 \
    op interface \
    ports { B_0_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name B_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_0 \
    op interface \
    ports { B_1_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name B_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_1 \
    op interface \
    ports { B_1_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name B_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_2 \
    op interface \
    ports { B_1_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name B_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_3 \
    op interface \
    ports { B_1_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name B_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_4 \
    op interface \
    ports { B_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name B_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_5 \
    op interface \
    ports { B_1_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name B_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_0 \
    op interface \
    ports { B_2_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name B_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_1 \
    op interface \
    ports { B_2_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name B_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_2 \
    op interface \
    ports { B_2_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name B_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_3 \
    op interface \
    ports { B_2_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name B_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_4 \
    op interface \
    ports { B_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name B_2_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_5 \
    op interface \
    ports { B_2_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name B_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_0 \
    op interface \
    ports { B_3_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name B_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_1 \
    op interface \
    ports { B_3_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name B_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_2 \
    op interface \
    ports { B_3_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name B_3_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_3 \
    op interface \
    ports { B_3_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name B_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_4 \
    op interface \
    ports { B_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name B_3_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_5 \
    op interface \
    ports { B_3_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name B_4_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_0 \
    op interface \
    ports { B_4_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name B_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_1 \
    op interface \
    ports { B_4_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name B_4_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_2 \
    op interface \
    ports { B_4_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name B_4_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_3 \
    op interface \
    ports { B_4_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name B_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_4 \
    op interface \
    ports { B_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name B_4_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_5 \
    op interface \
    ports { B_4_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name B_5_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_0 \
    op interface \
    ports { B_5_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name B_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_1 \
    op interface \
    ports { B_5_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name B_5_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_2 \
    op interface \
    ports { B_5_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name B_5_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_3 \
    op interface \
    ports { B_5_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name B_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_4 \
    op interface \
    ports { B_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name B_5_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_5 \
    op interface \
    ports { B_5_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name C_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0_0 \
    op interface \
    ports { C_0_0 { O 32 vector } C_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name C_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0_1 \
    op interface \
    ports { C_0_1 { O 32 vector } C_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name C_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0_2 \
    op interface \
    ports { C_0_2 { O 32 vector } C_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name C_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0_3 \
    op interface \
    ports { C_0_3 { O 32 vector } C_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name C_0_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0_4 \
    op interface \
    ports { C_0_4 { O 32 vector } C_0_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name C_0_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_0_5 \
    op interface \
    ports { C_0_5 { O 32 vector } C_0_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name C_1_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1_0 \
    op interface \
    ports { C_1_0 { O 32 vector } C_1_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name C_1_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1_1 \
    op interface \
    ports { C_1_1 { O 32 vector } C_1_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name C_1_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1_2 \
    op interface \
    ports { C_1_2 { O 32 vector } C_1_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name C_1_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1_3 \
    op interface \
    ports { C_1_3 { O 32 vector } C_1_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name C_1_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1_4 \
    op interface \
    ports { C_1_4 { O 32 vector } C_1_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name C_1_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_1_5 \
    op interface \
    ports { C_1_5 { O 32 vector } C_1_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name C_2_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2_0 \
    op interface \
    ports { C_2_0 { O 32 vector } C_2_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name C_2_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2_1 \
    op interface \
    ports { C_2_1 { O 32 vector } C_2_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name C_2_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2_2 \
    op interface \
    ports { C_2_2 { O 32 vector } C_2_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name C_2_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2_3 \
    op interface \
    ports { C_2_3 { O 32 vector } C_2_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name C_2_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2_4 \
    op interface \
    ports { C_2_4 { O 32 vector } C_2_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name C_2_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_2_5 \
    op interface \
    ports { C_2_5 { O 32 vector } C_2_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name C_3_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3_0 \
    op interface \
    ports { C_3_0 { O 32 vector } C_3_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name C_3_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3_1 \
    op interface \
    ports { C_3_1 { O 32 vector } C_3_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name C_3_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3_2 \
    op interface \
    ports { C_3_2 { O 32 vector } C_3_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name C_3_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3_3 \
    op interface \
    ports { C_3_3 { O 32 vector } C_3_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name C_3_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3_4 \
    op interface \
    ports { C_3_4 { O 32 vector } C_3_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name C_3_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_3_5 \
    op interface \
    ports { C_3_5 { O 32 vector } C_3_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name C_4_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4_0 \
    op interface \
    ports { C_4_0 { O 32 vector } C_4_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name C_4_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4_1 \
    op interface \
    ports { C_4_1 { O 32 vector } C_4_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name C_4_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4_2 \
    op interface \
    ports { C_4_2 { O 32 vector } C_4_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name C_4_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4_3 \
    op interface \
    ports { C_4_3 { O 32 vector } C_4_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name C_4_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4_4 \
    op interface \
    ports { C_4_4 { O 32 vector } C_4_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name C_4_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_4_5 \
    op interface \
    ports { C_4_5 { O 32 vector } C_4_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name C_5_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5_0 \
    op interface \
    ports { C_5_0 { O 32 vector } C_5_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name C_5_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5_1 \
    op interface \
    ports { C_5_1 { O 32 vector } C_5_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name C_5_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5_2 \
    op interface \
    ports { C_5_2 { O 32 vector } C_5_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name C_5_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5_3 \
    op interface \
    ports { C_5_3 { O 32 vector } C_5_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name C_5_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5_4 \
    op interface \
    ports { C_5_4 { O 32 vector } C_5_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name C_5_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_C_5_5 \
    op interface \
    ports { C_5_5 { O 32 vector } C_5_5_ap_vld { O 1 bit } } \
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
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
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


# flow_control definition:
set InstName matrix_mult_partition_both_dims_flow_control_loop_pipe_U
set CompName matrix_mult_partition_both_dims_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix matrix_mult_partition_both_dims_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


