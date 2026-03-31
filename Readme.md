# vllm_inference 项目详解
## 一、这是个什么项目？
该项目是我用来找大模型推理岗位工作用的练手项目。希望能充分练习使用vllm进行模型推理部署。后续目标为模型推理加速 + KV-Cache 优化
## 二、用了什么模型和框架
1、目前用Qwen2.5-0.5B-Instruct 模型，后续会调整为参数更大的模型 <br>
2、环境要求：
Linux
Python 3.12
CUDA
VLLM
模型位置：/home/share/xuerunze/LLM_models/qwen/Qwen2.5-0.5B-Instruct


2、目前架构：<br>
```vllm_inference/
├── README.md
├── serve.sh
├── test_models.sh
├── test_chat.sh
├── client.py
├── logs/
└── .gitignore
```
## 三、怎么启动
bash serve.sh
## 四、怎么测试
bash test_chat.sh <br>
bash test_models.sh <br>
python quickstart.py<br>

## 五、怎么停止
目前不能自动停止，需要nvidia-smi找到相应占用GPU的进程，然后手动 kill -9 PID

## 六、报错记录
1、vllm 配置时要用 `uv`配置，可以在conda中配置，但一定要用`uv`配置！

