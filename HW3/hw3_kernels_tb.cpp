#include <iostream>
#include "hw3_kernels.h"

using namespace std;

void print_vector(const char name[], int v[VEC_N]) {
    cout << name << ":" << endl;

    for (int i = 0; i < VEC_N; i++) {
        cout << v[i] << " ";
    }

    cout << endl << endl;
}

void print_matrix(const char name[], int M[MAT_N][MAT_N]) {
    cout << name << ":" << endl;

    for (int i = 0; i < MAT_N; i++) {
        for (int j = 0; j < MAT_N; j++) {
            cout << M[i][j] << " ";
        }
        cout << endl;
    }

    cout << endl;
}

int main() {
    int a[VEC_N];
    int b[VEC_N];
    int c[VEC_N];

    int A[MAT_N][MAT_N];
    int B[MAT_N][MAT_N];
    int C[MAT_N][MAT_N];

    for (int i = 0; i < VEC_N; i++) {
        a[i] = i + 1;
        b[i] = 2;
    }

    for (int i = 0; i < MAT_N; i++) {
        for (int j = 0; j < MAT_N; j++) {
            A[i][j] = i + j;
            B[i][j] = i + j + 1;
        }
    }

    vector_mult_bram(a, b, c);
    print_vector("Vector multiplication with BRAM interface", c);

    vector_mult_partition(a, b, c);
    print_vector("Vector multiplication with partitioning", c);

    matrix_mult_bram(A, B, C);
    print_matrix("Matrix multiplication with BRAM interface", C);

    matrix_mult_partition_one_dim(A, B, C);
    print_matrix("Matrix multiplication with one-dimension partitioning", C);

    matrix_mult_partition_both_dims(A, B, C);
    print_matrix("Matrix multiplication with both-dimension partitioning", C);

    return 0;
}
