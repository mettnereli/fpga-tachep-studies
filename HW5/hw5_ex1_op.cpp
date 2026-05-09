#include "hw5_ex1_op.h"


void read_data(int in_r[N], int out_r[N]) {
#pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        out_r[i] = in_r[i];  // Simple pass-through
    }
}

void compute_blur(int in_c[N], int out_c[N]) {
#pragma HLS INLINE off
    for (int i = 1; i < N - 1; i++) {
#pragma HLS PIPELINE II=1
        out_c[i] = (in_c[i - 1] + in_c[i] + in_c[i + 1]) / 3;  // Box blur operation
    }
}

void write_data(int in_w[N], int out_w[N]) {
#pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        out_w[i] = in_w[i];  // Simple pass-through
    }
}

void hw5_ex1(int A[N], int B[N]) {

#pragma HLS STABLE variable=A

    int temp1[N], temp2[N];

    for (size_t i = 0; i < N; i++) 
      temp2[i]=0;

#pragma HLS ARRAY_PARTITION variable=temp1 cyclic factor=3 dim=1
#pragma HLS ARRAY_PARTITION variable=temp2 complete dim=1


#pragma HLS ALLOCATION instances=add limit=2 operation

#pragma HLS DATAFLOW
    read_data(A, temp1);
    compute_blur(temp1, temp2);
    write_data(temp2, B);
}