#!/usr/bin/env bash
# Copia el .jar compilado del mod a la carpeta mods de una instancia.
# Uso: scripts/instalar-mod.sh <carpeta mods de la instancia>
# Primero compila con: ./gradlew build
set -euo pipefail

mods="${1:?Uso: $0 <carpeta mods de la instancia>}"
aqui="$(cd "$(dirname "$0")/.." && pwd)"

jar="$(find "$aqui/build/libs" -maxdepth 1 -name 'biblia-*.jar' ! -name '*-sources.jar' | head -n1)"
if [ -z "$jar" ]; then
  echo "No hay .jar en build/libs. Compila primero con ./gradlew build" >&2
  exit 1
fi

mkdir -p "$mods"
rm -f "$mods"/biblia-*.jar
cp "$jar" "$mods/"
echo "Mod instalado: $mods/$(basename "$jar")"
