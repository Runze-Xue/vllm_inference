from openai import OpenAI

client = OpenAI(
    base_url="http://127.0.0.1:8000/v1",
    api_key="change-this-token",
)

resp = client.chat.completions.create(
    model="qwen2.5-0.5b-instruct",
    messages=[
        {"role": "system", "content": "你是一个简洁的助手。"},
        {"role": "user", "content": "我饿了，晚饭吃什么？"},
    ],
    temperature=0.7,
    max_tokens=128,
)

print(resp.choices[0].message.content)