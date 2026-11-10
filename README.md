# Minecraft Biblia

Mundo de Minecraft Java (26.2) que cuenta la historia de la Biblia en orden cronologico. El mundo empieza en Genesis 1, la creacion, en una dimension propia (`biblia:genesis`), y sigue en el mapa principal desde Genesis 2.

## Como esta organizado

| Carpeta | Para que sirve |
| --- | --- |
| `src/` | El mod de Fabric: interfaz, personajes animados, camara y mecanicas que el datapack no puede hacer |
| `datapack/biblia/` | La logica de la historia: capitulo de cada jugador, salto de capitulos, dimension de la creacion |
| `scripts/` | Scripts para instalar el datapack y el mod en tus pruebas |

Regla del proyecto: la logica de la historia va en el datapack y el mod solo se ocupa de lo visual. Asi, cuando salga una version nueva de Minecraft, el mapa sigue funcionando y solo hay que portar el mod.

## Estado actual

Esto es un esqueleto. **No se compilo ni se probo dentro de Minecraft**: se escribio sin poder descargar dependencias ni abrir el juego. Hay que verificarlo en tu maquina siguiendo los pasos de abajo.

Las versiones de Fabric (loader 0.19.3, Loom 1.17-SNAPSHOT, Fabric API 0.156.0+26.2) salen de la rama 26.2 del repositorio oficial `FabricMC/fabric-example-mod`. Revisalas en https://fabricmc.net/develop antes de compilar.

## Primeros pasos en NixOS

1. Entra al entorno: `nix develop`. Si `jdk25` no existe en tu nixpkgs, busca la version con `nix search nixpkgs jdk` y ajusta `flake.nix`.
2. Crea el wrapper de Gradle (solo la primera vez): `gradle wrapper --gradle-version latest`.
3. Compila el mod: `./gradlew build`. El resultado queda en `build/libs/`.
4. En Prism Launcher, usa una instancia de 26.2 con Fabric y Fabric API. Copia el mod a su carpeta de mods: `scripts/instalar-mod.sh <carpeta mods de la instancia>`.
5. Crea un mundo nuevo en esa instancia (modo creativo, sin estructuras).
6. Instala el datapack en el mundo: `scripts/instalar-datapack.sh <carpeta del mundo>`.
7. Dentro del juego, ejecuta `/version` y anota el formato de datapack. Ponlo con `scripts/set-pack-format.sh <numero>`, vuelve a instalar el datapack y usa `/reload`.
8. Prueba el flujo: un jugador nuevo debe aparecer en la dimension de la creacion con el titulo "Al principio". Despues de unos 8 segundos aparece la luz.

Para saltar de capitulo, cualquier jugador (sin ser operador) usa `/trigger biblia_saltar set 1` (creacion) o `set 2` (Eden, aun sin construir).

## Cosas por verificar en 26.2

- El numero de `pack_format` y si `pack.mcmeta` necesita `min_format` y `max_format` en lugar de `pack_format`.
- Que el generador plano con capa vacia (`dimension/genesis.json`) cargue en 26.2.
- Que `/execute in biblia:genesis` funcione si la dimension viene de un datapack agregado a un mundo ya creado.
- Como controlar la hora y el cielo por dimension para los siete dias.

## Siguientes pasos

1. Dia 1 completo: oscuridad y luz con cielo propio.
2. Los demas dias de Genesis 1.
3. Paso al Eden en el mapa principal.
4. Primeras mecanicas del mod (pantalla de capitulos, personajes).
