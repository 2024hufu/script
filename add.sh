#!/bin/bash

while true; do
  # 获取当前时间
  current_time=$(date +"%Y-%m-%d %H:%M:%S")

  # 执行 curl 命令并将结果保存到 res.log
  curl -X POST 'http://45.8.113.140:3338/api/v1/hufu/add/' \
    --header 'Content-Type: application/json' \
    --data-raw '{"add":"1+1"}' >> res.log

  # 打印当前时间到 res.log
  echo "Time: $current_time" >> res.log

  # 等待两分钟
  sleep 120
done
