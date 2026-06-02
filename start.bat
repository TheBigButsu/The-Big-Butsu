@echo off
REM Grand Chord DM Screen launcher (Windows)
REM Double-click this file to start the server
cd /d "%~dp0"
echo.
echo Starting Grand Chord DM Screen...
echo.
echo Once it says "Serving HTTP on...", open your browser to:
echo.
echo     http://localhost:8000/session_prep.html
echo.
echo When you're done, close this window.
echo.
timeout /t 1 /nobreak >nul

where python >nul 2>&1
if %errorlevel% == 0 (
    python -m http.server 8000
) else (
    where py >nul 2>&1
    if %errorlevel% == 0 (
        py -m http.server 8000
    ) else (
        echo ERROR: Python is not installed.
        echo Install Python from https://www.python.org/downloads/
        echo and during install check the "Add Python to PATH" box.
        pause
    )
)
