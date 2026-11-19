#!/usr/bin/env bash
# ==============================================================================
# Script Dong bo & Cache Tai lieu OutSystems (O11 & ODC) cho Linux / Cloud VM
# - Tu dong luu cache vao ~/.gemini/outsystems-docs-cache/outsystems-docs.tar.gz
#   (thu muc ~/.gemini duoc giu nguyen giua cac Conversation).
# - Mac dinh: Khoi phuc cuc nhanh (~3 giay) tu cache neu da co, hoac tai moi tu GitHub.
# - Dung co --remote (./update-docs.sh --remote) khi muon keo ban moi nhat tu GitHub.
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

CACHE_DIR="${HOME}/.gemini/outsystems-docs-cache"
CACHE_ARCHIVE="${CACHE_DIR}/outsystems-docs.tar.gz"
FORCE_REMOTE=false

if [[ "${1:-}" == "--remote" || "${1:-}" == "-r" ]]; then
  FORCE_REMOTE=true
fi

echo "====================================================="
echo "   DONG BO TAI LIEU OUTSYSTEMS (O11 & ODC)           "
echo "====================================================="

# 1. Khoi phuc tu Persistent Cache (~/.gemini) neu co va khong ep tai moi
if [[ "$FORCE_REMOTE" == "false" && -f "$CACHE_ARCHIVE" ]]; then
  echo ">>> Tim thay cache tai: $CACHE_ARCHIVE"
  echo ">>> Dang giai nen docs-product va docs-odc vao workspace..."
  tar -xzf "$CACHE_ARCHIVE" -C "$SCRIPT_DIR"
  echo ">>> Hoan tat khoi phuc tu cache! (Dung './update-docs.sh --remote' neu muon tai ban moi tu GitHub)"
  exit 0
fi

# 2. Neu dang co san docs-product va docs-odc trong workspace ma chua co cache -> dong goi cache luon
if [[ "$FORCE_REMOTE" == "false" && -d "docs-product/src" && -d "docs-odc/src" && ! -f "$CACHE_ARCHIVE" ]]; then
  echo ">>> Da co san docs-product va docs-odc trong workspace."
  echo ">>> Dang luu vao bo nho ben vung: $CACHE_ARCHIVE ..."
  mkdir -p "$CACHE_DIR"
  tar -czf "$CACHE_ARCHIVE" docs-product docs-odc
  echo ">>> Da luu cache thanh cong! Cac conversation sau chi can chay './update-docs.sh' la co ngay."
  exit 0
fi

# 3. Tai moi tu GitHub
TEMP_DIR=".temp_docs_sync"
rm -rf "$TEMP_DIR"
mkdir -p "$TEMP_DIR"

sync_repo() {
  local repo_url="$1"
  local target_folder="$2"
  local repo_name="$3"

  echo ""
  echo ">>> Dang tai ban moi nhat cua $repo_name tu GitHub..."
  local clone_path="$TEMP_DIR/$target_folder"
  git clone --depth 1 "$repo_url" "$clone_path"

  echo ">>> Dang dong bo noi dung vao thu muc $target_folder..."
  mkdir -p "$target_folder"
  for item in src images toc.yml metadata.yaml related.yml knowledge-needs.yaml README.md; do
    if [[ -e "$clone_path/$item" ]]; then
      rm -rf "$target_folder/$item"
      mv "$clone_path/$item" "$target_folder/$item"
    fi
  done
  echo ">>> Hoan tat cap nhat cho $repo_name!"
}

sync_repo "https://github.com/OutSystems/docs-product.git" "docs-product" "OutSystems 11 (docs-product)"
sync_repo "https://github.com/OutSystems/docs-odc.git" "docs-odc" "OutSystems ODC (docs-odc)"

echo ""
echo ">>> Dang don dep thu muc tam..."
rm -rf "$TEMP_DIR"

echo ">>> Dang cap nhat cache ben vung tai $CACHE_ARCHIVE ..."
mkdir -p "$CACHE_DIR"
tar -czf "$CACHE_ARCHIVE" docs-product docs-odc

echo ""
echo "====================================================="
echo "   HOAN TAT CAP NHAT & LUU CACHE TAI LIEU!           "
echo "====================================================="
