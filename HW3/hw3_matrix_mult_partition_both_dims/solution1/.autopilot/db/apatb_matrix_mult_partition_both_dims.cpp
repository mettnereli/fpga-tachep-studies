#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_directio.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_A_0_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_0_0.dat"
#define AUTOTB_TVOUT_A_0_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_0_0.dat"
#define AUTOTB_TVIN_A_0_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_0_1.dat"
#define AUTOTB_TVOUT_A_0_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_0_1.dat"
#define AUTOTB_TVIN_A_0_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_0_2.dat"
#define AUTOTB_TVOUT_A_0_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_0_2.dat"
#define AUTOTB_TVIN_A_0_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_0_3.dat"
#define AUTOTB_TVOUT_A_0_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_0_3.dat"
#define AUTOTB_TVIN_A_0_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_0_4.dat"
#define AUTOTB_TVOUT_A_0_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_0_4.dat"
#define AUTOTB_TVIN_A_0_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_0_5.dat"
#define AUTOTB_TVOUT_A_0_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_0_5.dat"
#define AUTOTB_TVIN_A_1_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_1_0.dat"
#define AUTOTB_TVOUT_A_1_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_1_0.dat"
#define AUTOTB_TVIN_A_1_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_1_1.dat"
#define AUTOTB_TVOUT_A_1_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_1_1.dat"
#define AUTOTB_TVIN_A_1_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_1_2.dat"
#define AUTOTB_TVOUT_A_1_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_1_2.dat"
#define AUTOTB_TVIN_A_1_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_1_3.dat"
#define AUTOTB_TVOUT_A_1_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_1_3.dat"
#define AUTOTB_TVIN_A_1_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_1_4.dat"
#define AUTOTB_TVOUT_A_1_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_1_4.dat"
#define AUTOTB_TVIN_A_1_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_1_5.dat"
#define AUTOTB_TVOUT_A_1_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_1_5.dat"
#define AUTOTB_TVIN_A_2_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_2_0.dat"
#define AUTOTB_TVOUT_A_2_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_2_0.dat"
#define AUTOTB_TVIN_A_2_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_2_1.dat"
#define AUTOTB_TVOUT_A_2_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_2_1.dat"
#define AUTOTB_TVIN_A_2_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_2_2.dat"
#define AUTOTB_TVOUT_A_2_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_2_2.dat"
#define AUTOTB_TVIN_A_2_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_2_3.dat"
#define AUTOTB_TVOUT_A_2_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_2_3.dat"
#define AUTOTB_TVIN_A_2_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_2_4.dat"
#define AUTOTB_TVOUT_A_2_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_2_4.dat"
#define AUTOTB_TVIN_A_2_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_2_5.dat"
#define AUTOTB_TVOUT_A_2_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_2_5.dat"
#define AUTOTB_TVIN_A_3_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_3_0.dat"
#define AUTOTB_TVOUT_A_3_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_3_0.dat"
#define AUTOTB_TVIN_A_3_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_3_1.dat"
#define AUTOTB_TVOUT_A_3_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_3_1.dat"
#define AUTOTB_TVIN_A_3_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_3_2.dat"
#define AUTOTB_TVOUT_A_3_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_3_2.dat"
#define AUTOTB_TVIN_A_3_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_3_3.dat"
#define AUTOTB_TVOUT_A_3_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_3_3.dat"
#define AUTOTB_TVIN_A_3_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_3_4.dat"
#define AUTOTB_TVOUT_A_3_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_3_4.dat"
#define AUTOTB_TVIN_A_3_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_3_5.dat"
#define AUTOTB_TVOUT_A_3_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_3_5.dat"
#define AUTOTB_TVIN_A_4_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_4_0.dat"
#define AUTOTB_TVOUT_A_4_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_4_0.dat"
#define AUTOTB_TVIN_A_4_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_4_1.dat"
#define AUTOTB_TVOUT_A_4_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_4_1.dat"
#define AUTOTB_TVIN_A_4_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_4_2.dat"
#define AUTOTB_TVOUT_A_4_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_4_2.dat"
#define AUTOTB_TVIN_A_4_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_4_3.dat"
#define AUTOTB_TVOUT_A_4_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_4_3.dat"
#define AUTOTB_TVIN_A_4_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_4_4.dat"
#define AUTOTB_TVOUT_A_4_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_4_4.dat"
#define AUTOTB_TVIN_A_4_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_4_5.dat"
#define AUTOTB_TVOUT_A_4_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_4_5.dat"
#define AUTOTB_TVIN_A_5_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_5_0.dat"
#define AUTOTB_TVOUT_A_5_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_5_0.dat"
#define AUTOTB_TVIN_A_5_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_5_1.dat"
#define AUTOTB_TVOUT_A_5_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_5_1.dat"
#define AUTOTB_TVIN_A_5_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_5_2.dat"
#define AUTOTB_TVOUT_A_5_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_5_2.dat"
#define AUTOTB_TVIN_A_5_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_5_3.dat"
#define AUTOTB_TVOUT_A_5_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_5_3.dat"
#define AUTOTB_TVIN_A_5_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_5_4.dat"
#define AUTOTB_TVOUT_A_5_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_5_4.dat"
#define AUTOTB_TVIN_A_5_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_A_5_5.dat"
#define AUTOTB_TVOUT_A_5_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_A_5_5.dat"
#define AUTOTB_TVIN_B_0_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_0_0.dat"
#define AUTOTB_TVOUT_B_0_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_0_0.dat"
#define AUTOTB_TVIN_B_0_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_0_1.dat"
#define AUTOTB_TVOUT_B_0_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_0_1.dat"
#define AUTOTB_TVIN_B_0_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_0_2.dat"
#define AUTOTB_TVOUT_B_0_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_0_2.dat"
#define AUTOTB_TVIN_B_0_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_0_3.dat"
#define AUTOTB_TVOUT_B_0_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_0_3.dat"
#define AUTOTB_TVIN_B_0_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_0_4.dat"
#define AUTOTB_TVOUT_B_0_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_0_4.dat"
#define AUTOTB_TVIN_B_0_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_0_5.dat"
#define AUTOTB_TVOUT_B_0_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_0_5.dat"
#define AUTOTB_TVIN_B_1_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_1_0.dat"
#define AUTOTB_TVOUT_B_1_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_1_0.dat"
#define AUTOTB_TVIN_B_1_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_1_1.dat"
#define AUTOTB_TVOUT_B_1_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_1_1.dat"
#define AUTOTB_TVIN_B_1_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_1_2.dat"
#define AUTOTB_TVOUT_B_1_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_1_2.dat"
#define AUTOTB_TVIN_B_1_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_1_3.dat"
#define AUTOTB_TVOUT_B_1_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_1_3.dat"
#define AUTOTB_TVIN_B_1_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_1_4.dat"
#define AUTOTB_TVOUT_B_1_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_1_4.dat"
#define AUTOTB_TVIN_B_1_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_1_5.dat"
#define AUTOTB_TVOUT_B_1_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_1_5.dat"
#define AUTOTB_TVIN_B_2_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_2_0.dat"
#define AUTOTB_TVOUT_B_2_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_2_0.dat"
#define AUTOTB_TVIN_B_2_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_2_1.dat"
#define AUTOTB_TVOUT_B_2_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_2_1.dat"
#define AUTOTB_TVIN_B_2_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_2_2.dat"
#define AUTOTB_TVOUT_B_2_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_2_2.dat"
#define AUTOTB_TVIN_B_2_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_2_3.dat"
#define AUTOTB_TVOUT_B_2_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_2_3.dat"
#define AUTOTB_TVIN_B_2_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_2_4.dat"
#define AUTOTB_TVOUT_B_2_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_2_4.dat"
#define AUTOTB_TVIN_B_2_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_2_5.dat"
#define AUTOTB_TVOUT_B_2_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_2_5.dat"
#define AUTOTB_TVIN_B_3_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_3_0.dat"
#define AUTOTB_TVOUT_B_3_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_3_0.dat"
#define AUTOTB_TVIN_B_3_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_3_1.dat"
#define AUTOTB_TVOUT_B_3_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_3_1.dat"
#define AUTOTB_TVIN_B_3_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_3_2.dat"
#define AUTOTB_TVOUT_B_3_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_3_2.dat"
#define AUTOTB_TVIN_B_3_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_3_3.dat"
#define AUTOTB_TVOUT_B_3_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_3_3.dat"
#define AUTOTB_TVIN_B_3_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_3_4.dat"
#define AUTOTB_TVOUT_B_3_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_3_4.dat"
#define AUTOTB_TVIN_B_3_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_3_5.dat"
#define AUTOTB_TVOUT_B_3_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_3_5.dat"
#define AUTOTB_TVIN_B_4_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_4_0.dat"
#define AUTOTB_TVOUT_B_4_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_4_0.dat"
#define AUTOTB_TVIN_B_4_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_4_1.dat"
#define AUTOTB_TVOUT_B_4_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_4_1.dat"
#define AUTOTB_TVIN_B_4_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_4_2.dat"
#define AUTOTB_TVOUT_B_4_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_4_2.dat"
#define AUTOTB_TVIN_B_4_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_4_3.dat"
#define AUTOTB_TVOUT_B_4_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_4_3.dat"
#define AUTOTB_TVIN_B_4_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_4_4.dat"
#define AUTOTB_TVOUT_B_4_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_4_4.dat"
#define AUTOTB_TVIN_B_4_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_4_5.dat"
#define AUTOTB_TVOUT_B_4_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_4_5.dat"
#define AUTOTB_TVIN_B_5_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_5_0.dat"
#define AUTOTB_TVOUT_B_5_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_5_0.dat"
#define AUTOTB_TVIN_B_5_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_5_1.dat"
#define AUTOTB_TVOUT_B_5_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_5_1.dat"
#define AUTOTB_TVIN_B_5_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_5_2.dat"
#define AUTOTB_TVOUT_B_5_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_5_2.dat"
#define AUTOTB_TVIN_B_5_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_5_3.dat"
#define AUTOTB_TVOUT_B_5_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_5_3.dat"
#define AUTOTB_TVIN_B_5_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_5_4.dat"
#define AUTOTB_TVOUT_B_5_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_5_4.dat"
#define AUTOTB_TVIN_B_5_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_B_5_5.dat"
#define AUTOTB_TVOUT_B_5_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_B_5_5.dat"
#define AUTOTB_TVIN_C_0_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_0_0.dat"
#define AUTOTB_TVOUT_C_0_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_0_0.dat"
#define AUTOTB_TVIN_C_0_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_0_1.dat"
#define AUTOTB_TVOUT_C_0_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_0_1.dat"
#define AUTOTB_TVIN_C_0_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_0_2.dat"
#define AUTOTB_TVOUT_C_0_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_0_2.dat"
#define AUTOTB_TVIN_C_0_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_0_3.dat"
#define AUTOTB_TVOUT_C_0_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_0_3.dat"
#define AUTOTB_TVIN_C_0_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_0_4.dat"
#define AUTOTB_TVOUT_C_0_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_0_4.dat"
#define AUTOTB_TVIN_C_0_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_0_5.dat"
#define AUTOTB_TVOUT_C_0_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_0_5.dat"
#define AUTOTB_TVIN_C_1_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_1_0.dat"
#define AUTOTB_TVOUT_C_1_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_1_0.dat"
#define AUTOTB_TVIN_C_1_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_1_1.dat"
#define AUTOTB_TVOUT_C_1_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_1_1.dat"
#define AUTOTB_TVIN_C_1_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_1_2.dat"
#define AUTOTB_TVOUT_C_1_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_1_2.dat"
#define AUTOTB_TVIN_C_1_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_1_3.dat"
#define AUTOTB_TVOUT_C_1_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_1_3.dat"
#define AUTOTB_TVIN_C_1_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_1_4.dat"
#define AUTOTB_TVOUT_C_1_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_1_4.dat"
#define AUTOTB_TVIN_C_1_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_1_5.dat"
#define AUTOTB_TVOUT_C_1_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_1_5.dat"
#define AUTOTB_TVIN_C_2_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_2_0.dat"
#define AUTOTB_TVOUT_C_2_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_2_0.dat"
#define AUTOTB_TVIN_C_2_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_2_1.dat"
#define AUTOTB_TVOUT_C_2_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_2_1.dat"
#define AUTOTB_TVIN_C_2_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_2_2.dat"
#define AUTOTB_TVOUT_C_2_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_2_2.dat"
#define AUTOTB_TVIN_C_2_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_2_3.dat"
#define AUTOTB_TVOUT_C_2_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_2_3.dat"
#define AUTOTB_TVIN_C_2_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_2_4.dat"
#define AUTOTB_TVOUT_C_2_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_2_4.dat"
#define AUTOTB_TVIN_C_2_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_2_5.dat"
#define AUTOTB_TVOUT_C_2_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_2_5.dat"
#define AUTOTB_TVIN_C_3_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_3_0.dat"
#define AUTOTB_TVOUT_C_3_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_3_0.dat"
#define AUTOTB_TVIN_C_3_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_3_1.dat"
#define AUTOTB_TVOUT_C_3_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_3_1.dat"
#define AUTOTB_TVIN_C_3_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_3_2.dat"
#define AUTOTB_TVOUT_C_3_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_3_2.dat"
#define AUTOTB_TVIN_C_3_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_3_3.dat"
#define AUTOTB_TVOUT_C_3_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_3_3.dat"
#define AUTOTB_TVIN_C_3_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_3_4.dat"
#define AUTOTB_TVOUT_C_3_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_3_4.dat"
#define AUTOTB_TVIN_C_3_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_3_5.dat"
#define AUTOTB_TVOUT_C_3_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_3_5.dat"
#define AUTOTB_TVIN_C_4_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_4_0.dat"
#define AUTOTB_TVOUT_C_4_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_4_0.dat"
#define AUTOTB_TVIN_C_4_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_4_1.dat"
#define AUTOTB_TVOUT_C_4_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_4_1.dat"
#define AUTOTB_TVIN_C_4_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_4_2.dat"
#define AUTOTB_TVOUT_C_4_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_4_2.dat"
#define AUTOTB_TVIN_C_4_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_4_3.dat"
#define AUTOTB_TVOUT_C_4_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_4_3.dat"
#define AUTOTB_TVIN_C_4_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_4_4.dat"
#define AUTOTB_TVOUT_C_4_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_4_4.dat"
#define AUTOTB_TVIN_C_4_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_4_5.dat"
#define AUTOTB_TVOUT_C_4_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_4_5.dat"
#define AUTOTB_TVIN_C_5_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_5_0.dat"
#define AUTOTB_TVOUT_C_5_0 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_5_0.dat"
#define AUTOTB_TVIN_C_5_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_5_1.dat"
#define AUTOTB_TVOUT_C_5_1 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_5_1.dat"
#define AUTOTB_TVIN_C_5_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_5_2.dat"
#define AUTOTB_TVOUT_C_5_2 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_5_2.dat"
#define AUTOTB_TVIN_C_5_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_5_3.dat"
#define AUTOTB_TVOUT_C_5_3 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_5_3.dat"
#define AUTOTB_TVIN_C_5_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_5_4.dat"
#define AUTOTB_TVOUT_C_5_4 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_5_4.dat"
#define AUTOTB_TVIN_C_5_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvin_C_5_5.dat"
#define AUTOTB_TVOUT_C_5_5 "../tv/cdatafile/c.matrix_mult_partition_both_dims.autotvout_C_5_5.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_C_0_0 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_0_0.dat"
#define AUTOTB_TVOUT_PC_C_0_1 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_0_1.dat"
#define AUTOTB_TVOUT_PC_C_0_2 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_0_2.dat"
#define AUTOTB_TVOUT_PC_C_0_3 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_0_3.dat"
#define AUTOTB_TVOUT_PC_C_0_4 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_0_4.dat"
#define AUTOTB_TVOUT_PC_C_0_5 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_0_5.dat"
#define AUTOTB_TVOUT_PC_C_1_0 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_1_0.dat"
#define AUTOTB_TVOUT_PC_C_1_1 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_1_1.dat"
#define AUTOTB_TVOUT_PC_C_1_2 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_1_2.dat"
#define AUTOTB_TVOUT_PC_C_1_3 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_1_3.dat"
#define AUTOTB_TVOUT_PC_C_1_4 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_1_4.dat"
#define AUTOTB_TVOUT_PC_C_1_5 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_1_5.dat"
#define AUTOTB_TVOUT_PC_C_2_0 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_2_0.dat"
#define AUTOTB_TVOUT_PC_C_2_1 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_2_1.dat"
#define AUTOTB_TVOUT_PC_C_2_2 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_2_2.dat"
#define AUTOTB_TVOUT_PC_C_2_3 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_2_3.dat"
#define AUTOTB_TVOUT_PC_C_2_4 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_2_4.dat"
#define AUTOTB_TVOUT_PC_C_2_5 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_2_5.dat"
#define AUTOTB_TVOUT_PC_C_3_0 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_3_0.dat"
#define AUTOTB_TVOUT_PC_C_3_1 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_3_1.dat"
#define AUTOTB_TVOUT_PC_C_3_2 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_3_2.dat"
#define AUTOTB_TVOUT_PC_C_3_3 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_3_3.dat"
#define AUTOTB_TVOUT_PC_C_3_4 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_3_4.dat"
#define AUTOTB_TVOUT_PC_C_3_5 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_3_5.dat"
#define AUTOTB_TVOUT_PC_C_4_0 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_4_0.dat"
#define AUTOTB_TVOUT_PC_C_4_1 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_4_1.dat"
#define AUTOTB_TVOUT_PC_C_4_2 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_4_2.dat"
#define AUTOTB_TVOUT_PC_C_4_3 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_4_3.dat"
#define AUTOTB_TVOUT_PC_C_4_4 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_4_4.dat"
#define AUTOTB_TVOUT_PC_C_4_5 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_4_5.dat"
#define AUTOTB_TVOUT_PC_C_5_0 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_5_0.dat"
#define AUTOTB_TVOUT_PC_C_5_1 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_5_1.dat"
#define AUTOTB_TVOUT_PC_C_5_2 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_5_2.dat"
#define AUTOTB_TVOUT_PC_C_5_3 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_5_3.dat"
#define AUTOTB_TVOUT_PC_C_5_4 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_5_4.dat"
#define AUTOTB_TVOUT_PC_C_5_5 "../tv/rtldatafile/rtl.matrix_mult_partition_both_dims.autotvout_C_5_5.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct DirectIO {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::directio<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (param->valid()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~DirectIO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(DirectIO<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  template<typename E>
  void dump(DirectIO<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    if (port.nbytes == 0) {
      error_on_depth_unspecified(port.name);
    }
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void matrix_mult_partition_both_dims_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_matrix_mult_partition_both_dims_hw(void* __xlx_apatb_param_A_0_0, void* __xlx_apatb_param_A_0_1, void* __xlx_apatb_param_A_0_2, void* __xlx_apatb_param_A_0_3, void* __xlx_apatb_param_A_0_4, void* __xlx_apatb_param_A_0_5, void* __xlx_apatb_param_A_1_0, void* __xlx_apatb_param_A_1_1, void* __xlx_apatb_param_A_1_2, void* __xlx_apatb_param_A_1_3, void* __xlx_apatb_param_A_1_4, void* __xlx_apatb_param_A_1_5, void* __xlx_apatb_param_A_2_0, void* __xlx_apatb_param_A_2_1, void* __xlx_apatb_param_A_2_2, void* __xlx_apatb_param_A_2_3, void* __xlx_apatb_param_A_2_4, void* __xlx_apatb_param_A_2_5, void* __xlx_apatb_param_A_3_0, void* __xlx_apatb_param_A_3_1, void* __xlx_apatb_param_A_3_2, void* __xlx_apatb_param_A_3_3, void* __xlx_apatb_param_A_3_4, void* __xlx_apatb_param_A_3_5, void* __xlx_apatb_param_A_4_0, void* __xlx_apatb_param_A_4_1, void* __xlx_apatb_param_A_4_2, void* __xlx_apatb_param_A_4_3, void* __xlx_apatb_param_A_4_4, void* __xlx_apatb_param_A_4_5, void* __xlx_apatb_param_A_5_0, void* __xlx_apatb_param_A_5_1, void* __xlx_apatb_param_A_5_2, void* __xlx_apatb_param_A_5_3, void* __xlx_apatb_param_A_5_4, void* __xlx_apatb_param_A_5_5, void* __xlx_apatb_param_B_0_0, void* __xlx_apatb_param_B_0_1, void* __xlx_apatb_param_B_0_2, void* __xlx_apatb_param_B_0_3, void* __xlx_apatb_param_B_0_4, void* __xlx_apatb_param_B_0_5, void* __xlx_apatb_param_B_1_0, void* __xlx_apatb_param_B_1_1, void* __xlx_apatb_param_B_1_2, void* __xlx_apatb_param_B_1_3, void* __xlx_apatb_param_B_1_4, void* __xlx_apatb_param_B_1_5, void* __xlx_apatb_param_B_2_0, void* __xlx_apatb_param_B_2_1, void* __xlx_apatb_param_B_2_2, void* __xlx_apatb_param_B_2_3, void* __xlx_apatb_param_B_2_4, void* __xlx_apatb_param_B_2_5, void* __xlx_apatb_param_B_3_0, void* __xlx_apatb_param_B_3_1, void* __xlx_apatb_param_B_3_2, void* __xlx_apatb_param_B_3_3, void* __xlx_apatb_param_B_3_4, void* __xlx_apatb_param_B_3_5, void* __xlx_apatb_param_B_4_0, void* __xlx_apatb_param_B_4_1, void* __xlx_apatb_param_B_4_2, void* __xlx_apatb_param_B_4_3, void* __xlx_apatb_param_B_4_4, void* __xlx_apatb_param_B_4_5, void* __xlx_apatb_param_B_5_0, void* __xlx_apatb_param_B_5_1, void* __xlx_apatb_param_B_5_2, void* __xlx_apatb_param_B_5_3, void* __xlx_apatb_param_B_5_4, void* __xlx_apatb_param_B_5_5, void* __xlx_apatb_param_C_0_0, void* __xlx_apatb_param_C_0_1, void* __xlx_apatb_param_C_0_2, void* __xlx_apatb_param_C_0_3, void* __xlx_apatb_param_C_0_4, void* __xlx_apatb_param_C_0_5, void* __xlx_apatb_param_C_1_0, void* __xlx_apatb_param_C_1_1, void* __xlx_apatb_param_C_1_2, void* __xlx_apatb_param_C_1_3, void* __xlx_apatb_param_C_1_4, void* __xlx_apatb_param_C_1_5, void* __xlx_apatb_param_C_2_0, void* __xlx_apatb_param_C_2_1, void* __xlx_apatb_param_C_2_2, void* __xlx_apatb_param_C_2_3, void* __xlx_apatb_param_C_2_4, void* __xlx_apatb_param_C_2_5, void* __xlx_apatb_param_C_3_0, void* __xlx_apatb_param_C_3_1, void* __xlx_apatb_param_C_3_2, void* __xlx_apatb_param_C_3_3, void* __xlx_apatb_param_C_3_4, void* __xlx_apatb_param_C_3_5, void* __xlx_apatb_param_C_4_0, void* __xlx_apatb_param_C_4_1, void* __xlx_apatb_param_C_4_2, void* __xlx_apatb_param_C_4_3, void* __xlx_apatb_param_C_4_4, void* __xlx_apatb_param_C_4_5, void* __xlx_apatb_param_C_5_0, void* __xlx_apatb_param_C_5_1, void* __xlx_apatb_param_C_5_2, void* __xlx_apatb_param_C_5_3, void* __xlx_apatb_param_C_5_4, void* __xlx_apatb_param_C_5_5)
{
  static hls::sim::Register port0 {
    .name = "A_0_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0_0),
#endif
  };
  port0.param = __xlx_apatb_param_A_0_0;

  static hls::sim::Register port1 {
    .name = "A_0_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0_1),
#endif
  };
  port1.param = __xlx_apatb_param_A_0_1;

  static hls::sim::Register port2 {
    .name = "A_0_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0_2),
#endif
  };
  port2.param = __xlx_apatb_param_A_0_2;

  static hls::sim::Register port3 {
    .name = "A_0_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0_3),
#endif
  };
  port3.param = __xlx_apatb_param_A_0_3;

  static hls::sim::Register port4 {
    .name = "A_0_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0_4),
#endif
  };
  port4.param = __xlx_apatb_param_A_0_4;

  static hls::sim::Register port5 {
    .name = "A_0_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0_5),
#endif
  };
  port5.param = __xlx_apatb_param_A_0_5;

  static hls::sim::Register port6 {
    .name = "A_1_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1_0),
#endif
  };
  port6.param = __xlx_apatb_param_A_1_0;

  static hls::sim::Register port7 {
    .name = "A_1_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1_1),
#endif
  };
  port7.param = __xlx_apatb_param_A_1_1;

  static hls::sim::Register port8 {
    .name = "A_1_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1_2),
#endif
  };
  port8.param = __xlx_apatb_param_A_1_2;

  static hls::sim::Register port9 {
    .name = "A_1_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1_3),
#endif
  };
  port9.param = __xlx_apatb_param_A_1_3;

  static hls::sim::Register port10 {
    .name = "A_1_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1_4),
#endif
  };
  port10.param = __xlx_apatb_param_A_1_4;

  static hls::sim::Register port11 {
    .name = "A_1_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1_5),
#endif
  };
  port11.param = __xlx_apatb_param_A_1_5;

  static hls::sim::Register port12 {
    .name = "A_2_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2_0),
#endif
  };
  port12.param = __xlx_apatb_param_A_2_0;

  static hls::sim::Register port13 {
    .name = "A_2_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2_1),
#endif
  };
  port13.param = __xlx_apatb_param_A_2_1;

  static hls::sim::Register port14 {
    .name = "A_2_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2_2),
#endif
  };
  port14.param = __xlx_apatb_param_A_2_2;

  static hls::sim::Register port15 {
    .name = "A_2_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2_3),
#endif
  };
  port15.param = __xlx_apatb_param_A_2_3;

  static hls::sim::Register port16 {
    .name = "A_2_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2_4),
#endif
  };
  port16.param = __xlx_apatb_param_A_2_4;

  static hls::sim::Register port17 {
    .name = "A_2_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2_5),
#endif
  };
  port17.param = __xlx_apatb_param_A_2_5;

  static hls::sim::Register port18 {
    .name = "A_3_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3_0),
#endif
  };
  port18.param = __xlx_apatb_param_A_3_0;

  static hls::sim::Register port19 {
    .name = "A_3_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3_1),
#endif
  };
  port19.param = __xlx_apatb_param_A_3_1;

  static hls::sim::Register port20 {
    .name = "A_3_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3_2),
#endif
  };
  port20.param = __xlx_apatb_param_A_3_2;

  static hls::sim::Register port21 {
    .name = "A_3_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3_3),
#endif
  };
  port21.param = __xlx_apatb_param_A_3_3;

  static hls::sim::Register port22 {
    .name = "A_3_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3_4),
#endif
  };
  port22.param = __xlx_apatb_param_A_3_4;

  static hls::sim::Register port23 {
    .name = "A_3_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3_5),
#endif
  };
  port23.param = __xlx_apatb_param_A_3_5;

  static hls::sim::Register port24 {
    .name = "A_4_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4_0),
#endif
  };
  port24.param = __xlx_apatb_param_A_4_0;

  static hls::sim::Register port25 {
    .name = "A_4_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4_1),
#endif
  };
  port25.param = __xlx_apatb_param_A_4_1;

  static hls::sim::Register port26 {
    .name = "A_4_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4_2),
#endif
  };
  port26.param = __xlx_apatb_param_A_4_2;

  static hls::sim::Register port27 {
    .name = "A_4_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4_3),
#endif
  };
  port27.param = __xlx_apatb_param_A_4_3;

  static hls::sim::Register port28 {
    .name = "A_4_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4_4),
#endif
  };
  port28.param = __xlx_apatb_param_A_4_4;

  static hls::sim::Register port29 {
    .name = "A_4_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4_5),
#endif
  };
  port29.param = __xlx_apatb_param_A_4_5;

  static hls::sim::Register port30 {
    .name = "A_5_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5_0),
#endif
  };
  port30.param = __xlx_apatb_param_A_5_0;

  static hls::sim::Register port31 {
    .name = "A_5_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5_1),
#endif
  };
  port31.param = __xlx_apatb_param_A_5_1;

  static hls::sim::Register port32 {
    .name = "A_5_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5_2),
#endif
  };
  port32.param = __xlx_apatb_param_A_5_2;

  static hls::sim::Register port33 {
    .name = "A_5_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5_3),
#endif
  };
  port33.param = __xlx_apatb_param_A_5_3;

  static hls::sim::Register port34 {
    .name = "A_5_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5_4),
#endif
  };
  port34.param = __xlx_apatb_param_A_5_4;

  static hls::sim::Register port35 {
    .name = "A_5_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5_5),
#endif
  };
  port35.param = __xlx_apatb_param_A_5_5;

  static hls::sim::Register port36 {
    .name = "B_0_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_0),
#endif
  };
  port36.param = __xlx_apatb_param_B_0_0;

  static hls::sim::Register port37 {
    .name = "B_0_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_1),
#endif
  };
  port37.param = __xlx_apatb_param_B_0_1;

  static hls::sim::Register port38 {
    .name = "B_0_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_2),
#endif
  };
  port38.param = __xlx_apatb_param_B_0_2;

  static hls::sim::Register port39 {
    .name = "B_0_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_3),
#endif
  };
  port39.param = __xlx_apatb_param_B_0_3;

  static hls::sim::Register port40 {
    .name = "B_0_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_4),
#endif
  };
  port40.param = __xlx_apatb_param_B_0_4;

  static hls::sim::Register port41 {
    .name = "B_0_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_0_5),
#endif
  };
  port41.param = __xlx_apatb_param_B_0_5;

  static hls::sim::Register port42 {
    .name = "B_1_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_0),
#endif
  };
  port42.param = __xlx_apatb_param_B_1_0;

  static hls::sim::Register port43 {
    .name = "B_1_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_1),
#endif
  };
  port43.param = __xlx_apatb_param_B_1_1;

  static hls::sim::Register port44 {
    .name = "B_1_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_2),
#endif
  };
  port44.param = __xlx_apatb_param_B_1_2;

  static hls::sim::Register port45 {
    .name = "B_1_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_3),
#endif
  };
  port45.param = __xlx_apatb_param_B_1_3;

  static hls::sim::Register port46 {
    .name = "B_1_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_4),
#endif
  };
  port46.param = __xlx_apatb_param_B_1_4;

  static hls::sim::Register port47 {
    .name = "B_1_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_1_5),
#endif
  };
  port47.param = __xlx_apatb_param_B_1_5;

  static hls::sim::Register port48 {
    .name = "B_2_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_0),
#endif
  };
  port48.param = __xlx_apatb_param_B_2_0;

  static hls::sim::Register port49 {
    .name = "B_2_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_1),
#endif
  };
  port49.param = __xlx_apatb_param_B_2_1;

  static hls::sim::Register port50 {
    .name = "B_2_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_2),
#endif
  };
  port50.param = __xlx_apatb_param_B_2_2;

  static hls::sim::Register port51 {
    .name = "B_2_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_3),
#endif
  };
  port51.param = __xlx_apatb_param_B_2_3;

  static hls::sim::Register port52 {
    .name = "B_2_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_4),
#endif
  };
  port52.param = __xlx_apatb_param_B_2_4;

  static hls::sim::Register port53 {
    .name = "B_2_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_2_5),
#endif
  };
  port53.param = __xlx_apatb_param_B_2_5;

  static hls::sim::Register port54 {
    .name = "B_3_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_0),
#endif
  };
  port54.param = __xlx_apatb_param_B_3_0;

  static hls::sim::Register port55 {
    .name = "B_3_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_1),
#endif
  };
  port55.param = __xlx_apatb_param_B_3_1;

  static hls::sim::Register port56 {
    .name = "B_3_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_2),
#endif
  };
  port56.param = __xlx_apatb_param_B_3_2;

  static hls::sim::Register port57 {
    .name = "B_3_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_3),
#endif
  };
  port57.param = __xlx_apatb_param_B_3_3;

  static hls::sim::Register port58 {
    .name = "B_3_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_4),
#endif
  };
  port58.param = __xlx_apatb_param_B_3_4;

  static hls::sim::Register port59 {
    .name = "B_3_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_3_5),
#endif
  };
  port59.param = __xlx_apatb_param_B_3_5;

  static hls::sim::Register port60 {
    .name = "B_4_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_0),
#endif
  };
  port60.param = __xlx_apatb_param_B_4_0;

  static hls::sim::Register port61 {
    .name = "B_4_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_1),
#endif
  };
  port61.param = __xlx_apatb_param_B_4_1;

  static hls::sim::Register port62 {
    .name = "B_4_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_2),
#endif
  };
  port62.param = __xlx_apatb_param_B_4_2;

  static hls::sim::Register port63 {
    .name = "B_4_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_3),
#endif
  };
  port63.param = __xlx_apatb_param_B_4_3;

  static hls::sim::Register port64 {
    .name = "B_4_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_4),
#endif
  };
  port64.param = __xlx_apatb_param_B_4_4;

  static hls::sim::Register port65 {
    .name = "B_4_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_4_5),
#endif
  };
  port65.param = __xlx_apatb_param_B_4_5;

  static hls::sim::Register port66 {
    .name = "B_5_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_0),
#endif
  };
  port66.param = __xlx_apatb_param_B_5_0;

  static hls::sim::Register port67 {
    .name = "B_5_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_1),
#endif
  };
  port67.param = __xlx_apatb_param_B_5_1;

  static hls::sim::Register port68 {
    .name = "B_5_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_2),
#endif
  };
  port68.param = __xlx_apatb_param_B_5_2;

  static hls::sim::Register port69 {
    .name = "B_5_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_3),
#endif
  };
  port69.param = __xlx_apatb_param_B_5_3;

  static hls::sim::Register port70 {
    .name = "B_5_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_4),
#endif
  };
  port70.param = __xlx_apatb_param_B_5_4;

  static hls::sim::Register port71 {
    .name = "B_5_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_5_5),
#endif
  };
  port71.param = __xlx_apatb_param_B_5_5;

  static hls::sim::Register port72 {
    .name = "C_0_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_0_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_0_0),
#endif
  };
  port72.param = __xlx_apatb_param_C_0_0;

  static hls::sim::Register port73 {
    .name = "C_0_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_0_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_0_1),
#endif
  };
  port73.param = __xlx_apatb_param_C_0_1;

  static hls::sim::Register port74 {
    .name = "C_0_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_0_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_0_2),
#endif
  };
  port74.param = __xlx_apatb_param_C_0_2;

  static hls::sim::Register port75 {
    .name = "C_0_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_0_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_0_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_0_3),
#endif
  };
  port75.param = __xlx_apatb_param_C_0_3;

  static hls::sim::Register port76 {
    .name = "C_0_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_0_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_0_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_0_4),
#endif
  };
  port76.param = __xlx_apatb_param_C_0_4;

  static hls::sim::Register port77 {
    .name = "C_0_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_0_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_0_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_0_5),
#endif
  };
  port77.param = __xlx_apatb_param_C_0_5;

  static hls::sim::Register port78 {
    .name = "C_1_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_1_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_1_0),
#endif
  };
  port78.param = __xlx_apatb_param_C_1_0;

  static hls::sim::Register port79 {
    .name = "C_1_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_1_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_1_1),
#endif
  };
  port79.param = __xlx_apatb_param_C_1_1;

  static hls::sim::Register port80 {
    .name = "C_1_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_1_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_1_2),
#endif
  };
  port80.param = __xlx_apatb_param_C_1_2;

  static hls::sim::Register port81 {
    .name = "C_1_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_1_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_1_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_1_3),
#endif
  };
  port81.param = __xlx_apatb_param_C_1_3;

  static hls::sim::Register port82 {
    .name = "C_1_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_1_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_1_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_1_4),
#endif
  };
  port82.param = __xlx_apatb_param_C_1_4;

  static hls::sim::Register port83 {
    .name = "C_1_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_1_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_1_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_1_5),
#endif
  };
  port83.param = __xlx_apatb_param_C_1_5;

  static hls::sim::Register port84 {
    .name = "C_2_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_2_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_2_0),
#endif
  };
  port84.param = __xlx_apatb_param_C_2_0;

  static hls::sim::Register port85 {
    .name = "C_2_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_2_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_2_1),
#endif
  };
  port85.param = __xlx_apatb_param_C_2_1;

  static hls::sim::Register port86 {
    .name = "C_2_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_2_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_2_2),
#endif
  };
  port86.param = __xlx_apatb_param_C_2_2;

  static hls::sim::Register port87 {
    .name = "C_2_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_2_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_2_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_2_3),
#endif
  };
  port87.param = __xlx_apatb_param_C_2_3;

  static hls::sim::Register port88 {
    .name = "C_2_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_2_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_2_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_2_4),
#endif
  };
  port88.param = __xlx_apatb_param_C_2_4;

  static hls::sim::Register port89 {
    .name = "C_2_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_2_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_2_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_2_5),
#endif
  };
  port89.param = __xlx_apatb_param_C_2_5;

  static hls::sim::Register port90 {
    .name = "C_3_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_3_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_3_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_3_0),
#endif
  };
  port90.param = __xlx_apatb_param_C_3_0;

  static hls::sim::Register port91 {
    .name = "C_3_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_3_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_3_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_3_1),
#endif
  };
  port91.param = __xlx_apatb_param_C_3_1;

  static hls::sim::Register port92 {
    .name = "C_3_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_3_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_3_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_3_2),
#endif
  };
  port92.param = __xlx_apatb_param_C_3_2;

  static hls::sim::Register port93 {
    .name = "C_3_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_3_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_3_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_3_3),
#endif
  };
  port93.param = __xlx_apatb_param_C_3_3;

  static hls::sim::Register port94 {
    .name = "C_3_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_3_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_3_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_3_4),
#endif
  };
  port94.param = __xlx_apatb_param_C_3_4;

  static hls::sim::Register port95 {
    .name = "C_3_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_3_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_3_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_3_5),
#endif
  };
  port95.param = __xlx_apatb_param_C_3_5;

  static hls::sim::Register port96 {
    .name = "C_4_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_4_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_4_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_4_0),
#endif
  };
  port96.param = __xlx_apatb_param_C_4_0;

  static hls::sim::Register port97 {
    .name = "C_4_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_4_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_4_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_4_1),
#endif
  };
  port97.param = __xlx_apatb_param_C_4_1;

  static hls::sim::Register port98 {
    .name = "C_4_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_4_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_4_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_4_2),
#endif
  };
  port98.param = __xlx_apatb_param_C_4_2;

  static hls::sim::Register port99 {
    .name = "C_4_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_4_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_4_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_4_3),
#endif
  };
  port99.param = __xlx_apatb_param_C_4_3;

  static hls::sim::Register port100 {
    .name = "C_4_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_4_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_4_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_4_4),
#endif
  };
  port100.param = __xlx_apatb_param_C_4_4;

  static hls::sim::Register port101 {
    .name = "C_4_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_4_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_4_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_4_5),
#endif
  };
  port101.param = __xlx_apatb_param_C_4_5;

  static hls::sim::Register port102 {
    .name = "C_5_0",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_5_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_5_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_5_0),
#endif
  };
  port102.param = __xlx_apatb_param_C_5_0;

  static hls::sim::Register port103 {
    .name = "C_5_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_5_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_5_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_5_1),
#endif
  };
  port103.param = __xlx_apatb_param_C_5_1;

  static hls::sim::Register port104 {
    .name = "C_5_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_5_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_5_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_5_2),
#endif
  };
  port104.param = __xlx_apatb_param_C_5_2;

  static hls::sim::Register port105 {
    .name = "C_5_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_5_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_5_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_5_3),
#endif
  };
  port105.param = __xlx_apatb_param_C_5_3;

  static hls::sim::Register port106 {
    .name = "C_5_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_5_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_5_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_5_4),
#endif
  };
  port106.param = __xlx_apatb_param_C_5_4;

  static hls::sim::Register port107 {
    .name = "C_5_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_C_5_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_C_5_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_5_5),
#endif
  };
  port107.param = __xlx_apatb_param_C_5_5;

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port72);
    check(port73);
    check(port74);
    check(port75);
    check(port76);
    check(port77);
    check(port78);
    check(port79);
    check(port80);
    check(port81);
    check(port82);
    check(port83);
    check(port84);
    check(port85);
    check(port86);
    check(port87);
    check(port88);
    check(port89);
    check(port90);
    check(port91);
    check(port92);
    check(port93);
    check(port94);
    check(port95);
    check(port96);
    check(port97);
    check(port98);
    check(port99);
    check(port100);
    check(port101);
    check(port102);
    check(port103);
    check(port104);
    check(port105);
    check(port106);
    check(port107);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    dump(port82, port82.iwriter, tcl.AESL_transaction);
    dump(port83, port83.iwriter, tcl.AESL_transaction);
    dump(port84, port84.iwriter, tcl.AESL_transaction);
    dump(port85, port85.iwriter, tcl.AESL_transaction);
    dump(port86, port86.iwriter, tcl.AESL_transaction);
    dump(port87, port87.iwriter, tcl.AESL_transaction);
    dump(port88, port88.iwriter, tcl.AESL_transaction);
    dump(port89, port89.iwriter, tcl.AESL_transaction);
    dump(port90, port90.iwriter, tcl.AESL_transaction);
    dump(port91, port91.iwriter, tcl.AESL_transaction);
    dump(port92, port92.iwriter, tcl.AESL_transaction);
    dump(port93, port93.iwriter, tcl.AESL_transaction);
    dump(port94, port94.iwriter, tcl.AESL_transaction);
    dump(port95, port95.iwriter, tcl.AESL_transaction);
    dump(port96, port96.iwriter, tcl.AESL_transaction);
    dump(port97, port97.iwriter, tcl.AESL_transaction);
    dump(port98, port98.iwriter, tcl.AESL_transaction);
    dump(port99, port99.iwriter, tcl.AESL_transaction);
    dump(port100, port100.iwriter, tcl.AESL_transaction);
    dump(port101, port101.iwriter, tcl.AESL_transaction);
    dump(port102, port102.iwriter, tcl.AESL_transaction);
    dump(port103, port103.iwriter, tcl.AESL_transaction);
    dump(port104, port104.iwriter, tcl.AESL_transaction);
    dump(port105, port105.iwriter, tcl.AESL_transaction);
    dump(port106, port106.iwriter, tcl.AESL_transaction);
    dump(port107, port107.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port81.doTCL(tcl);
    port82.doTCL(tcl);
    port83.doTCL(tcl);
    port84.doTCL(tcl);
    port85.doTCL(tcl);
    port86.doTCL(tcl);
    port87.doTCL(tcl);
    port88.doTCL(tcl);
    port89.doTCL(tcl);
    port90.doTCL(tcl);
    port91.doTCL(tcl);
    port92.doTCL(tcl);
    port93.doTCL(tcl);
    port94.doTCL(tcl);
    port95.doTCL(tcl);
    port96.doTCL(tcl);
    port97.doTCL(tcl);
    port98.doTCL(tcl);
    port99.doTCL(tcl);
    port100.doTCL(tcl);
    port101.doTCL(tcl);
    port102.doTCL(tcl);
    port103.doTCL(tcl);
    port104.doTCL(tcl);
    port105.doTCL(tcl);
    port106.doTCL(tcl);
    port107.doTCL(tcl);
    CodeState = CALL_C_DUT;
    matrix_mult_partition_both_dims_hw_stub_wrapper(__xlx_apatb_param_A_0_0, __xlx_apatb_param_A_0_1, __xlx_apatb_param_A_0_2, __xlx_apatb_param_A_0_3, __xlx_apatb_param_A_0_4, __xlx_apatb_param_A_0_5, __xlx_apatb_param_A_1_0, __xlx_apatb_param_A_1_1, __xlx_apatb_param_A_1_2, __xlx_apatb_param_A_1_3, __xlx_apatb_param_A_1_4, __xlx_apatb_param_A_1_5, __xlx_apatb_param_A_2_0, __xlx_apatb_param_A_2_1, __xlx_apatb_param_A_2_2, __xlx_apatb_param_A_2_3, __xlx_apatb_param_A_2_4, __xlx_apatb_param_A_2_5, __xlx_apatb_param_A_3_0, __xlx_apatb_param_A_3_1, __xlx_apatb_param_A_3_2, __xlx_apatb_param_A_3_3, __xlx_apatb_param_A_3_4, __xlx_apatb_param_A_3_5, __xlx_apatb_param_A_4_0, __xlx_apatb_param_A_4_1, __xlx_apatb_param_A_4_2, __xlx_apatb_param_A_4_3, __xlx_apatb_param_A_4_4, __xlx_apatb_param_A_4_5, __xlx_apatb_param_A_5_0, __xlx_apatb_param_A_5_1, __xlx_apatb_param_A_5_2, __xlx_apatb_param_A_5_3, __xlx_apatb_param_A_5_4, __xlx_apatb_param_A_5_5, __xlx_apatb_param_B_0_0, __xlx_apatb_param_B_0_1, __xlx_apatb_param_B_0_2, __xlx_apatb_param_B_0_3, __xlx_apatb_param_B_0_4, __xlx_apatb_param_B_0_5, __xlx_apatb_param_B_1_0, __xlx_apatb_param_B_1_1, __xlx_apatb_param_B_1_2, __xlx_apatb_param_B_1_3, __xlx_apatb_param_B_1_4, __xlx_apatb_param_B_1_5, __xlx_apatb_param_B_2_0, __xlx_apatb_param_B_2_1, __xlx_apatb_param_B_2_2, __xlx_apatb_param_B_2_3, __xlx_apatb_param_B_2_4, __xlx_apatb_param_B_2_5, __xlx_apatb_param_B_3_0, __xlx_apatb_param_B_3_1, __xlx_apatb_param_B_3_2, __xlx_apatb_param_B_3_3, __xlx_apatb_param_B_3_4, __xlx_apatb_param_B_3_5, __xlx_apatb_param_B_4_0, __xlx_apatb_param_B_4_1, __xlx_apatb_param_B_4_2, __xlx_apatb_param_B_4_3, __xlx_apatb_param_B_4_4, __xlx_apatb_param_B_4_5, __xlx_apatb_param_B_5_0, __xlx_apatb_param_B_5_1, __xlx_apatb_param_B_5_2, __xlx_apatb_param_B_5_3, __xlx_apatb_param_B_5_4, __xlx_apatb_param_B_5_5, __xlx_apatb_param_C_0_0, __xlx_apatb_param_C_0_1, __xlx_apatb_param_C_0_2, __xlx_apatb_param_C_0_3, __xlx_apatb_param_C_0_4, __xlx_apatb_param_C_0_5, __xlx_apatb_param_C_1_0, __xlx_apatb_param_C_1_1, __xlx_apatb_param_C_1_2, __xlx_apatb_param_C_1_3, __xlx_apatb_param_C_1_4, __xlx_apatb_param_C_1_5, __xlx_apatb_param_C_2_0, __xlx_apatb_param_C_2_1, __xlx_apatb_param_C_2_2, __xlx_apatb_param_C_2_3, __xlx_apatb_param_C_2_4, __xlx_apatb_param_C_2_5, __xlx_apatb_param_C_3_0, __xlx_apatb_param_C_3_1, __xlx_apatb_param_C_3_2, __xlx_apatb_param_C_3_3, __xlx_apatb_param_C_3_4, __xlx_apatb_param_C_3_5, __xlx_apatb_param_C_4_0, __xlx_apatb_param_C_4_1, __xlx_apatb_param_C_4_2, __xlx_apatb_param_C_4_3, __xlx_apatb_param_C_4_4, __xlx_apatb_param_C_4_5, __xlx_apatb_param_C_5_0, __xlx_apatb_param_C_5_1, __xlx_apatb_param_C_5_2, __xlx_apatb_param_C_5_3, __xlx_apatb_param_C_5_4, __xlx_apatb_param_C_5_5);
    CodeState = DUMP_OUTPUTS;
    dump(port72, port72.owriter, tcl.AESL_transaction);
    dump(port73, port73.owriter, tcl.AESL_transaction);
    dump(port74, port74.owriter, tcl.AESL_transaction);
    dump(port75, port75.owriter, tcl.AESL_transaction);
    dump(port76, port76.owriter, tcl.AESL_transaction);
    dump(port77, port77.owriter, tcl.AESL_transaction);
    dump(port78, port78.owriter, tcl.AESL_transaction);
    dump(port79, port79.owriter, tcl.AESL_transaction);
    dump(port80, port80.owriter, tcl.AESL_transaction);
    dump(port81, port81.owriter, tcl.AESL_transaction);
    dump(port82, port82.owriter, tcl.AESL_transaction);
    dump(port83, port83.owriter, tcl.AESL_transaction);
    dump(port84, port84.owriter, tcl.AESL_transaction);
    dump(port85, port85.owriter, tcl.AESL_transaction);
    dump(port86, port86.owriter, tcl.AESL_transaction);
    dump(port87, port87.owriter, tcl.AESL_transaction);
    dump(port88, port88.owriter, tcl.AESL_transaction);
    dump(port89, port89.owriter, tcl.AESL_transaction);
    dump(port90, port90.owriter, tcl.AESL_transaction);
    dump(port91, port91.owriter, tcl.AESL_transaction);
    dump(port92, port92.owriter, tcl.AESL_transaction);
    dump(port93, port93.owriter, tcl.AESL_transaction);
    dump(port94, port94.owriter, tcl.AESL_transaction);
    dump(port95, port95.owriter, tcl.AESL_transaction);
    dump(port96, port96.owriter, tcl.AESL_transaction);
    dump(port97, port97.owriter, tcl.AESL_transaction);
    dump(port98, port98.owriter, tcl.AESL_transaction);
    dump(port99, port99.owriter, tcl.AESL_transaction);
    dump(port100, port100.owriter, tcl.AESL_transaction);
    dump(port101, port101.owriter, tcl.AESL_transaction);
    dump(port102, port102.owriter, tcl.AESL_transaction);
    dump(port103, port103.owriter, tcl.AESL_transaction);
    dump(port104, port104.owriter, tcl.AESL_transaction);
    dump(port105, port105.owriter, tcl.AESL_transaction);
    dump(port106, port106.owriter, tcl.AESL_transaction);
    dump(port107, port107.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}