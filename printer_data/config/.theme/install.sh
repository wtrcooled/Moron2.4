#!/usr/bin/env bash
set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/printer_data/config/.theme"

if [ ! -d "${HOME}/printer_data/config" ]; then
  echo "Could not find ${HOME}/printer_data/config"
  echo "Run this as the same user that owns your Klipper/Mainsail installation."
  exit 1
fi

if [ -d "$DEST" ] && [ "$(find "$DEST" -mindepth 1 -maxdepth 1 2>/dev/null | head -n 1)" ]; then
  BACKUP="${HOME}/printer_data/config/.theme.backup-$(date +%Y%m%d-%H%M%S)"
  echo "Backing up current theme to: $BACKUP"
  cp -a "$DEST" "$BACKUP"
fi

mkdir -p "$DEST"

for f in custom.css main-background.png sidebar-background.png sidebar-logo.png favicon-16x16.png favicon-32x32.png; do
  cp -f "$SRC_DIR/$f" "$DEST/$f"
done

echo
echo "Rem & Ram theme installed to:"
echo "  $DEST"
echo
echo "Now hard-refresh Mainsail (Ctrl+Shift+R)."
