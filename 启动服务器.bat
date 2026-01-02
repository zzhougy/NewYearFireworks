@echo off
chcp 65001 >nul
title 新年烟花 - 本地服务器
color 0A
echo.
echo ========================================
echo    🎆 新年烟花 - 本地服务器
echo ========================================
echo.
echo 正在启动本地服务器...
echo.

REM 尝试使用 Python 3
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo ✓ 检测到 Python 3
    echo.
    echo 服务器启动后，请在浏览器中访问：
    echo http://localhost:8000
    echo.
    echo 按 Ctrl+C 可以停止服务器
    echo.
    echo ========================================
    echo.
    start http://localhost:8000
    python -m http.server 8000
    goto :end
)

REM 尝试使用 Python
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    echo ✓ 检测到 Python 3
    echo.
    echo 服务器启动后，请在浏览器中访问：
    echo http://localhost:8000
    echo.
    echo 按 Ctrl+C 可以停止服务器
    echo.
    echo ========================================
    echo.
    start http://localhost:8000
    python3 -m http.server 8000
    goto :end
)

REM 尝试使用 Node.js http-server
where http-server >nul 2>&1
if %errorlevel% == 0 (
    echo ✓ 检测到 Node.js http-server
    echo.
    echo 服务器启动后，请在浏览器中访问：
    echo http://localhost:8000
    echo.
    echo 按 Ctrl+C 可以停止服务器
    echo.
    echo ========================================
    echo.
    start http://localhost:8000
    http-server -p 8000
    goto :end
)

echo.
echo ❌ 错误：未找到可用的服务器工具！
echo.
echo 请安装以下工具之一：
echo.
echo 1. Python 3（推荐）
echo    下载地址：https://www.python.org/downloads/
echo    安装时请勾选 "Add Python to PATH"
echo.
echo 2. Node.js
echo    下载地址：https://nodejs.org/
echo.
echo 安装后重新运行此脚本。
echo.
echo ========================================
echo.
pause
exit /b 1

:end
