# Q6

Pragma Pipeline and Pragma Dataflow both overlap process execution but they do so in different ways. Pragma PIPELINE is used in loops, taking the actions within the loop and allowing each iteration to run at the same time. Pragma DATAFLOW is used for full consecutive functions or multiple consecutive loops, allowing the entire functions/loops to be run at the same time. So within some code block of two functions:

```
void sum(int A[N], int B[N]) {
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        sum[i] = A[i] + B[i];
    }
}

void subtract(int A[N], int B[N]) {
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        sum[i] = A[i] - B[i];
    }
}

void main(int A[N], int B[N]) {

#pragma HLS DATAFLOW

    sum(A, B);
    subtract(A, B);
}
```

So in this case, the PIPELINE is used to overlap the loops in the two functions, while DATAFLOW is used to overlap the execution of the two functions themselves. In this code, the DATAFLOW and PIPELINE Pragmas have the execution of both functions and all iterations of the loops within the functions at the same time.


# Q7

HLS must arrange its operations into clock cycles as efficiently as it can, so placing a latency constraint on an operation will affect the minimum/maximum amount of clock cycles that the operation can take. This means that instances of multiple operations occurring (like with pipelines, dataflows, unrolls, etc.) may not meet the requirements of the latency constraint when running at the same time. So HLS may not be able to schedule operations or actions together that they would with a looser/tighter latency constraint.


# Q8


| Version           |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| ----------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| Original baseline | 1230 | 449 | 4 | 0 |            7.914 ns |               25 ns | Yes       | 2.700 us |
| Optimized version | 1155 | 441 | 4 | 0|            7.914 ns |               25 ns | Yes        | 2.700 us |


The first thing to notice about the baseline code is that it contains three functions, each containing a for-loop, and those functions are executed sequentially. The first thing to do is massively parallelize this, first the inner for-loops with Pragma PIPELINE, and then the three back-to-back helper functions with Pragma DATAFLOW. But DATAFLOW will be more efficient by removing the functions from the hierarchy with Pragma INLINE (the helper functions do not call any other functions that are needed, so INLINE will make them just like more code. If there were more functions inside the called functions, we may have needed INLINE, or used INLINE recursive to open those up too.) Next, because temp1 is accessed in the "compute_blur" function by looking at three values (previous, main, and next value) in the array at a time, I used Pragma ARRAY_PARTITION with a factor of three and with complete partitioning. Since temp2 is full of 0s, I used Pragma ARRAY_PARTITION but this time with complete partitioning. It uses a little more resources but is simple. I then used Pragma Stable on variable A, as that is not affected at all during the progam execution and it will save resources by pointing that out. After that, I implented Pragma ALLOCATION to limit the number of "add" operations to just 2 at a time. The only addition is in the line "out_c[i] = (in_c[i - 1] + in_c[i] + in_c[i + 1]) / 3;" which has two adds, so it is a very useful limit that will not affect anything but save unnecessary addition resources. At this point, I had not included any LATENCY or RESHAPE pragmas, but I figured this would be enough to make a significant difference.


BUT, upon including all of these, I found that the resource utilization and clock period INCREASED! I figure that including so many pragmas for such a small example was actually increasing the amount of operations and resources needed to go through with applying them, thereby negating any benefit I was gaining. So I stripped the program back, just including Pragma PIPELINE, Pragma INLINE, and ARRAY_PARTITION (and Pragma INTERFACE bram for A and B). This got the slightly better resource utilization I put above.
