import os
os.environ["CUDA_VISIBLE_DEVICES"] = "1" 
from vllm import LLM, SamplingParams

prompts = ["用一句话解释什么是推理服务。"]
sampling_params = SamplingParams(temperature=0.7, max_tokens=128)

local = "/home/share/xuerunze/LLM_models/qwen/Qwen2.5-0.5B-Instruct"
llm = None
last_error = None

# Try progressively smaller GPU memory fractions so the demo can still run
# when the device is busy with other processes.
util = 0.2
llm = LLM(
    model=local,
    gpu_memory_utilization=util,
    max_model_len=2048,
)

if llm is None:
    raise RuntimeError("无法初始化 vLLM，请释放部分 GPU 显存后重试。") from last_error

outputs = llm.generate(prompts, sampling_params)

for o in outputs:
    print(o.outputs[0].text)