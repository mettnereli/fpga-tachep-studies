#include "q5_kernel.h"

void q5_simple(int A[N], int B[N],
               int C[N], int D[N], int E[N]) {
    for (int i = 0; i < N; i++) {
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_interface(int A[N], int B[N],
                  int C[N], int D[N], int E[N]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

    for (int i = 0; i < N; i++) {
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_pipeline(int A[N], int B[N],
                 int C[N], int D[N], int E[N]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_no_partition(int A[N], int B[N],
                     int C[N], int D[N], int E[N]) {
#pragma HLS INTERFACE ap_memory port=A
#pragma HLS INTERFACE ap_memory port=B
#pragma HLS INTERFACE ap_memory port=C
#pragma HLS INTERFACE ap_memory port=D
#pragma HLS INTERFACE ap_memory port=E
#pragma HLS INTERFACE s_axilite port=return

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_complete_partition(int A[N], int B[N],
                           int C[N], int D[N], int E[N]) {
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

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_cyclic_partition(int A[N], int B[N],
                         int C[N], int D[N], int E[N]) {
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

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_block_partition(int A[N], int B[N],
                        int C[N], int D[N], int E[N]) {
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

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_reshape(int A[N], int B[N],
                int C[N], int D[N], int E[N]) {
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

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}