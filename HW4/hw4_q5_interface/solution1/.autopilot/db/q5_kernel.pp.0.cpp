# 1 "q5_kernel.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 376 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/Xilinx/Vitis_HLS/2024.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 105 "/opt/Xilinx/Vitis_HLS/2024.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "q5_kernel.cpp" 2
# 1 "./q5_kernel.h" 1





void q5_simple(int A[64], int B[64],
               int C[64], int D[64], int E[64]);

__attribute__((sdx_kernel("q5_interface", 0))) void q5_interface(int A[64], int B[64],
                  int C[64], int D[64], int E[64]);

void q5_pipeline(int A[64], int B[64],
                 int C[64], int D[64], int E[64]);

void q5_no_partition(int A[64], int B[64],
                     int C[64], int D[64], int E[64]);

void q5_complete_partition(int A[64], int B[64],
                           int C[64], int D[64], int E[64]);

void q5_cyclic_partition(int A[64], int B[64],
                         int C[64], int D[64], int E[64]);

void q5_block_partition(int A[64], int B[64],
                        int C[64], int D[64], int E[64]);

void q5_reshape(int A[64], int B[64],
                int C[64], int D[64], int E[64]);
# 2 "q5_kernel.cpp" 2

void q5_simple(int A[64], int B[64],
               int C[64], int D[64], int E[64]) {
    VITIS_LOOP_5_1: for (int i = 0; i < 64; i++) {
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

__attribute__((sdx_kernel("q5_interface", 0))) void q5_interface(int A[64], int B[64],
                  int C[64], int D[64], int E[64]) {
#line 14 "/scratch/emettner/fpga-tachep-studies/HW4/run_q5.tcl"
#pragma HLSDIRECTIVE TOP name=q5_interface
# 16 "q5_kernel.cpp"

#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

 VITIS_LOOP_24_1: for (int i = 0; i < 64; i++) {
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_pipeline(int A[64], int B[64],
                 int C[64], int D[64], int E[64]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

 VITIS_LOOP_43_1: for (int i = 0; i < 64; i++) {
#pragma HLS PIPELINE II=1
 int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_no_partition(int A[64], int B[64],
                     int C[64], int D[64], int E[64]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

 VITIS_LOOP_63_1: for (int i = 0; i < 64; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
 int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_complete_partition(int A[64], int B[64],
                           int C[64], int D[64], int E[64]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=A complete dim=1
#pragma HLS ARRAY_PARTITION variable=B complete dim=1
#pragma HLS ARRAY_PARTITION variable=C complete dim=1
#pragma HLS ARRAY_PARTITION variable=D complete dim=1
#pragma HLS ARRAY_PARTITION variable=E complete dim=1

 VITIS_LOOP_90_1: for (int i = 0; i < 64; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
 int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_cyclic_partition(int A[64], int B[64],
                         int C[64], int D[64], int E[64]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=A cyclic factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=D cyclic factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=E cyclic factor=4 dim=1

 VITIS_LOOP_117_1: for (int i = 0; i < 64; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
 int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_block_partition(int A[64], int B[64],
                        int C[64], int D[64], int E[64]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=A block factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=B block factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=C block factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=D block factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=E block factor=4 dim=1

 VITIS_LOOP_144_1: for (int i = 0; i < 64; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
 int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_reshape(int A[64], int B[64],
                int C[64], int D[64], int E[64]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_RESHAPE variable=A cyclic factor=4 dim=1
#pragma HLS ARRAY_RESHAPE variable=B cyclic factor=4 dim=1
#pragma HLS ARRAY_RESHAPE variable=C cyclic factor=4 dim=1
#pragma HLS ARRAY_RESHAPE variable=D cyclic factor=4 dim=1
#pragma HLS ARRAY_RESHAPE variable=E cyclic factor=4 dim=1

 VITIS_LOOP_171_1: for (int i = 0; i < 64; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
 int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}
