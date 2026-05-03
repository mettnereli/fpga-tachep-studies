# HW 3

For this homework, I have created five functions to cover exploring the two operations and how different HLS pragmas can affect their performance. 

For vector_multiplication, I have one function just utilizing the bram pragma, which will let HLS treat the array as bram (memory). The second function for vector_multiplication includes the pragma array_partition, which breaks the array into small elements (since the vector_addition arrays are one dimension, using dim=1 breaks the array up entirely).

For matrix_multiplication, the first function once again just implements the arrays into bram. The next function partitions the arrays by one dimension - to do this, the first array must be partitioned in one dimension (dim=1), to break up the matrix's columns. The second matrix is parititioned in one dimension (dim=2) to break up its rows. This breaks up the matrices to just become arrays in memory, but still allows the array multiplication to occur (the inner product multiplies the column x row). The last function uses full paritition of both matrices (dim=0) and separates every input in each matrix.

I also utilize #pragma HLS UNROLL in the partitioned loops to further parallelize the operations and take the most advantage of the array partitioning.

