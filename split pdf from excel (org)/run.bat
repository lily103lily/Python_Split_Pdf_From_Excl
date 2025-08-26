@echo off
REM Run with config.json in the same folder
cd /d %~dp0
python "%~dp0split_pdf_from_excel.py" --config "%~dp0config.json"
pause
