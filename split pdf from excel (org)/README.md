# PDF 分頁並依 Excel 命名（自動讀取 config.json 版本）

這個工具會把多頁 PDF（如 400 頁）拆成一頁一檔，並依 Excel 欄位命名。
**本版支援：直接雙擊 .py 也會自動載入「同資料夾的 config.json」。**

## ✅ 快速開始
1. 安裝相依套件：
   ```bash
   pip install -r requirements.txt
   ```
2. 與 `split_pdf_from_excel.py` 同一資料夾放好：
   - `Oracle 客製程式統整.pdf`（或你的 PDF）
   - `filenames.xlsx`（或你的 Excel）
   - `config.json`（已附範例，可直接用）
3. 執行（擇一）：
   - 直接雙擊 `split_pdf_from_excel.py`（會自動吃同層 `config.json`）
   - 或命令列：
     ```bash
     python split_pdf_from_excel.py --config config.json
     ```
   - 或不使用 config（參數要帶齊）：
     ```bash
     python split_pdf_from_excel.py "Oracle 客製程式統整.pdf" "out" --excel "filenames.xlsx" --col "檔名"
     ```

## 🧩 `config.json` 範例
```json
{
  "input_pdf": "Oracle 客製程式統整.pdf",
  "output_dir": "out",
  "excel": "filenames.xlsx",
  "sheet": null,
  "col": "檔名",
  "template": "page_{num:03d}",
  "start": 1
}
```
> 相對路徑**以 `config.json` 所在資料夾為準**。你也可以填完整路徑。

## 🧹 檔名與重複處理
- 會移除 `\/:*?"<>|` 等不合法字元並壓縮空白。
- 若輸出資料夾已有同名檔，會自動在尾端加 `_2`, `_3`。

## ❗ 常見問題
- 報錯：「Error: input_pdf, output_dir, and --excel are required unless --config is used.」
  - 代表沒有正確帶 `--config`，且三參數也沒帶齊。請直接雙擊 `.py` 或用 `--config config.json`。
- 找不到檔案：確認檔名（空白與副檔名）以及路徑寫法；建議把 PDF、Excel 與 `config.json` 放同層。

祝使用順利！
