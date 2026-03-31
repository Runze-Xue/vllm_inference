#!/usr/bin/env bash
unset LD_LIBRARY_PATH

CUDA_VISIBLE_DEVICES=5 vllm serve /home/share/xuerunze/LLM_models/qwen/Qwen2.5-0.5B-Instruct \
  --host 0.0.0.0 \
  --port 8000 \
  --served-model-name qwen2.5-0.5b-instruct \
  --gpu-memory-utilization 0.2 \
  --max-model-len 2048 \
  --dtype auto \
  --generation-config vllm