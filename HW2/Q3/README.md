# HW3

| Design          | Data type        |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? | Latency  (Max)|
| --------------- | ---------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ------------: |
| Vector multiply | `int`            | 103 | 12 | 0 | 0        |            2.278 ns |               25 ns | Yes        | 0.450 us |
| Vector multiply | `long`           | 135 | 12 | 0 | 0        |            2.575 ns |               25 ns | Yes        | 0.450 us |
| Vector multiply | `long long`      | 135 | 12 | 0 | 0        |            2.575 ns |               25 ns | Yes       |  0.450 us |
| Vector multiply | `ap_int<32>`     | 103 | 12 | 0 | 0        |            2.278 ns |               25 ns | Yes        |  0.450 us |
| Vector multiply | `ap_uint<32>`    | 103 | 12 | 0 | 0        |            2.278 ns |               25 ns | Yes        |  0.450 us |
| Vector multiply | `ap_fixed<16,6>` | 87 | 12 | 0 | 0        |            2.151 ns |               25 ns | Yes       |  0.450 us |


So the least resource usage goes to ap_fixed, then ap_uint<32>, ap_int<32>, and int are tied for next most usage, and the most usage is long and longlong. This makes sense becasue ap_fixed uses 16 bits, the next three use 32 bits, and the last two use 64 bits. So just a little bit more data has to get moved around during the calculation.