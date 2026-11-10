# Construye el jardin de 33x33 (centro = posicion). Se puede repetir.
# Terreno plano de pasto sobre tierra, aire encima
fill ~-16 ~-8 ~-16 ~16 ~-2 ~16 minecraft:dirt
fill ~-16 ~-1 ~-16 ~16 ~-1 ~16 minecraft:grass_block
fill ~-16 ~ ~-16 ~16 ~14 ~16 minecraft:air
# Manantial central y cuatro rios (Genesis 2:10)
fill ~-2 ~-2 ~-2 ~2 ~-1 ~2 minecraft:water
fill ~3 ~-2 ~-1 ~12 ~-1 ~1 minecraft:water
fill ~-12 ~-2 ~-1 ~-3 ~-1 ~1 minecraft:water
fill ~-1 ~-2 ~3 ~1 ~-1 ~12 minecraft:water
fill ~-1 ~-2 ~-12 ~1 ~-1 ~-3 minecraft:water
# Arboles, flores y arbustos
function biblia:eden/jardin
