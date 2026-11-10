#!/usr/bin/env bash
# Copia el datapack a la carpeta de un mundo de Minecraft.
# Uso: scripts/instalar-datapack.sh <carpeta del mundo>   (por ejemplo, la de saves/biblia)
set -euo pipefail

mundo="${1:?Uso: $0 <carpeta del mundo>}"
aqui="$(cd "$(dirname "$0")/.." && pwd)"

if [ ! -f "$mundo/level.dat" ]; then
  echo "Eso no parece un mundo de Minecraft: falta level.dat en $mundo" >&2
  exit 1
fi

mkdir -p "$mundo/datapacks"
rm -rf "$mundo/datapacks/biblia"
cp -r "$aqui/datapack/biblia" "$mundo/datapacks/biblia"
echo "Datapack instalado en $mundo/datapacks/biblia. Usa /reload en el juego."
