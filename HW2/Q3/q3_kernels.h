#ifndef Q3_KERNELS_H
#define Q3_KERNELS_H

#include "ap_int.h"
#include "ap_fixed.h"

#define N 16

void add_int(int a[N], int b[N], int c[N]);

void add_long(long a[N], long b[N], long c[N]);

void add_longlong(long long a[N], long long b[N], long long c[N]);

void add_ap_int(ap_int<32> a[N], ap_int<32> b[N], ap_int<32> c[N]);

void add_ap_uint(ap_uint<32> a[N], ap_uint<32> b[N], ap_uint<32> c[N]);

void add_ap_fixed(ap_fixed<16,6> a[N], ap_fixed<16,6> b[N], ap_fixed<16,6> c[N]);

#endif