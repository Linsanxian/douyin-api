#!/bin/bash

export https_proxy=http://127.0.0.1:7890 
export http_proxy=http://127.0.0.1:7890 
export all_proxy=socks5://127.0.0.1:7890

# 定义要写入的文件名
FILE="timestamp.txt"

# 获取当前的 Unix 时间戳
TIMESTAMP=$(date +%s)

# 将时间戳写入文件
echo $TIMESTAMP > $FILE

# 将文件添加到 Git 仓库
git add $FILE

# 提交更改
git commit -m "Update timestamp: $TIMESTAMP"

# 推送到 GitHub
git push origin main
