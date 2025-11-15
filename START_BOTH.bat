@echo off
title YKS System - Backend + Frontend
color 0B
echo.
echo ========================================
echo   YKS Takip Sistemi - Başlatılıyor
echo ========================================
echo.

REM Check if backend is running
echo [1/3] Checking backend status...
curl -s http://localhost:3000/api/health >nul 2>&1
if %errorlevel% equ 0 (
    echo [OK] Backend is already running!
    goto :start_frontend
)

echo [INFO] Backend is not running. Starting backend...
echo.

REM Start backend in new window
start "YKS Backend Server" cmd /k "cd /d %~dp0yks-backend && npm run dev"

echo [OK] Backend starting in new window...
echo [INFO] Waiting 5 seconds for backend to start...
timeout /t 5 /nobreak >nul

:start_frontend
echo.
echo [2/3] Starting frontend...
echo.

REM Start frontend in new window
start "YKS Frontend" cmd /k "cd /d %~dp0yks-frontend && npm run dev"

echo.
echo [3/3] Setup complete!
echo.
echo ========================================
echo   Servers:
echo   - Backend:  http://localhost:3000
echo   - Frontend: http://localhost:3001
echo ========================================
echo.
echo Both servers are starting in separate windows.
echo Close this window when done.
echo.
pause

