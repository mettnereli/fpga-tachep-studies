#include "dense_layer.h"
#include <iostream>

int main() {
    int x[IN_SIZE];
    int w[IN_SIZE][OUT_SIZE];
    int y_simple[OUT_SIZE];
    int y_opt[OUT_SIZE];

    for (int i = 0; i < IN_SIZE; i++) {
        x[i] = i + 1;
    }

    for (int i = 0; i < IN_SIZE; i++) {
        for (int j = 0; j < OUT_SIZE; j++) {
            w[i][j] = i + j + 1;
        }
    }

    dense_simple(x, w, y_simple);
    dense_optimized(x, w, y_opt);

    int errors = 0;

    for (int j = 0; j < OUT_SIZE; j++) {
        if (y_simple[j] != y_opt[j]) {
            errors++;
        }
    }

    if (errors == 0) {
        std::cout << "TEST PASSED" << std::endl;
    } else {
        std::cout << "TEST FAILED" << std::endl;
    }

    std::cout << "Output:" << std::endl;

    for (int j = 0; j < OUT_SIZE; j++) {
        std::cout << y_opt[j] << " ";
    }

    std::cout << std::endl;

    return errors;
}