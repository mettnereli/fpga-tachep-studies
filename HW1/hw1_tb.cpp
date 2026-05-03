#include <iostream>
#include "hw1_ops.h"

using namespace std;

void print_vector(const char name[], int v[N]) {
    cout << name << ": ";
    for (int i = 0; i < N; i++) {
        cout << v[i] << " ";
    }
    cout << endl;
}

void print_matrix(const char name[], int M[N][N]) {
    cout << name << ":" << endl;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            cout << M[i][j] << " ";
        }
        cout << endl;
    }
    cout << endl;
}

int main() {
    int a[N];
    int b[N];
    int c[N];

    int A[N][N];
    int B[N][N];
    int C[N][N];

    for (int i = 0; i < N; i++) {
        a[i] = i + 1;
        b[i] = N - i;
    }

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = i + j;
            B[i][j] = i + j + 1;
        }
    }

    vector_add(a, b, c);
    print_vector("Vector addition result", c);

    vector_multiply(a, b, c);
    print_vector("Vector multiplication result", c);

    matrix_add(A, B, C);
    print_matrix("Matrix addition result", C);

    matrix_multiply(A, B, C);
    print_matrix("Matrix multiplication result", C);

    return 0;
}