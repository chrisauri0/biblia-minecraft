# Pilar 6: Jared.
function biblia:tierra/en_pilar {x:2,xc:2.5,nombre:"Jared",edad:"962"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:18-20: Jared vivio 962 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p7 120t
