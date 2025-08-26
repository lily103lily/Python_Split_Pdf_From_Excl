@echo off
setlocal
cd /d %~dp0

if not exist venv python -m venv venv
call venv\Scripts\activate

pip install --upgrade pip
pip install -r requirements.txt
pip install pyinstaller

pyinstaller --onefile --clean --name SplitPDFByExcel split_pdf_from_excel.py

echo.
echo === DONE ===
echo EXE: dist\SplitPDFByExcel.exe
pause
