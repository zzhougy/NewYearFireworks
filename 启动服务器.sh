#!/bin/bash

# 新年烟花 - Mac版启动脚本

echo ""
echo "========================================"
echo "   🎆 新年烟花 - 本地服务器"
echo "========================================"
echo ""
echo "正在启动本地服务器..."
echo ""

# 检测 Python 3
if command -v python3 &> /dev/null; then
    echo "✓ 检测到 Python 3"
    echo ""
    echo "服务器启动后，请在浏览器中访问："
    echo "http://localhost:8000"
    echo ""
    echo "按 Ctrl+C 可以停止服务器"
    echo ""
    echo "========================================"
    echo ""
    
    # 自动打开浏览器
    open http://localhost:8000
    
    # 启动服务器
    python3 -m http.server 8000
    
# 检测 Python
elif command -v python &> /dev/null; then
    echo "✓ 检测到 Python"
    echo ""
    echo "服务器启动后，请在浏览器中访问："
    echo "http://localhost:8000"
    echo ""
    echo "按 Ctrl+C 可以停止服务器"
    echo ""
    echo "========================================"
    echo ""
    
    # 自动打开浏览器
    open http://localhost:8000
    
    # 启动服务器
    python -m http.server 8000
    
else
    echo ""
    echo "❌ 错误：未找到可用的服务器工具！"
    echo ""
    echo "请安装 Python 3："
    echo "下载地址：https://www.python.org/downloads/"
    echo ""
    echo "或使用 Homebrew 安装："
    echo "brew install python3"
    echo ""
    echo "安装后重新运行此脚本。"
    echo ""
    echo "========================================"
    echo ""
    exit 1
fi
