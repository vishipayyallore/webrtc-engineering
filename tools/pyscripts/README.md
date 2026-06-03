# Python Tools

**Location**: `tools/pyscripts/`

These are small Python utilities for extracting/staging content and supporting my learning workflow.
They are designed to be run inside the repo's virtual environment.

## Shared module

### `_common.py`

Small helpers (for example `is_within` for path checks). Import from sibling scripts when useful.

### `task_check.py`

Portable repository-health summary for duplicate Markdown, notebook JSON parsing, `source-material/`
extension counts, and public references to `source-material/`.

```powershell
uv run python tools/pyscripts/task_check.py --json
```

## Tools

### `pdf_to_md.py`

Raw PDF → Markdown extraction (staging artifact).

```powershell
uv run python tools/pyscripts/pdf_to_md.py --input "source-material\livesessions" --recursive --output-same-folder
```

### `pdf_to_markdown.py`

Single PDF → Markdown (one file in, one file out). Uses PyMuPDF when available, else pypdf.
**Default:** if you omit the output path, the `.md` file is created in the **same folder** as the PDF (same stem, `.md` extension).

```powershell
# Output in same folder as PDF
uv run python tools/pyscripts/pdf_to_markdown.py "source-material/some-handout.pdf"

# Or specify output path
uv run python tools/pyscripts/pdf_to_markdown.py path/to/file.pdf path/to/output.md
```

### `pptx_to_md.py`

Raw PPTX → Markdown extraction (staging artifact). Optionally extracts embedded images.

```powershell
uv run python tools/pyscripts/pptx_to_md.py --input "C:\path\deck.pptx" --extract-images --include-notes
```

### Batch: all PDF + PPTX under `source-material/` (colocated `.md`)

From repo root (also runs `pptx_to_md.py`):

```powershell
.\tools\psscripts\Convert-SourceMaterialPdfsToMarkdown.ps1
```

Equivalent manual invocations:

```powershell
uv run python tools/pyscripts/pdf_to_md.py --input source-material --recursive --output-same-folder
uv run python tools/pyscripts/pptx_to_md.py --input source-material --recursive --output-same-folder
```

### `video_to_transcript.py`

Video/audio → Markdown transcript (OpenAI Whisper, local). Output by default in the same folder as the media file.

```powershell
# Single file
uv run python tools/pyscripts/video_to_transcript.py --input "path\to\video.mp4"

# All media under a folder (for example source-material)
uv run python tools/pyscripts/video_to_transcript.py --input "source-material" --recursive
```

Requires: `uv sync --extra transcript` (or `pip install openai-whisper`) and ffmpeg on PATH for video.

### `md_to_pdf_reportlab.py`

Generic Markdown (subset) → PDF via **ReportLab**. Use for notes or report exports that stay within the supported constructs (see the script docstring).

```powershell
uv run python tools/pyscripts/md_to_pdf_reportlab.py --input path/to/report.md --output path/to/out.pdf --title "Title" --author "Swamy PKV"
```
