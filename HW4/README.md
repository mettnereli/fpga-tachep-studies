# Q5

## Part A
| Version            |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| ------------------ | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| Simple, no pragmas | 184 | 16 | 6 | 0 |            5.448 ns |               25 ns | Yes        | 1.650 us |




## Part B

| Version        |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| -------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| BRAM interface | 224 | 52 | 6 | 0 |            5.448 ns |               25 ns | Yes       | 1.650 us |


The interface selection is very important depending on the size of the arrays that are being used. Because the arrays in this assignment are small, there is not much difference in the values. Using a BRAM interface will allow for better access of small arrays, but if they get too big there will be trouble storing them all in memory. This is where the AXI interface becomes useful.


## Part C
| Version          |                             LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| ---------------- | ------------------------------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| No pipeline      | 224 | 52 | 6 | 0 |            5.448 ns |               25 ns | Yes       | 1.650 us |
| Pipeline, `II=1` |       224 | 52 | 6 | 0 |            5.448 ns |               25 ns | Yes        | 1.650 us |


## Part D

| Version                       |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| ----------------------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| No partitioning, pipelined    |       224 | 52 | 6 | 0 |            5.448 ns |               25 ns | Yes        | 1.650 us |
| Complete partitioning         | 1073 | 45 | 24 | 0 |            4.930 ns |               25 ns | Yes        | 0.425 us |
| Cyclic partitioning, factor 4 | 566 | 51 | 24 | 0|             5.448 ns |               25 ns | Yes        | 0.450 us |
| Block partitioning, factor 4  | 1462 | 65 | 12 | 0 |             5.901 ns |               25 ns | Yes       | 0.850 us |
| Array reshape, factor 4       | 566 | 51 | 24 | 0 |            5.510 ns |               25 ns | Yes     | 0.450 us |

The fastest method is complete partitioning, followed by cyclic/reshape partitioning at about the same level, then no partioning and blcok partitioning. There are caveats to this, however and depending on the program or needed operations the order could be different. This code doesn't lend itself to block partitioning, but in situations where the access is much better done on large sections of the array it could improve significantly. And although complete partitioning is the best for this, there are relatively low resources needed - in more strenuous programs, pipelining and using one of the other partition styles may be more useful.