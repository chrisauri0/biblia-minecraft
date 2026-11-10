#!/usr/bin/env python3
"""Genera datapack/biblia/data/biblia/timeline/creacion.json

El cielo de la creacion (reloj biblia:genesis). Ticks del reloj:
  0-460      dia 1: oscuridad total, luego aparece la luz (gris, sin sol)
  1000-1300  dia 2: el cielo se vuelve azul
  3000       dia 4: aparecen el sol, la luna y las estrellas
  3000+      dias 4 a 7: un ciclo de dia y noche por dia, de CICLO ticks cada uno

Si cambias CICLO o INICIO_DIA4, cambia tambien los tiempos de las funciones gen_01_diaN.
Uso: python3 scripts/generar-timeline.py
"""
import json, pathlib

CICLO = 2400        # ticks por dia de la creacion desde el dia 4 (2 minutos)
INICIO_DIA4 = 3000
N_CICLOS = 4        # dias 4, 5, 6 y 7

def t(c, vanilla_tick):
    """Tick del reloj para el tick vanilla (de 24000) dentro del ciclo c."""
    return round(INICIO_DIA4 + c * CICLO + vanilla_tick * CICLO / 24000)

def ciclos(puntos):
    """Repite los puntos (tick vanilla, valor) en cada ciclo."""
    return [(t(c, v), val) for c in range(N_CICLOS) for v, val in puntos]

def pista(puntos, modifier=None):
    ticks = [p[0] for p in puntos]
    assert ticks == sorted(set(ticks)), f"ticks no crecientes: {ticks}"
    d = {"keyframes": [{"ticks": a, "value": b} for a, b in puntos]}
    if modifier:
        d["modifier"] = modifier
    return d

fin = INICIO_DIA4 + N_CICLOS * CICLO

luz_nivel = [(0, 0.0), (160, 0.0), (460, 1.0)] + ciclos(
    [(133, 1.0), (11867, 1.0), (13670, 0.26666668), (22330, 0.26666668)])
luz_factor = [(0, 0.0), (160, 0.0), (460, 1.0)] + ciclos(
    [(730, 1.0), (11270, 1.0), (13140, 0.24), (22860, 0.24)])
luz_color = [(0, "#ffffff")] + ciclos(
    [(730, "#ffffff"), (11270, "#ffffff"), (13140, "#7a7aff"), (22860, "#7a7aff")])
cielo = [(0, "#000000"), (160, "#000000"), (460, "#c8c8c8"), (1000, "#c8c8c8"), (1300, "#78a7ff")] + ciclos(
    [(133, "#78a7ff"), (11867, "#78a7ff"), (13670, "#000000"), (22330, "#000000")])
niebla = [(0, "#000000"), (160, "#000000"), (460, "#c8c8c8"), (1000, "#c8c8c8"), (1300, "#c0d8ff")] + ciclos(
    [(133, "#c0d8ff"), (11867, "#c0d8ff"), (13670, "#0c0c16"), (22330, "#161616")])
estrellas = [(0, 0.0)] + ciclos(
    [(92, 0.037), (627, 0.0), (11373, 0.0), (11732, 0.016), (11959, 0.044), (12399, 0.143),
     (12729, 0.258), (13228, 0.5), (22772, 0.5), (23032, 0.364), (23356, 0.225), (23758, 0.101)])

# Angulos: 270 = sol en el horizonte al amanecer; da una vuelta (360) por ciclo.
def angulo(base):
    puntos = [(0, base - 90.0), (INICIO_DIA4 - 1, base - 90.0)]
    for c in range(N_CICLOS + 1):
        puntos.append((INICIO_DIA4 + c * CICLO, base + 270.0 + 360.0 * c))
    return puntos

sol = [(0, 180.0), (INICIO_DIA4 - 1, 180.0)] + [
    (INICIO_DIA4 + c * CICLO, 270.0 + 360.0 * c) for c in range(N_CICLOS + 1)]
luna = [(0, 180.0), (INICIO_DIA4 - 1, 180.0)] + [
    (INICIO_DIA4 + c * CICLO, 450.0 + 360.0 * c) for c in range(N_CICLOS + 1)]
estrellas_angulo = [(0, 270.0)] + [
    (INICIO_DIA4 + c * CICLO, 270.0 + 360.0 * c) for c in range(N_CICLOS + 1)]

timeline = {
    "clock": "biblia:genesis",
    "period_ticks": 24000,
    "tracks": {
        "minecraft:gameplay/sky_light_level": pista(luz_nivel, "multiply"),
        "minecraft:visual/sky_light_factor": pista(luz_factor, "multiply"),
        "minecraft:visual/sky_light_color": pista(luz_color, "multiply"),
        "minecraft:visual/sky_color": pista(cielo, "multiply"),
        "minecraft:visual/fog_color": pista(niebla, "multiply"),
        "minecraft:visual/star_brightness": pista(estrellas, "maximum"),
        "minecraft:visual/sun_angle": pista(sol),
        "minecraft:visual/moon_angle": pista(luna),
        "minecraft:visual/star_angle": pista(estrellas_angulo),
    },
}

salida = pathlib.Path(__file__).resolve().parent.parent / "datapack/biblia/data/biblia/timeline/creacion.json"
salida.write_text(json.dumps(timeline, indent="\t") + "\n")
print(f"Escrito {salida} (el reloj llega hasta el tick {fin})")
