#!/usr/bin/env bash

mkdir -p logs run
LOG_FILE="logs/vllm_$(date +%F_%H-%M-%S).log"

echo "[$(date '+%F %T')] start serve"
echo "log file: $LOG_FILE"

unset LD_LIBRARY_PATH

nohup env CUDA_VISIBLE_DEVICES=5 vllm serve /home/share/xuerunze/LLM_models/qwen/Qwen2.5-0.5B-Instruct \
  --host 0.0.0.0 \
  --port 8000 \
  --served-model-name qwen2.5-0.5b-instruct \
  --gpu-memory-utilization 0.2 \
  --max-model-len 2048 \
  --dtype auto \
  --generation-config vllm \
  >"$LOG_FILE" 2>&1 &

echo $! > run/vllm.pid
echo "started, pid=$!"