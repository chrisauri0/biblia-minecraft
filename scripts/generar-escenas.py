#!/usr/bin/env python3
"""Genera la decoracion de Genesis 1 (corales, vegetacion, peces) con semilla fija.
Uso: python3 -I scripts/generar-escenas.py   (reescribe 3 funciones en datapack/.../capitulo/)"""
import random, pathlib
C = pathlib.Path(__file__).resolve().parent.parent / "datapack/biblia/data/biblia/function/capitulo"
G = "execute in biblia:genesis run "

def lejos(p, lista, d):
    return all((p[0]-q[0])**2 + (p[1]-q[1])**2 >= d*d for q in lista)

# ---------- Dia 2: fondo marino ----------
r = random.Random(2)
L = ["# Dia 2: corales, algas y pepinos de mar en el fondo (generado por scripts/generar-escenas.py)"]
tipos = ["tube", "brain", "bubble", "fire", "horn"]
for _ in range(70):
    x, z = r.randint(-23, 23), r.randint(-23, 23)
    t = r.choice(tipos)
    L.append(f"{G}setblock {x} 61 {z} minecraft:{t}_coral_block")
    k = r.random()
    if k < .4:
        L.append(f"{G}setblock {x} 62 {z} minecraft:{r.choice(tipos)}_coral[waterlogged=true]")
    elif k < .8:
        L.append(f"{G}setblock {x} 62 {z} minecraft:{r.choice(tipos)}_coral_fan[waterlogged=true]")
    elif k < .9:
        L.append(f"{G}setblock {x} 62 {z} minecraft:sea_pickle[pickles={r.randint(1,4)},waterlogged=true]")
for _ in range(40):
    x, z = r.randint(-23, 23), r.randint(-23, 23)
    L.append(f"{G}setblock {x} 61 {z} minecraft:seagrass")
for _ in range(18):
    x, z = r.randint(-23, 23), r.randint(-23, 23)
    L.append(f"{G}fill {x} 61 {z} {x} {61+r.randint(3,8)} {z} minecraft:kelp")
(C/"gen_01_dia2_fondo.mcfunction").write_text("\n".join(L)+"\n")

# ---------- Dia 3: vegetacion ----------
r = random.Random(3)
L = ["# Dia 3: pocas hierbas, muchas flores y arboles variados (generado por scripts/generar-escenas.py)"]
def en_isla(x, z):
    return (abs(x) <= 8 and abs(z) <= 8) or (abs(x) <= 10 and abs(z) <= 6) or (abs(z) <= 10 and abs(x) <= 6)
arboles = []
tipos_arbol = ["oak","oak","birch","birch","spruce","spruce","cherry","acacia","jungle","dark_oak"]
intentos = 0
while len(arboles) < 11 and intentos < 500:
    intentos += 1
    x, z = r.randint(-9, 9), r.randint(-9, 9)
    if en_isla(x, z) and abs(x) + abs(z) > 5 and lejos((x, z), arboles, 5):
        arboles.append((x, z))
usadas = set(arboles)
for i, (x, z) in enumerate(arboles):
    t = tipos_arbol[i % len(tipos_arbol)]
    if t == "spruce":
        L.append(f"{G}fill {x-2} 82 {z-2} {x+2} 83 {z+2} minecraft:spruce_leaves")
        L.append(f"{G}fill {x-1} 84 {z-1} {x+1} 85 {z+1} minecraft:spruce_leaves")
        L.append(f"{G}setblock {x} 86 {z} minecraft:spruce_leaves")
        L.append(f"{G}fill {x} 80 {z} {x} 85 {z} minecraft:spruce_log")
    else:
        alto = 6 if t == "dark_oak" else 4
        top = 80 + alto
        L.append(f"{G}fill {x-2} {top-1} {z-2} {x+2} {top} {z+2} minecraft:{t}_leaves")
        L.append(f"{G}fill {x-1} {top+1} {z-1} {x+1} {top+1} {z+1} minecraft:{t}_leaves")
        L.append(f"{G}fill {x} 80 {z} {x} {top} {z} minecraft:{t}_log")
flores = ["poppy","dandelion","blue_orchid","allium","azure_bluet","red_tulip","orange_tulip",
          "white_tulip","pink_tulip","oxeye_daisy","cornflower","lily_of_the_valley"]
altas = ["lilac","rose_bush","peony","sunflower"]
libres = [(x, z) for x in range(-9, 10) for z in range(-9, 10)
          if en_isla(x, z) and (x, z) not in usadas and abs(x) + abs(z) > 3
          and all(abs(x-a) + abs(z-b) > 1 for a, b in arboles)]
r.shuffle(libres)
for x, z in libres[:45]:
    L.append(f"{G}setblock {x} 80 {z} minecraft:{r.choice(flores)}")
for x, z in libres[45:51]:
    a = r.choice(altas)
    L.append(f"{G}setblock {x} 80 {z} minecraft:{a}[half=lower]")
    L.append(f"{G}setblock {x} 81 {z} minecraft:{a}[half=upper]")
for x, z in libres[51:68]:
    L.append(f"{G}setblock {x} 80 {z} minecraft:short_grass")
for x, z in libres[68:72]:
    L.append(f"{G}setblock {x} 80 {z} minecraft:fern")
(C/"gen_01_dia3_vegetacion.mcfunction").write_text("\n".join(L)+"\n")

# ---------- Dia 5: peces ----------
r = random.Random(5)
L = ["# Dia 5: peces y criaturas marinas (generado por scripts/generar-escenas.py)"]
cuota = [("cod",5),("salmon",5),("tropical_fish",14),("pufferfish",4),("squid",4),("glow_squid",2),("dolphin",2),("axolotl",3)]
for t, n in cuota:
    for _ in range(n):
        x, z = r.randint(-21, 21), r.randint(-21, 21)
        y = r.randint(64, 72)
        L.append(f"{G}summon minecraft:{t} {x} {y} {z} {{Tags:[\"biblia_gen\"],PersistenceRequired:1b}}")
for _ in range(5):
    x, z = r.randint(-6, 6), r.randint(-6, 6)
    L.append(f"{G}summon minecraft:parrot {x} 88 {z} {{Tags:[\"biblia_gen\"],PersistenceRequired:1b}}")
(C/"gen_01_dia5_peces.mcfunction").write_text("\n".join(L)+"\n")
print("ok", len(arboles), "arboles")

# ---------- Eden: jardin (coordenadas relativas al centro; ~ = primer aire sobre el suelo) ----------
E = pathlib.Path(__file__).resolve().parent.parent / "datapack/biblia/data/biblia/function/eden"
E.mkdir(parents=True, exist_ok=True)
r = random.Random(7)
VIDA, CIENCIA = (8, -8), (-8, 8)
reservados = [VIDA, CIENCIA, (7, 6), (9, 6), (4, 5)]
def rel(n): return f"~{n}"
L = ["# Eden: arboles, flores y arbustos (generado por scripts/generar-escenas.py). Posicion = centro del Eden."]
def copa(x, z, top, t):
    L.append(f"fill ~{x-2} ~{top-1} ~{z-2} ~{x+2} ~{top} ~{z+2} minecraft:{t}")
    L.append(f"fill ~{x-1} ~{top+1} ~{z-1} ~{x+1} ~{top+1} ~{z+1} minecraft:{t}")
# Arbol de la vida: luminoso (shroomlight entre las hojas)
x, z = VIDA; top = 7
copa(x, z, top, "oak_leaves")
for dx, dy, dz in [(2,-1,0),(-2,-1,0),(0,-1,2),(0,-1,-2),(2,0,1),(-2,0,-1),(1,1,1)]:
    L.append(f"setblock ~{x+dx} ~{top+dy} ~{z+dz} minecraft:shroomlight")
L.append(f"fill ~{x} ~0 ~{z} ~{x} ~{top} ~{z} minecraft:oak_log")
# Arbol de la ciencia del bien y del mal: frutos rojos (nether_wart_block)
x, z = CIENCIA; top = 6
copa(x, z, top, "oak_leaves")
for dx, dy, dz in [(2,-1,1),(-2,-1,-1),(1,-1,2),(-1,-1,-2),(2,0,0),(-2,0,0),(0,1,1)]:
    L.append(f"setblock ~{x+dx} ~{top+dy} ~{z+dz} minecraft:nether_wart_block")
L.append(f"fill ~{x} ~0 ~{z} ~{x} ~{top} ~{z} minecraft:oak_log")
# Arboles del jardin
arboles = []
tipos = ["oak","cherry","birch","jungle","oak","cherry","birch","oak","acacia"]
n = 0
while len(arboles) < 9 and n < 800:
    n += 1
    x, z = r.randint(-14, 14), r.randint(-14, 14)
    if abs(x) >= 3 and abs(z) >= 3 and lejos((x, z), arboles + reservados, 5):
        arboles.append((x, z))
for i, (x, z) in enumerate(arboles):
    t = tipos[i]; top = 4
    copa(x, z, top, f"{t}_leaves")
    L.append(f"fill ~{x} ~0 ~{z} ~{x} ~{top} ~{z} minecraft:{t}_log")
flores = ["poppy","dandelion","blue_orchid","allium","azure_bluet","red_tulip","orange_tulip",
          "white_tulip","pink_tulip","oxeye_daisy","cornflower","lily_of_the_valley"]
altas = ["lilac","rose_bush","peony"]
ocupado = set(arboles) | set(reservados)
libres = [(x, z) for x in range(-14, 15) for z in range(-14, 15)
          if abs(x) >= 3 and abs(z) >= 3
          and all(abs(x-a) + abs(z-b) > 2 for a, b in arboles + reservados)]
r.shuffle(libres)
for x, z in libres[:60]:
    L.append(f"setblock ~{x} ~ ~{z} minecraft:{r.choice(flores)}")
for x, z in libres[60:68]:
    a = r.choice(altas)
    L.append(f"setblock ~{x} ~ ~{z} minecraft:{a}[half=lower]")
    L.append(f"setblock ~{x} ~1 ~{z} minecraft:{a}[half=upper]")
for x, z in libres[68:78]:
    L.append(f"setblock ~{x} ~ ~{z} minecraft:sweet_berry_bush[age=3]")
for x, z in libres[78:90]:
    L.append(f"setblock ~{x} ~ ~{z} minecraft:short_grass")
for x, z in libres[90:94]:
    L.append(f"setblock ~{x} ~ ~{z} minecraft:fern")
for dx, dz in [(-1,1),(1,-1),(0,-1),(1,1)]:
    L.append(f"setblock ~{dx} ~ ~{dz} minecraft:lily_pad")
(E/"jardin.mcfunction").write_text("\n".join(L)+"\n")
print("jardin:", len(L), "lineas")
