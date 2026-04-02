#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="$HOME/.local/bin"
LINK="$INSTALL_DIR/ihome"

mkdir -p "$INSTALL_DIR"

if [ -L "$LINK" ] || [ -e "$LINK" ]; then
    echo "Removing existing $LINK"
    rm "$LINK"
fi

ln -s "$SCRIPT_DIR/ihome" "$LINK"
echo "Installed ihome -> $LINK"
