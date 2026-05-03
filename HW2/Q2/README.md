|         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? | Latency (Max) |
| ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ------------: |
| 206         |          35 | 0           |           0 |            2.278 ns    |               25 ns | Yes           |           511 |

Used a simple buble sort. Does not use any DSP or BRAM, which makes sense, as it's just moving integers around. There is a nested loop in my implementation, which seems to have increased the latency.