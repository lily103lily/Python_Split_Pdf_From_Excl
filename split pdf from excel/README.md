# PDF 分頁並依 Excel 命名（自動讀取 config.json 版本）

這個工具會把多頁 PDF（如 400 頁）拆成一頁一檔，並依 Excel 欄位命名。
**本版支援：直接雙擊 .py 也會自動載入「同資料夾的 config.json」。**

## ✅ 快速開始

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


祝使用順利！
