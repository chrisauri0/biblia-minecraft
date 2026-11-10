# Dia 3 (tick 2000): aparece la tierra seca y la vegetacion.
# Isla en forma de cruz redondeada (tierra y pasto sobre el agua)
execute in biblia:genesis run fill -11 75 -7 11 78 7 minecraft:dirt
execute in biblia:genesis run fill -7 75 -11 7 78 11 minecraft:dirt
execute in biblia:genesis run fill -9 75 -9 9 78 9 minecraft:dirt
execute in biblia:genesis run fill -11 79 -7 11 79 7 minecraft:grass_block
execute in biblia:genesis run fill -7 79 -11 7 79 11 minecraft:grass_block
execute in biblia:genesis run fill -9 79 -9 9 79 9 minecraft:grass_block
# Pasto, flores y arboles (generados)
function biblia:capitulo/gen_01_dia3_vegetacion

execute as @a at @s if dimension biblia:genesis run function biblia:capitulo/gen_01_aviso {titulo:"Tercer dia",ref:"Genesis 1:9-13",texto:"Las aguas se juntaron, aparecio la tierra seca y se cubrio de plantas y arboles."}
schedule function biblia:capitulo/gen_01_dia4 1000t
