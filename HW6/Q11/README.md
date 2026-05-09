# Q11

The simple neural network is as basic as possible given some in array and some matrix of weights, apply the weights and sum, and add the output to a new layer. There are 16 entires going in that are summed down to 8 output. To optimize, I used a few pragmas: first I put the input, output, and weights into bram with Pragma INTERFACE bram. Since the question states that w is given, I made the weights as part of Pragma STABLE to save resources. I then used Pragma ARRAY_PARTITION to separate the input and weights arrays by a factor of 4 - since 4 input values and 4 weights are read in parallel, them being partitioned this way is useful. Taking that a step further, I used Pragma ALLOCATION for 4 multiplying operations - since there are 4 input x weights - and preventing any more from being used and wasting resources. My hope is that the last two will make no difference in timing that just using a complete partition but save on resources a lot. Lastly, I use Pragma PIPELINE on the for-loop to maximize the operations being done.

| Version               |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period |     Latency |
| --------------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ----------: |
| Simple dense layer    | from report | from report | from report | from report |            from report |               25 ns | from report |
| Optimized dense layer | from report | from report | from report | from report |            from report |               25 ns | from report |




