@echo off
setlocal
cd /d "%~dp0"

where g++ >nul 2>&1
if errorlevel 1 (
  where clang++ >nul 2>&1
  if errorlevel 1 (
    echo ERROR: No supported C++ compiler found in PATH.
    echo Install MSYS2, LLVM/Clang, or another C++ toolchain and add it to PATH.
    echo Example: C:\msys64\ucrt64\bin
    exit /b 1
  ) else (
    set "CXX=clang++"
  )
) else (
  set "CXX=g++"
)

%CXX% -std=c++17 -O2 main.cpp -o db.exe -lws2_32
if errorlevel 1 (
  echo Build failed.
  exit /b 1
)
echo Build complete: db.exe
exit /b 0