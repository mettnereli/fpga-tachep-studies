# HW 3

For this homework, I have created five functions to cover exploring the two operations and how different HLS pragmas can affect their performance. 

For vector_multiplication, I have one function just utilizing the bram pragma, which will let HLS treat the array as bram (memory). The second function for vector_multiplication includes the pragma array_partition, which breaks the array into small elements (since the vector_addition arrays are one dimension, using dim=1 breaks the array up entirely).

For matrix_multiplication, the first function once again just implements the arrays into bram. The next function partitions the arrays by one dimension - to do this, the first array must be partitioned in one dimension (dim=1), to break up the matrix's columns. The second matrix is parititioned in one dimension (dim=2) to break up its rows. This breaks up the matrices to just become arrays in memory, but still allows the array multiplication to occur (the inner product multiplies the column x row). The last function uses full paritition of both matrices (dim=0) and separates every input in each matrix.

I also utilize #pragma HLS UNROLL in the partitioned loops to further parallelize the operations and take the most advantage of the array partitioning.

Vector Multiplication results:

| Version                   |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| ------------------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| BRAM interface only       | 93 | 12 | 3 | 0 |            4.568 ns |               25 ns | Yes        | 0.450 us |
| BRAM + complete partition | 320 | 0 | 48 | 0 |            3.170 ns |               25 ns | Yes        | 0 ns |


Matrix Multiplication results:

| Version                   |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? |     Latency |
| ------------------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ----------: |
| BRAM interface only       | 659 | 163 | 6 | 0 |            6.030 ns |               25 ns | Yes        | 2.750 us |
| Partition one dimension   | 1472 | 1369 | 36 | 0 |            6.179 ns |               25 ns | Yes        |  0.600 us |
| Partition both dimensions | 811 | 18 | 18 | 0 |            5.964 ns |               25 ns | Yes       | 0.925 us |



Across both functions, the bram-only function has the lowest resource usage, but also the highest latency (due to accessing the full array each time). Using the partition strategies does increase resource usage across the board, but does speed up the clock period significantly. Interestingly, partitioning one dimension seems to use more resources than partitioning both - I would not expect this to be the case. I wonder if including the unroll pragma allowed for better parallelization, or maybe the arrays were small enough that it was able to be more efficient? Either way, partitioning both dimension is the fastest method, as expected. The resource increase for this case seems worth full partitioning, but I can see how with more resource-intensive operations or larger matrices, a partial partition may be the better option.