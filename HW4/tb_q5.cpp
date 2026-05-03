#include <iostream>
#include "q5_kernel.h"

using namespace std;

void print_result(const char name[], int X[N]) {
    cout << name << ":" << endl;

    for (int i = 0; i < N; i++) {
        cout << X[i] << " ";
    }

    cout << endl << endl;
}

int main() {
    int A[N];
    int B[N];
    int C[N];
    int D[N];
    int E[N];

    for (int i = 0; i < N; i++) {
        A[i] = i + 1;
        B[i] = 2;
    }

    q5_simple(A, B, C, D, E);
    q5_interface(A, B, C, D, E);
    q5_pipeline(A, B, C, D, E);
    q5_no_partition(A, B, C, D, E);
    q5_complete_partition(A, B, C, D, E);
    q5_cyclic_partition(A, B, C, D, E);
    q5_block_partition(A, B, C, D, E);
    q5_reshape(A, B, C, D, E);

    print_result("C", C);
    print_result("D", D);
    print_result("E", E);

    return 0;
}