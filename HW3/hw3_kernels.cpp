#include "hw3_kernels.h"

void vector_mult_bram(int a[VEC_N], int b[VEC_N], int c[VEC_N]) {
#pragma HLS INTERFACE mode=bram port=a
#pragma HLS INTERFACE mode=bram port=b
#pragma HLS INTERFACE mode=bram port=c

    for (int i = 0; i < VEC_N; i++) {
        c[i] = a[i] * b[i];
    }
}

void vector_mult_partition(int a[VEC_N], int b[VEC_N], int c[VEC_N]) {
#pragma HLS INTERFACE mode=bram port=a
#pragma HLS INTERFACE mode=bram port=b
#pragma HLS INTERFACE mode=bram port=c

#pragma HLS ARRAY_PARTITION variable=a complete dim=1
#pragma HLS ARRAY_PARTITION variable=b complete dim=1
#pragma HLS ARRAY_PARTITION variable=c complete dim=1

    for (int i = 0; i < VEC_N; i++) {
#pragma HLS UNROLL
        c[i] = a[i] * b[i];
    }
}

void matrix_mult_bram(
    int A[MAT_N][MAT_N],
    int B[MAT_N][MAT_N],
    int C[MAT_N][MAT_N]
) {
#pragma HLS INTERFACE mode=bram port=A
#pragma HLS INTERFACE mode=bram port=B
#pragma HLS INTERFACE mode=bram port=C

    for (int i = 0; i < MAT_N; i++) {
        for (int j = 0; j < MAT_N; j++) {
            int sum = 0;

            for (int k = 0; k < MAT_N; k++) {
                sum += A[i][k] * B[k][j];
            }

            C[i][j] = sum;
        }
    }
}

void matrix_mult_partition_one_dim(
    int A[MAT_N][MAT_N],
    int B[MAT_N][MAT_N],
    int C[MAT_N][MAT_N]
) {
#pragma HLS INTERFACE mode=bram port=A
#pragma HLS INTERFACE mode=bram port=B
#pragma HLS INTERFACE mode=bram port=C

#pragma HLS ARRAY_PARTITION variable=A complete dim=2
#pragma HLS ARRAY_PARTITION variable=B complete dim=1

    for (int i = 0; i < MAT_N; i++) {
        for (int j = 0; j < MAT_N; j++) {
            int sum = 0;

            for (int k = 0; k < MAT_N; k++) {
#pragma HLS UNROLL
                sum += A[i][k] * B[k][j];
            }

            C[i][j] = sum;
        }
    }
}

void matrix_mult_partition_both_dims(
    int A[MAT_N][MAT_N],
    int B[MAT_N][MAT_N],
    int C[MAT_N][MAT_N]
) {
#pragma HLS INTERFACE mode=bram port=A
#pragma HLS INTERFACE mode=bram port=B
#pragma HLS INTERFACE mode=bram port=C

#pragma HLS ARRAY_PARTITION variable=A complete dim=0
#pragma HLS ARRAY_PARTITION variable=B complete dim=0
#pragma HLS ARRAY_PARTITION variable=C complete dim=0

    for (int i = 0; i < MAT_N; i++) {
        for (int j = 0; j < MAT_N; j++) {
            int sum = 0;

            for (int k = 0; k < MAT_N; k++) {
#pragma HLS UNROLL
                sum += A[i][k] * B[k][j];
            }

            C[i][j] = sum;
        }
    }
}