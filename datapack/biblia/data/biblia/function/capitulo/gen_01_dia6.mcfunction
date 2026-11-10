# Dia 6 (tick 7800): animales de la tierra y el ser humano.
execute in biblia:genesis run summon minecraft:cow 7 80 -1 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:cow -7 80 -2 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:cow 1 80 7 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:sheep -2 80 7 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:sheep 8 80 1 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:sheep -8 80 -1 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:pig 3 80 -8 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:pig -4 80 -8 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:horse 9 80 -3 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:horse -9 80 3 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:chicken 1 80 -2 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:chicken -1 80 4 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:chicken 4 80 8 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:wolf -3 80 -7 {Tags:["biblia_gen"],PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:villager -1 80 -1 {Tags:["biblia_gen"],CustomName:"Adan",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b}
execute in biblia:genesis run summon minecraft:villager 1 80 -1 {Tags:["biblia_gen"],CustomName:"Eva",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b}

execute as @a at @s if dimension biblia:genesis run function biblia:capitulo/gen_01_aviso {titulo:"Sexto dia",ref:"Genesis 1:24-31",texto:"La tierra se lleno de animales. Y Dios creo al hombre y a la mujer a su imagen."}
schedule function biblia:capitulo/gen_01_dia7 2400t
