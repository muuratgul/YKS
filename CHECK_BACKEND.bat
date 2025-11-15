@echo off
title Backend Status Check
color 0E
echo.
echo ========================================
echo   Backend Durum Kontrolü
echo ========================================
echo.

echo Testing backend connection...
echo.

curl -s http://localhost:3000/api/health
if %errorlevel% equ 0 (
    echo.
    echo.
    echo [SUCCESS] Backend is running! ✓
    echo.
) else (
    echo.
    echo.
    echo [ERROR] Backend is NOT running! ✗
    echo.
    echo To start backend:
    echo 1. Go to yks-backend folder
    echo 2. Run: npm run dev
    echo    OR
    echo 3. Double-click START_BACKEND.bat
    echo.
)

echo.
pause

