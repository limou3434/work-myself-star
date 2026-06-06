#!/bin/bash
# 目录初始化脚本，curl远程一键运行
set -e

# 1.交互输入顶层目录名称
read -p "请输入自定义顶层目录名（示例 limou3434）：" DIR_NAME

# 切到家目录
cd ~

# 定义总根目录
ROOT_DIR="$HOME/$DIR_NAME"

# 优先创建外层主目录
mkdir -pv "$ROOT_DIR"
echo "[主目录] $ROOT_DIR 已创建"

# 批量创建子目录
mkdir -pv "$ROOT_DIR/myself"
echo "[说明] $ROOT_DIR/myself: 存放个人隐私文件"

mkdir -pv "$ROOT_DIR/work"
echo "[说明] $ROOT_DIR/work: 存放拉取的项目仓库"

mkdir -pv "$ROOT_DIR/temp"
echo "[说明] $ROOT_DIR/temp: 临时无关紧要文件"

mkdir -pv "$ROOT_DIR/vital"
echo "[说明] $ROOT_DIR/vital: 重要文件禁止随意删除"

mkdir -pv "$ROOT_DIR/soft"
echo "[说明] $ROOT_DIR/soft: 绿色免安装便携软件"

echo -e "\033[32m全部目录创建完毕，根目录：$ROOT_DIR\033[0m"
ls -ld "$ROOT_DIR"/{myself,work,temp,vital,soft}