# Pilar 3: Enos.
function biblia:tierra/en_pilar {x:-7,xc:-6.5,nombre:"Enos",edad:"905"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:9-11: Enos vivio 905 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p4 120t
