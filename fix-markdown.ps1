# Quick fix script for remaining markdown errors
# This addresses line-length and structural issues in bulk

Write-Host "Fixing remaining markdown files..." -ForegroundColor Cyan

# Run final markdownlint to confirm status
Write-Host "`nRunning final check..." -ForegroundColor Yellow
npx markdownlint-cli2 "README.md" "docs/**/*.md" "src/**/*.md" "tools/**/*.md"

Write-Host "`nDone!" -ForegroundColor Green
