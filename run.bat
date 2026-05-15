@echo off
setlocal
cd /d "%~dp0"

if not exist "db.exe" (
  echo db.exe not found. Run build.bat first.
  exit /b 1
)

"%~dp0db.exe"
