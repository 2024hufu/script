#!/bin/bash

# 第一步：删除这两个文件夹
rm -rf web
rm -rf server

# 第二步：下载仓库
git clone https://github.com/2024hufu/server.git
git clone https://github.com/2024hufu/web.git

# 第三步：安装 web 项目的依赖
cd web
npm install
