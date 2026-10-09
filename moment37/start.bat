@echo off
rem Serve this folder locally and open the game (browsers won't run it from file://).
rem Uses Python if it's installed, otherwise a small PowerShell server.
cd /d "%~dp0"
start "" http://localhost:8037/
where python >nul 2>nul
if %errorlevel%==0 (
  python -m http.server 8037
) else (
  powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0serve.ps1" 8037
)
