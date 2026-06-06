#!/bin/bash
set -e
read -p "请输入自定义顶层目录名（示例 limou3434）：" DIR_NAME
cd ~
ROOT_DIR="$HOME/$DIR_NAME"
mkdir -pv "$ROOT_DIR"
echo "主目录：$ROOT_DIR 创建成功"

mkdir -pv "$ROOT_DIR/myself"
echo "[myself] 个人隐私文件目录"
mkdir -pv "$ROOT_DIR/work"
echo "[work] Git仓库存放目录"
mkdir -pv "$ROOT_DIR/temp"
echo "[temp] 临时文件目录"
mkdir -pv "$ROOT_DIR/vital"
echo "[vital] 重要不可删文件目录"
mkdir -pv "$ROOT_DIR/soft"
echo "[soft] 便携绿色软件目录"

echo -e "\033[32m创建完成：$ROOT_DIR\033[0m"
ls -ld "$ROOT_DIR"/*