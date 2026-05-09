#ifndef DENSE_LAYER_H
#define DENSE_LAYER_H

#define IN_SIZE 16
#define OUT_SIZE 8

void dense_simple(
    int x[IN_SIZE],
    int w[IN_SIZE][OUT_SIZE],
    int y[OUT_SIZE]
);

void dense_optimized(
    int x[IN_SIZE],
    int w[IN_SIZE][OUT_SIZE],
    int y[OUT_SIZE]
);

#endif