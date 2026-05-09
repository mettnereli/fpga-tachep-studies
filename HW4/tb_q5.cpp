#include <iostream>
#include "q5_kernel.h"

using namespace std;

void init_arrays(int A[N], int B[N]) {
    for (int i = 0; i < N; i++) {
        A[i] = i + 1;
        B[i] = 2;
    }
}

void print_outputs(const char name[], int C[N], int D[N], int E[N]) {
    cout << name << endl;

    cout << "C: ";
    for (int i = 0; i < N; i++) {
        cout << C[i] << " ";
    }
    cout << endl;

    cout << "D: ";
    for (int i = 0; i < N; i++) {
        cout << D[i] << " ";
    }
    cout << endl;

    cout << "E: ";
    for (int i = 0; i < N; i++) {
        cout << E[i] << " ";
    }
    cout << endl << endl;
}

int main() {
    int A[N];
    int B[N];
    int C[N];
    int D[N];
    int E[N];

    init_arrays(A, B);
    q5_simple(A, B, C, D, E);
    print_outputs("Simple version", C, D, E);

    init_arrays(A, B);
    q5_bram_interface(A, B, C, D, E);
    print_outputs("BRAM interface version", C, D, E);

    init_arrays(A, B);
    q5_pipeline(A, B, C, D, E);
    print_outputs("Pipelined version", C, D, E);

    init_arrays(A, B);
    q5_complete_partition(A, B, C, D, E);
    print_outputs("Complete partition version", C, D, E);

    init_arrays(A, B);
    q5_cyclic_partition(A, B, C, D, E);
    print_outputs("Cyclic partition version", C, D, E);

    init_arrays(A, B);
    q5_block_partition(A, B, C, D, E);
    print_outputs("Block partition version", C, D, E);

    init_arrays(A, B);
    q5_reshape(A, B, C, D, E);
    print_outputs("Reshape version", C, D, E);

    return 0;
}