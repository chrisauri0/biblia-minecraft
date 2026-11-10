# Genesis 4:17-22: la ciudad de Enoc, las tiendas de Jabal, la musica de Jubal y la fragua de Tubal-Cain.
# Dos casas de piedra (la ciudad de Enoc)
fill ~-14 ~ ~8 ~-10 ~3 ~12 minecraft:stone_bricks hollow
setblock ~-12 ~ ~8 minecraft:air
setblock ~-12 ~1 ~8 minecraft:air
fill ~-14 ~4 ~8 ~-10 ~4 ~12 minecraft:stone_brick_slab
fill ~-8 ~ ~8 ~-4 ~3 ~12 minecraft:stone_bricks hollow
setblock ~-6 ~ ~8 minecraft:air
setblock ~-6 ~1 ~8 minecraft:air
fill ~-8 ~4 ~8 ~-4 ~4 ~12 minecraft:stone_brick_slab
# Dos tiendas de lana (Jabal)
fill ~0 ~ ~8 ~4 ~2 ~12 minecraft:white_wool hollow
setblock ~2 ~ ~8 minecraft:air
setblock ~2 ~1 ~8 minecraft:air
fill ~6 ~ ~8 ~10 ~2 ~12 minecraft:red_wool hollow
setblock ~8 ~ ~8 minecraft:air
setblock ~8 ~1 ~8 minecraft:air
# Instrumentos (Jubal)
setblock ~1 ~ ~6 minecraft:note_block
setblock ~2 ~ ~6 minecraft:note_block
setblock ~3 ~ ~6 minecraft:note_block
# Fragua (Tubal-Cain)
fill ~12 ~ ~8 ~12 ~2 ~8 minecraft:oak_log
fill ~15 ~ ~8 ~15 ~2 ~8 minecraft:oak_log
fill ~12 ~ ~12 ~12 ~2 ~12 minecraft:oak_log
fill ~15 ~ ~12 ~15 ~2 ~12 minecraft:oak_log
fill ~12 ~3 ~8 ~15 ~3 ~12 minecraft:oak_planks
setblock ~13 ~ ~10 minecraft:anvil
setblock ~14 ~ ~10 minecraft:blast_furnace[facing=west,lit=true]
setblock ~14 ~ ~11 minecraft:iron_block
# Habitantes
summon minecraft:villager ~-12 ~ ~6 {Tags:["biblia_tierra"],CustomName:"Enoc",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
summon minecraft:villager ~2 ~ ~5 {Tags:["biblia_tierra"],CustomName:"Jabal",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
summon minecraft:villager ~3 ~ ~4 {Tags:["biblia_tierra"],CustomName:"Jubal",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
summon minecraft:villager ~13 ~ ~9 {Tags:["biblia_tierra"],CustomName:"Tubal-Cain",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
# Cain llega a su ciudad
tp @e[tag=biblia_cain] ~-8 ~ ~6
effect clear @e[tag=biblia_cain] minecraft:glowing
# Musica
playsound minecraft:block.note_block.harp master @a ~2 ~1 ~6 2 0.8
playsound minecraft:block.note_block.harp master @a ~2 ~1 ~6 2 1.0
playsound minecraft:block.note_block.harp master @a ~2 ~1 ~6 2 1.2
playsound minecraft:block.note_block.flute master @a ~2 ~1 ~6 2 1.5
playsound minecraft:block.anvil.use master @a ~13 ~1 ~10 1 1
