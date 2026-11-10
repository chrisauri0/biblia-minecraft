# Pilar 5: Mahalaleel.
function biblia:tierra/en_pilar {x:-1,xc:-0.5,nombre:"Mahalaleel",edad:"895"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:15-17: Mahalaleel vivio 895 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p6 120t
