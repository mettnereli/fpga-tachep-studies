# HW1

# Q1

| Design                |         LUT |          FF |         DSP |        BRAM | Estimated clock period | Target clock period | Meets timing? | Latency (Max) |
| --------------------- | ----------: | ----------: | ----------: | ----------: | ---------------------: | ------------------: | ------------- | ------------: |
| Vector addition       |         103 |          12 |           0 |           0 |            2.278 ns    |               25 ns | Yes           |      0.300 us |
| Vector multiplication |          84 |          12 |           3 |           0 |            4.568 ns    |               25 ns | Yes           |      0.300 us |
| Matrix addition       |          30 |          28 |           0 |           0 |            2.769 ns    |               25 ns | Yes           |      2.550 us |
| Matrix multiplication |         964 |         211 |           6 |           0 |            6.563 ns    |               25 ns | Yes           |     12.550 us |


Vector addition and matrix addition are much faster compared to the multiplication operations, but matrix addition does have more latency (probably because matrices are larger so there are more loops to run over). The addition ops do not use DSP but the multiplication ops do. Matrix multiplication is by far the most expensive operation, probably because it uses a combination of multiplication and summing over matrices which none of the others have to do.