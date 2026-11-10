# Dia 2 (tick 1000): el firmamento separa las aguas. El cielo se vuelve azul (timeline).
# Fondo de arena, paredes invisibles de barrera y agua encima.
execute in biblia:genesis run fill -25 59 -25 25 60 25 minecraft:sandstone
execute in biblia:genesis run fill -25 59 -25 -25 78 25 minecraft:barrier
execute in biblia:genesis run fill 25 59 -25 25 78 25 minecraft:barrier
execute in biblia:genesis run fill -24 59 -25 24 78 -25 minecraft:barrier
execute in biblia:genesis run fill -24 59 25 24 78 25 minecraft:barrier
execute in biblia:genesis run fill -24 61 -24 24 69 24 minecraft:water
execute in biblia:genesis run fill -24 70 -24 24 78 24 minecraft:water
function biblia:capitulo/gen_01_dia2_fondo

execute as @a at @s if dimension biblia:genesis run function biblia:capitulo/gen_01_aviso {titulo:"Segundo dia",ref:"Genesis 1:6-8",texto:"Dios hizo el firmamento y separo las aguas de abajo de las aguas de arriba."}
schedule function biblia:capitulo/gen_01_dia3 1000t
