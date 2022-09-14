# fern tests
## reasoning:
The llff fern scene was trained to 10k iterations on a 3090 to:
1. demonstrate impact of dtype (float32, float16 and bfloat16) change on psnr
2. demonstrate impact of 256 vs. 128 width for both MLPs
3. demonstrate impact of 256 vs. 128 width for just density (prop) MLP
4. show the impact on training speed of these tweaks

## results:
![I am legend](results/fern_tests/legend.png)
2. **dtype**:
![dtype results](./results/fern_tests/train_avg_psnr_256_16.svg "~10% fall with bfloat16")
3. **MLP width**:
![MLP width results](./results/fern_tests/train_avg_psnr_128.svg "~10% fall with 128")
4. **prop 128**:
![prop MLP to 128 wide results](./results/fern_tests/train_avg_psnr_prop_128.svg "no impact on this scene with narrower prop MLP")
5. **training speed**:
![speed results](./results/fern_tests/train_steps_per_sec.svg "b16 @ 128 is ~3x faster than f32 @ 256")
