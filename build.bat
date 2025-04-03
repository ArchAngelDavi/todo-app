@echo off
setlocal

REM Check for Python installation
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and add it to your PATH.
    exit /b
)

REM Navigate to the src directory
cd src

REM Run the game
python main.py

endlocal
