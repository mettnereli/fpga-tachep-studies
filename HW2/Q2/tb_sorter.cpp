#include <iostream>
#include "sorter.h"

using namespace std;

int main() {
    data_t a[N] = {5, 2, 9, 1, 5, 6, 7, 3, 4, 8, 0, 11, 12, 15, 14, 13};

    cout << "Before sorting: ";
    for (int i = 0; i < N; i++) {
        cout << a[i] << " ";
    }
    cout << endl;

    sorter(a);

    cout << "After sorting: ";
    for (int i = 0; i < N; i++) {
        cout << a[i] << " ";
    }
    cout << endl;

    return 0;
}