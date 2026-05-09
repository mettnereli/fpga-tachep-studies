#ifndef Q5_KERNEL_H
#define Q5_KERNEL_H

#define N 64

void q5_simple(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_bram_interface(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_pipeline(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_complete_partition(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_cyclic_partition(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_block_partition(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_reshape(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

#endif