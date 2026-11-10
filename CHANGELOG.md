# Changelog

## 0.1.0 (prototipo, sin publicar)

- Proyecto base del mod de Fabric para Minecraft 26.2.
- Datapack con marcadores de capitulo, salto por `/trigger biblia_saltar`, dimension `biblia:genesis` y un primer paso de Genesis 1 (dia 1).

## 0.1.5 (prototipo)

- Genesis 1 completo en borrador: dias 2 a 7 (cielo azul, oceano, isla con arboles, sol/luna/estrellas, peces y aves, animales, Adan y Eva, descanso), luego paso al Eden.
- La timeline del cielo se genera con `scripts/generar-timeline.py`.
- El capitulo se puede repetir (limpia lo construido) y gen_02 cancela lo programado.
- 0.1.6: fondo marino con corales, algas y pepinos; mas variedad de peces; menos pasto, mas flores y 10 tipos de arboles (scripts/generar-escenas.py).
- 0.1.7: Genesis 2 y 3 (Eden) como escena narrada: jardin, rios, dos arboles, Adan, animales, Eva, serpiente, expulsion. Funcion central biblia:eden/en.
- 0.1.8: el Eden usa altura fija y=64 (mundo superplano de vacio) y camino de salida.
- 0.1.9: Genesis 4 (Cain y Abel, ciudad de Enoc) y Genesis 5 (genealogia en pilares) en la Tierra de Nod, via biblia:tierra/en.
