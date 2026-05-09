#include "dense_layer.h"

void dense_simple(
    int x[IN_SIZE],
    int w[IN_SIZE][OUT_SIZE],
    int y[OUT_SIZE]
) {
    for (int j = 0; j < OUT_SIZE; j++) {
        int sum = 0;

        for (int i = 0; i < IN_SIZE; i++) {
            sum += x[i] * w[i][j];
        }

        y[j] = sum;
    }
}

void dense_optimized(
    int x[IN_SIZE],
    int w[IN_SIZE][OUT_SIZE],
    int y[OUT_SIZE]
) {
#pragma HLS INTERFACE mode=bram port=x
#pragma HLS INTERFACE mode=bram port=w
#pragma HLS INTERFACE mode=bram port=y

#pragma HLS STABLE variable=w

#pragma HLS ARRAY_PARTITION variable=x cyclic factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=w cyclic factor=4 dim=1

#pragma HLS ALLOCATION instances=mul limit=4 operation

    for (int j = 0; j < OUT_SIZE; j++) {
        int sum = 0;

        for (int i = 0; i < IN_SIZE; i++) {
#pragma HLS PIPELINE II=1
            sum += x[i] * w[i][j];
        }

        y[j] = sum;
    }
}