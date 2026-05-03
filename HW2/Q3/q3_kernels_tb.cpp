#include <iostream>
#include "q3_kernels.h"

using namespace std;

int main() {
    int a_int[N];
    int b_int[N];
    int c_int[N];

    long a_long[N];
    long b_long[N];
    long c_long[N];

    long long a_longlong[N];
    long long b_longlong[N];
    long long c_longlong[N];

    ap_int<32> a_ap_int[N];
    ap_int<32> b_ap_int[N];
    ap_int<32> c_ap_int[N];

    ap_uint<32> a_ap_uint[N];
    ap_uint<32> b_ap_uint[N];
    ap_uint<32> c_ap_uint[N];

    ap_fixed<16,6> a_ap_fixed[N];
    ap_fixed<16,6> b_ap_fixed[N];
    ap_fixed<16,6> c_ap_fixed[N];

    for (int i = 0; i < N; i++) {
        a_int[i] = i + 1;
        b_int[i] = 2;

        a_long[i] = i + 1;
        b_long[i] = 2;

        a_longlong[i] = i + 1;
        b_longlong[i] = 2;

        a_ap_int[i] = i + 1;
        b_ap_int[i] = 2;

        a_ap_uint[i] = i + 1;
        b_ap_uint[i] = 2;

        a_ap_fixed[i] = i + 1;
        b_ap_fixed[i] = 2;
    }

    add_int(a_int, b_int, c_int);
    add_long(a_long, b_long, c_long);
    add_longlong(a_longlong, b_longlong, c_longlong);
    add_ap_int(a_ap_int, b_ap_int, c_ap_int);
    add_ap_uint(a_ap_uint, b_ap_uint, c_ap_uint);
    add_ap_fixed(a_ap_fixed, b_ap_fixed, c_ap_fixed);

    cout << "int result:" << endl;
    for (int i = 0; i < N; i++) {
        cout << c_int[i] << " ";
    }
    cout << endl;

    cout << "long result:" << endl;
    for (int i = 0; i < N; i++) {
        cout << c_long[i] << " ";
    }
    cout << endl;

    cout << "long long result:" << endl;
    for (int i = 0; i < N; i++) {
        cout << c_longlong[i] << " ";
    }
    cout << endl;

    cout << "ap_int<32> result:" << endl;
    for (int i = 0; i < N; i++) {
        cout << c_ap_int[i] << " ";
    }
    cout << endl;

    cout << "ap_uint<32> result:" << endl;
    for (int i = 0; i < N; i++) {
        cout << c_ap_uint[i] << " ";
    }
    cout << endl;

    cout << "ap_fixed<16,6> result:" << endl;
    for (int i = 0; i < N; i++) {
        cout << c_ap_fixed[i] << " ";
    }
    cout << endl;

    return 0;
}