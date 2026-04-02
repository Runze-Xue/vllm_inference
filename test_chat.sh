#!/bin/bash
curl -s http://127.0.0.1:8000/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer change-this-token" \
  -d '{
    "model": "qwen2.5-0.5b-instruct",
    "messages": [
      {"role": "system", "content": "你是一个简洁的助手。"},
      {"role": "user", "content": "用一句话解释什么是推理服务。"}
    ],
    "temperature": 0.7,
    "max_tokens": 128
  }' | python -m json.tool
