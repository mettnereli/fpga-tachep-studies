# Q6

Pragma Pipeline and Pragma Dataflow both overlap process execution but they do so in different ways. Pragma PIPELINE is used in loops, taking the actions within the loop and allowing each iteration to run at the same time. Pragma DATAFLOW is used for full consecutive functions or multiple consecutive loops, allowing the entire functions/loops to be run at the same time. So within some code block of two functions:

```
void sum(int A[N], int B[N]) {
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        sum[i] = A[i] + B[i];
    }
}

void sum(int A[N], int B[N]) {
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
| Original baseline | from report | from report | from report | from report |            from report |               25 ns | Yes/No        | from report |
| Optimized version | from report | from report | from report | from report |            from report |               25 ns | Yes/No        | from report |
