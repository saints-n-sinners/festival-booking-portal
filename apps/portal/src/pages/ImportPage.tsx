import { useState } from 'react'
import {
  FileSpreadsheet,
  TableProperties,
  Upload,
  X,
} from 'lucide-react'
import './ImportPage.css'

type CsvRow = Record<string, string>

type ImportStatus = 'new' | 'exists' | 'error'

type ExistingFestival = {
  id: number
  external_id: string
  name: string
  country: string
}

type FestivalsResponse = {
  success: boolean
  total: number
  festivals: ExistingFestival[]
  error?: string
}

type AnalyzedRow = {
  row: CsvRow
  status: ImportStatus
  reason: string
  festivalName: string
  country: string
  selected: boolean
  existingFestival?: ExistingFestival
}

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

async function loadExistingFestivals(): Promise<
  ExistingFestival[]
> {
  const festivals: ExistingFestival[] = []
  const limit = 200
  let offset = 0

  while (true) {
    const response = await fetch(
      `/api/festivals?limit=${limit}&offset=${offset}`,
      {
        credentials: 'same-origin',
      }
    )

    const data = (await response.json()) as FestivalsResponse

    if (!response.ok || !data.success) {
      throw new Error(
        data.error || 'Mevcut festival kayıtları yüklenemedi.'
      )
    }

    festivals.push(...data.festivals)

    if (
      data.festivals.length < limit ||
      festivals.length >= data.total
    ) {
      break
    }

    offset += limit
  }

  return festivals
}

function ImportPage() {
  const [fileName, setFileName] = useState('')
  const [headers, setHeaders] = useState<string[]>([])
  const [rows, setRows] = useState<CsvRow[]>([])
  const [error, setError] = useState('')
  const [analyzedRows, setAnalyzedRows] = useState<
    AnalyzedRow[]
  >([])
  const [analyzing, setAnalyzing] = useState(false)

  async function analyzeRows(csvRows: CsvRow[]) {
    setAnalyzing(true)

    try {
      const existingFestivals = await loadExistingFestivals()

      const analyzed: AnalyzedRow[] = csvRows.map((row) => {
        const festivalName = (row.Festival ?? '').trim()
        const country = (row.Country ?? '').trim()

        if (!festivalName) {
          return {
            row,
            status: 'error',
            reason: 'Festival adı eksik.',
            festivalName: '—',
            country: country || '—',
            selected: false,
          }
        }

        if (!country) {
          return {
            row,
            status: 'error',
            reason: 'Ülke bilgisi eksik.',
            festivalName,
            country: '—',
            selected: false,
          }
        }

        const existingFestival = existingFestivals.find(
          (festival) =>
            festival.name.localeCompare(
              festivalName,
              undefined,
              {
                sensitivity: 'base',
              }
            ) === 0 &&
            festival.country.localeCompare(
              country,
              undefined,
              {
                sensitivity: 'base',
              }
            ) === 0
        )

        if (existingFestival) {
          return {
            row,
            status: 'exists',
            reason: `Mevcut kayıt: ${existingFestival.external_id}`,
            festivalName,
            country,
            selected: false,
            existingFestival,
          }
        }

        return {
          row,
          status: 'new',
          reason: 'Yeni festival',
          festivalName,
          country,
          selected: true,
        }
      })

      setAnalyzedRows(analyzed)
    } catch (analysisError) {
      setAnalyzedRows([])

      setError(
        analysisError instanceof Error
          ? analysisError.message
          : 'Festival kayıtları karşılaştırılamadı.'
      )
    } finally {
      setAnalyzing(false)
    }
  }

  async function handleFileChange(
    event: React.ChangeEvent<HTMLInputElement>
  ) {
    const file = event.target.files?.[0]

    setError('')
    setHeaders([])
    setRows([])
    setFileName('')
    setAnalyzedRows([])

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
        throw new Error(
          'CSV dosyasında kolon bulunamadı.'
        )
      }

      if (parsed.rows.length === 0) {
        throw new Error(
          'CSV dosyasında veri satırı bulunamadı.'
        )
      }

      const requiredColumns = ['Festival', 'Country']

      const missingColumns = requiredColumns.filter(
        (column) => !parsed.headers.includes(column)
      )

      if (missingColumns.length > 0) {
        throw new Error(
          `CSV dosyasında zorunlu kolonlar eksik: ${missingColumns.join(
            ', '
          )}`
        )
      }

      setFileName(file.name)
      setHeaders(parsed.headers)
      setRows(parsed.rows)

      await analyzeRows(parsed.rows)
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
    setAnalyzedRows([])
    setError('')

    const input = document.getElementById(
      'festival-csv-file'
    ) as HTMLInputElement | null

    if (input) {
      input.value = ''
    }
  }

  function updateSelection(
    rowIndex: number,
    selected: boolean
  ) {
    setAnalyzedRows((current) =>
      current.map((row, index) =>
        index === rowIndex
          ? {
              ...row,
              selected,
            }
          : row
      )
    )
  }

  const previewRows = rows.slice(0, 5)

  const newCount = analyzedRows.filter(
    (item) => item.status === 'new'
  ).length

  const existingCount = analyzedRows.filter(
    (item) => item.status === 'exists'
  ).length

  const errorCount = analyzedRows.filter(
    (item) => item.status === 'error'
  ).length

  const selectedCount = analyzedRows.filter(
    (item) => item.status === 'new' && item.selected
  ).length

  return (
    <>
      <section className="page-heading">
        <div>
          <p className="eyebrow">VERİ YÖNETİMİ</p>

          <h1>CSV Import</h1>

          <p>
            Festival araştırmalarından oluşturulan CSV
            dosyalarını kontrol ederek portala aktarın.
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
            Yeni bulunan festivalleri önce önizleyin,
            ardından istediğiniz kayıtları veritabanına
            aktarın.
          </p>
        </div>

        <label className="import-file-button">
          <Upload size={18} />
          CSV dosyası seç

          <input
            id="festival-csv-file"
            type="file"
            accept=".csv,text/csv"
            onChange={(event) =>
              void handleFileChange(event)
            }
          />
        </label>

        {error && (
          <div
            className="import-error"
            role="alert"
          >
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
                  {rows.length} kayıt · {headers.length}{' '}
                  kolon
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
              Dosya seçildiğinde veriler doğrudan
              veritabanına yazılmayacak. Önce kontrol ve
              önizleme ekranı gösterilecek.
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
                  İlk {Math.min(5, rows.length)} kayıt
                  gösteriliyor. Toplam {rows.length} kayıt
                  bulundu.
                </p>
              </div>
            </div>
          </div>

          <div className="detected-columns">
            <strong>Tespit edilen kolonlar</strong>

            <div>
              {headers.map((header) => (
                <span key={header}>
                  {header}
                </span>
              ))}
            </div>
          </div>

          <div className="preview-table-wrapper">
            <table className="preview-table">
              <thead>
                <tr>
                  {headers.map((header) => (
                    <th key={header}>
                      {header}
                    </th>
                  ))}
                </tr>
              </thead>

              <tbody>
                {previewRows.map(
                  (row, rowIndex) => (
                    <tr key={rowIndex}>
                      {headers.map((header) => (
                        <td key={header}>
                          {row[header] || '—'}
                        </td>
                      ))}
                    </tr>
                  )
                )}
              </tbody>
            </table>
          </div>
        </section>
      )}

      {analyzing && (
        <section className="import-analysis">
          <strong>
            Festival kayıtları kontrol ediliyor…
          </strong>

          <span>
            CSV kayıtları mevcut portal verileriyle
            karşılaştırılıyor.
          </span>
        </section>
      )}

      {!analyzing &&
        analyzedRows.length > 0 && (
          <section className="import-analysis">
            <div className="analysis-heading">
              <div>
                <h2>Import Preview</h2>

                <p>
                  CSV kayıtları mevcut festival
                  veritabanıyla karşılaştırıldı.
                </p>
              </div>

              <div className="analysis-counts">
                <div className="analysis-count analysis-new">
                  <strong>{newCount}</strong>
                  <span>NEW</span>
                </div>

                <div className="analysis-count analysis-exists">
                  <strong>{existingCount}</strong>
                  <span>EXISTS</span>
                </div>

                <div className="analysis-count analysis-error">
                  <strong>{errorCount}</strong>
                  <span>ERROR</span>
                </div>
              </div>
            </div>

            <div className="selection-summary">
              <strong>
                {selectedCount} festival import için
                seçildi
              </strong>

              <span>
                Yalnızca NEW durumundaki kayıtlar
                seçilebilir.
              </span>
            </div>

            <div className="analysis-table-wrapper">
              <table className="analysis-table">
                <thead>
                  <tr>
                    <th>Seç</th>
                    <th>Durum</th>
                    <th>Festival</th>
                    <th>Ülke</th>
                    <th>Açıklama</th>
                  </tr>
                </thead>

                <tbody>
                  {analyzedRows.map(
                    (item, index) => (
                      <tr
                        key={`${item.festivalName}-${item.country}-${index}`}
                      >
                        <td>
                          <input
                            type="checkbox"
                            checked={
                              item.selected
                            }
                            disabled={
                              item.status !== 'new'
                            }
                            onChange={(event) =>
                              updateSelection(
                                index,
                                event.target
                                  .checked
                              )
                            }
                          />
                        </td>

                        <td>
                          <span
                            className={`import-status import-status-${item.status}`}
                          >
                            {item.status.toUpperCase()}
                          </span>
                        </td>

                        <td>
                          <strong>
                            {item.festivalName}
                          </strong>
                        </td>

                        <td>{item.country}</td>

                        <td>{item.reason}</td>
                      </tr>
                    )
                  )}
                </tbody>
              </table>
            </div>
          </section>
        )}
    </>
  )
}

export default ImportPage