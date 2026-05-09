# Q9

The issue in this code is very simple and lies within vec_add.h:

```
typedef ap_uint<4> dint16_t;
```

This is defining the typle "dint16_t" as an unsigned integer with FOUR bits. The problem is that the tb files uses operations

```
    for (dint16_t i = 0; i < SIZE; i++) {
        A[i] = i;
        B[i] = 2*i;
    }
```

And since SIZE = 15, we are already reaching values of 30 being stores in the array. The problem is that a 4-bit integer can hold a max of 16 values, so when it hits higher, it loops back around and fails. Simply changing "dint16_t" to an unsigned array of 16 bits (I took a guess since that's the number listed) avoids this problem entirely and get the code to run!