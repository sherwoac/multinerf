# fern tests
## reasoning:
The llff fern scene was trained to 10k iterations on a 3090 to:
1. demonstrate impact of dtype (float32, float16 and bfloat16) change on psnr
2. demonstrate impact of 256 vs. 128 width for both MLPs
3. demonstrate impact of 256 vs. 128 width for just density (prop) MLP
4. show the impact on training speed of these tweaks

## results:
![I am legend](results/fern_tests/legend.png)

1. **dtype**: bfloat16: -10%, float16: -20%
![dtype results](./results/fern_tests/train_avg_psnr_256_16.svg "~10% fall with bfloat16")
2. **MLP width**: 128: -10%
![MLP width results](./results/fern_tests/train_avg_psnr_128.svg "~10% fall with 128")
3. **prop 128**: prop width 128: no change!
![prop MLP to 128 wide results](./results/fern_tests/train_avg_psnr_prop_128.svg "no impact on this scene with narrower prop MLP")
4**training speed**: bfloat16 @ 128: >3x faster than f32 @256
![speed results](./results/fern_tests/train_steps_per_sec.svg "b16 @ 128 is ~3x faster than f32 @ 256")
