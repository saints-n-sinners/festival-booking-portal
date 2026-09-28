import { useState } from 'react'
import {
  FileSpreadsheet,
  TableProperties,
  Upload,
  X,
} from 'lucide-react'
import './ImportPage.css'

type CsvRow = Record<string, string>

function parseCsv(text: string): {
  headers: string[]
  rows: CsvRow[]
} {
  const lines: string[][] = []
  let currentRow: string[] = []
  let currentValue = ''
  let insideQuotes = false

  for (let index = 0; index < text.length; index += 1) {
    const character = text[index]
    const nextCharacter = text[index + 1]

    if (character === '"') {
      if (insideQuotes && nextCharacter === '"') {
        currentValue += '"'
        index += 1
      } else {
        insideQuotes = !insideQuotes
      }

      continue
    }

    if (character === ',' && !insideQuotes) {
      currentRow.push(currentValue.trim())
      currentValue = ''
      continue
    }

    if (
      (character === '\n' || character === '\r') &&
      !insideQuotes
    ) {
      if (character === '\r' && nextCharacter === '\n') {
        index += 1
      }

      currentRow.push(currentValue.trim())
      currentValue = ''

      if (currentRow.some((value) => value !== '')) {
        lines.push(currentRow)
      }

      currentRow = []
      continue
    }

    currentValue += character
  }

  currentRow.push(currentValue.trim())

  if (currentRow.some((value) => value !== '')) {
    lines.push(currentRow)
  }

  if (lines.length === 0) {
    return {
      headers: [],
      rows: [],
    }
  }

  const headers = lines[0].map((header) =>
    header.replace(/^\uFEFF/, '').trim()
  )

  const rows = lines.slice(1).map((values) => {
    const row: CsvRow = {}

    headers.forEach((header, index) => {
      row[header] = values[index] ?? ''
    })

    return row
  })

  return {
    headers,
    rows,
  }
}

function ImportPage() {
  const [fileName, setFileName] = useState('')
  const [headers, setHeaders] = useState<string[]>([])
  const [rows, setRows] = useState<CsvRow[]>([])
  const [error, setError] = useState('')

  async function handleFileChange(
    event: React.ChangeEvent<HTMLInputElement>
  ) {
    const file = event.target.files?.[0]

    setError('')
    setHeaders([])
    setRows([])
    setFileName('')

    if (!file) {
      return
    }

    if (!file.name.toLowerCase().endsWith('.csv')) {
      setError('Lütfen CSV formatında bir dosya seçin.')
      event.target.value = ''
      return
    }

    try {
      const text = await file.text()
      const parsed = parseCsv(text)

      if (parsed.headers.length === 0) {
        throw new Error('CSV dosyasında kolon bulunamadı.')
      }

      if (parsed.rows.length === 0) {
        throw new Error('CSV dosyasında veri satırı bulunamadı.')
      }

      setFileName(file.name)
      setHeaders(parsed.headers)
      setRows(parsed.rows)
    } catch (fileError) {
      setError(
        fileError instanceof Error
          ? fileError.message
          : 'CSV dosyası okunamadı.'
      )

      event.target.value = ''
    }
  }

  function clearFile() {
    setFileName('')
    setHeaders([])
    setRows([])
    setError('')

    const input = document.getElementById(
      'festival-csv-file'
    ) as HTMLInputElement | null

    if (input) {
      input.value = ''
    }
  }

  const previewRows = rows.slice(0, 5)

  return (
    <>
      <section className="page-heading">
        <div>
          <p className="eyebrow">VERİ YÖNETİMİ</p>
          <h1>CSV Import</h1>
          <p>
            Festival araştırmalarından oluşturulan CSV dosyalarını
            kontrol ederek portala aktarın.
          </p>
        </div>
      </section>

      <section className="import-panel">
        <div className="import-icon">
          <FileSpreadsheet size={32} />
        </div>

        <div className="import-copy">
          <h2>Festival CSV dosyası</h2>

          <p>
            Yeni bulunan festivalleri önce önizleyin, ardından
            istediğiniz kayıtları veritabanına aktarın.
          </p>
        </div>

        <label className="import-file-button">
          <Upload size={18} />
          CSV dosyası seç

          <input
            id="festival-csv-file"
            type="file"
            accept=".csv,text/csv"
            onChange={(event) => void handleFileChange(event)}
          />
        </label>

        {error && (
          <div className="import-error" role="alert">
            {error}
          </div>
        )}

        {fileName && (
          <div className="selected-file">
            <div>
              <FileSpreadsheet size={20} />

              <div>
                <strong>{fileName}</strong>
                <span>
                  {rows.length} kayıt · {headers.length} kolon
                </span>
              </div>
            </div>

            <button
              type="button"
              onClick={clearFile}
              aria-label="CSV dosyasını kaldır"
              title="Dosyayı kaldır"
            >
              <X size={18} />
            </button>
          </div>
        )}

        {!fileName && (
          <div className="import-info">
            <strong>Güvenli import</strong>

            <span>
              Dosya seçildiğinde veriler doğrudan veritabanına
              yazılmayacak. Önce kontrol ve önizleme ekranı
              gösterilecek.
            </span>
          </div>
        )}
      </section>

      {rows.length > 0 && (
        <section className="import-preview">
          <div className="import-preview-header">
            <div>
              <TableProperties size={22} />

              <div>
                <h2>CSV Önizleme</h2>
                <p>
                  İlk {Math.min(5, rows.length)} kayıt gösteriliyor.
                  Toplam {rows.length} kayıt bulundu.
                </p>
              </div>
            </div>
          </div>

          <div className="detected-columns">
            <strong>Tespit edilen kolonlar</strong>

            <div>
              {headers.map((header) => (
                <span key={header}>{header}</span>
              ))}
            </div>
          </div>

          <div className="preview-table-wrapper">
            <table className="preview-table">
              <thead>
                <tr>
                  {headers.map((header) => (
                    <th key={header}>{header}</th>
                  ))}
                </tr>
              </thead>

              <tbody>
                {previewRows.map((row, rowIndex) => (
                  <tr key={rowIndex}>
                    {headers.map((header) => (
                      <td key={header}>
                        {row[header] || '—'}
                      </td>
                    ))}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </section>
      )}
    </>
  )
}

export default ImportPage