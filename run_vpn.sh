cd /home/share/xuerunze/xray
nohup ./xray run -c ./config.json > ./xray.log 2>&1 &
echo $! > ./xray.pid

export http_proxy=http://127.0.0.1:10808
export https_proxy=http://127.0.0.1:10808
export HTTP_PROXY=http://127.0.0.1:10808
export HTTPS_PROXY=http://127.0.0.1:10808