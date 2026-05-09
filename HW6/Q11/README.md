# Q11

The simple neural network is as basic as possible given some in array and some matrix of weights, apply the weights and sum, and add the output to a new layer. There are 16 entires going in that are summed down to 8 output. To optimize, I used a few pragmas: first I put the input, output, and weights into bram with Pragma INTERFACE bram. Since the question states that w is given, I made the weights as part of Pragma STABLE to save resources. I then used Pragma ARRAY_PARTITION to separate the input and weights arrays by a factor of 4 - since 4 input values and 4 weights are read in parallel, them being partitioned this way is useful. Taking that a step further, I used Pragma ALLOCATION for 4 multiplying operations - since there are 4 input x weights - and preventing any more from being used and wasting resources. My hope is that the last two will make no difference in timing that just using a complete partition but save on resources a lot. Lastly, I use Pragma PIPELINE on the for-loop to maximize the operations being done.

| Version               |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period |     Latency |
| --------------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ----------: |
| Simple dense layer    | 880 | 752 | 6 | 0 |            7.542 ns |               25 ns | 1.875 us|
| Optimized dense layer | 333 | 60 | 3 | 0 |           5.901 ns |               25 ns | 3.250 us |



I think this is a success - the optimized layer has an increased clock period of a little over 1.5 ns, and the resources usage is more than halved across the board. I was initially considering using a complete ARRAY_PARTITION and an UNROLL instead of PIPELINE, but I think the cyclic partition and PIPELINE still maximized speed wihout having a bunch of unnecessary resources being used. I know there were a lot of pragmas introduced in the class that you suggested, and perhaps their inclusion may become useful or necessary with bigger programs, but for this one, keeping things simple seems to be successful.