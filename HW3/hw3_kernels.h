#ifndef HW3_H
#define HW3_H

#define VEC_N 16
#define MAT_N 6

void vector_mult_bram(int a[VEC_N], int b[VEC_N], int c[VEC_N]);

void vector_mult_partition(int a[VEC_N], int b[VEC_N], int c[VEC_N]);

void matrix_mult_bram(
    int A[MAT_N][MAT_N],
    int B[MAT_N][MAT_N],
    int C[MAT_N][MAT_N]
);

void matrix_mult_partition_one_dim(
    int A[MAT_N][MAT_N],
    int B[MAT_N][MAT_N],
    int C[MAT_N][MAT_N]
);

void matrix_mult_partition_both_dims(
    int A[MAT_N][MAT_N],
    int B[MAT_N][MAT_N],
    int C[MAT_N][MAT_N]
);

#endif