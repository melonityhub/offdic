@echo off
echo ======================================
echo   offdic - Build Script for Windows
echo ======================================
echo.

REM Install dependencies
echo [1/3] Installing dependencies...
pip install PyQt5 PyQtWebEngine pyinstaller
echo.

REM Build executable
echo [2/3] Building executable with PyInstaller...
pyinstaller --noconfirm --onedir --windowed ^
    --name "offdic" ^
    --add-data "fastdic_plain.sqlite;." ^
    --icon "offdic.ico" ^
    --hidden-import "PyQt5.QtWebEngineWidgets" ^
    --hidden-import "PyQt5.QtWebEngineCore" ^
    offdic.py

echo.
echo [3/3] Done!
echo.
echo The executable is in: dist\offdic\offdic.exe
echo.
echo To distribute, copy the entire dist\offdic folder.
echo Make sure fastdic_plain.sqlite is in the same directory as offdic.exe.
echo.
pause
