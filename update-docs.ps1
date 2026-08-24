# ==============================================================================
# Script Cap nhat Tai lieu OutSystems (O11 & ODC) tu dong
# Dam bao luon lay ban moi nhat tu upstream GitHub va loc bo cac file .git
# ==============================================================================

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host "   BAT DAU CAP NHAT TAI LIEU OUTSYSTEMS (O11 & ODC)  " -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan

$tempDir = Join-Path $PSScriptRoot ".temp_docs_sync"

# 1. Tao thu muc tam neu chua co
if (Test-Path $tempDir) {
    Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue
}
New-Item -ItemType Directory -Path $tempDir | Out-Null

# Ham dong bo cho tung repo
function Sync-DocRepo {
    param (
        [string]$RepoUrl,
        [string]$TargetFolder,
        [string]$RepoName
    )

    Write-Host "`n>>> Dang tai ban moi nhat cua $RepoName tu GitHub..." -ForegroundColor Yellow
    $clonePath = Join-Path $tempDir $TargetFolder
    
    # Clone shallow depth 1 vao thu muc tam
    git clone --depth 1 $RepoUrl $clonePath
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Loi khi clone $RepoName!" -ForegroundColor Red
        return
    }

    Write-Host ">>> Dang dong bo noi dung doc vao thu muc $TargetFolder..." -ForegroundColor Green
    $destPath = Join-Path $PSScriptRoot $TargetFolder
    if (-not (Test-Path $destPath)) {
        New-Item -ItemType Directory -Path $destPath | Out-Null
    }

    # Danh sach cac thu muc/file can giu lai
    $itemsToCopy = @("src", "images", "toc.yml", "metadata.yaml", "related.yml", "knowledge-needs.yaml", "README.md")

    foreach ($item in $itemsToCopy) {
        $sourceItem = Join-Path $clonePath $item
        $targetItem = Join-Path $destPath $item

        if (Test-Path $sourceItem) {
            # Neu la thu muc, xoa dich cu va copy moi
            if (Test-Path $targetItem) {
                Remove-Item -Path $targetItem -Recurse -Force -ErrorAction SilentlyContinue
            }
            Copy-Item -Path $sourceItem -Destination $targetItem -Recurse -Force
        }
    }

    Write-Host ">>> Hoan tat cap nhat cho $RepoName!" -ForegroundColor Green
}

# 2. Cap nhat O11 Docs
Sync-DocRepo -RepoUrl "https://github.com/OutSystems/docs-product.git" -TargetFolder "docs-product" -RepoName "OutSystems 11 (docs-product)"

# 3. Cap nhat ODC Docs
Sync-DocRepo -RepoUrl "https://github.com/OutSystems/docs-odc.git" -TargetFolder "docs-odc" -RepoName "OutSystems ODC (docs-odc)"

# 4. Don dep thu muc tam
Write-Host "`n>>> Dang don dep bo nho dem tam..." -ForegroundColor Yellow
Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "`n=====================================================" -ForegroundColor Cyan
Write-Host "   TAT CA TAI LIEU DA DUOC CAP NHAT LEN BAN MOI NHAT! " -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan