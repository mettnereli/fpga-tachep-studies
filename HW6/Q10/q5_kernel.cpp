#include "q5_kernel.h"

void q5_simple(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
) {
    for (int i = 0; i < N; i++) {
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}


void q5_unroll(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
) {
    for (int i = 0; i < N; i++) {
#pragma HLS UNROLL
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}

void q5_partition_unroll(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
) {
#pragma HLS ARRAY_PARTITION variable=A complete dim=1
#pragma HLS ARRAY_PARTITION variable=B complete dim=1
#pragma HLS ARRAY_PARTITION variable=C complete dim=1
#pragma HLS ARRAY_PARTITION variable=D complete dim=1
#pragma HLS ARRAY_PARTITION variable=E complete dim=1
    for (int i = 0; i < N; i++) {
#pragma HLS UNROLL
        int sum = A[i] + B[i];
        int diff = A[i] - B[i];

        C[i] = sum;
        D[i] = A[i] * B[i];
        E[i] = sum * diff;
    }
}