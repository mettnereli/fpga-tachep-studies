#include "hw1_ops.h"

void vector_add(int A[N], int B[N], int C[N]) {

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        C[i] = A[i] + B[i];
    }
}

void vector_multiply(int A[N], int B[N], int C[N]) {
    for (int i = 0; i < N; i++) {
        C[i] = A[i] * B[i];
    }
}

void matrix_add(int A[N][N], int B[N][N], int C[N][N]) {

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            C[i][j] = A[i][j] + B[i][j];
        }
    }
}


void matrix_mult(int A[N][N], int B[N][N], int C[N][N]) {

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            C[i][j] = 0;
            for (int k = 0; k < N; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

