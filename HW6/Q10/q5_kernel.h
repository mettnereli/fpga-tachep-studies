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

void q5_unroll(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);

void q5_partition_unroll(
    int A[N],
    int B[N],
    int C[N],
    int D[N],
    int E[N]
);



#endif