#!/bin/bash
export LD_LIBRARY_PATH=/home/adam/anaconda3/envs/multinerf_env/lib:$LD_LIBRARY_PATH
export PYTHONUNBUFFERED=1
export TF_CPP_MIN_LOG_LEVEL=0
export TF_FORCE_GPU_ALLOW_GROWTH=true
export XLA_FLAGS='--xla_gpu_cuda_data_dir=/home/adam/anaconda3/envs/multinerf_env/bin/ --xla_gpu_force_compilation_parallelism=1 --xla_gpu_strict_conv_algorithm_picker=false'
export XLA_PYTHON_CLIENT_PREALLOCATE=platform
export PATH=$PATH:/home/adam/anaconda3/envs/multinerf_env/bin
