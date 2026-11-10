#!/usr/bin/env bash
# Pone en pack.mcmeta el numero de formato de datapack de tu version de Minecraft.
# El numero lo muestra el juego con el comando /version (o F3 + V).
set -euo pipefail

if [ $# -ne 1 ] || ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "Uso: $0 <numero de formato>" >&2
  exit 1
fi

aqui="$(cd "$(dirname "$0")/.." && pwd)"
sed -i -E "s/\"pack_format\": [0-9]+/\"pack_format\": $1/" "$aqui/datapack/biblia/pack.mcmeta"
echo "pack_format = $1"
