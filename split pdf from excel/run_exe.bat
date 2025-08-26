@echo off
cd /d %~dp0
if not exist "config.json" echo [X] notfound config.json & pause & exit /b 1
SplitPDFByExcel.exe --config "%~dp0config\config.json"
pause
