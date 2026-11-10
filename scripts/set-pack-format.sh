#!/usr/bin/env bash
# Pone en pack.mcmeta el formato de datapack (min_format y max_format) de tu version de Minecraft.
# El numero lo muestra el juego con el comando /version (o F3 + V).
set -euo pipefail

if [ $# -ne 1 ] || ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "Uso: $0 <numero de formato>" >&2
  exit 1
fi

aqui="$(cd "$(dirname "$0")/.." && pwd)"
sed -i -E "s/\"(min|max)_format\": [0-9]+/\"\1_format\": $1/" "$aqui/datapack/biblia/pack.mcmeta"
echo "min_format = max_format = $1"
