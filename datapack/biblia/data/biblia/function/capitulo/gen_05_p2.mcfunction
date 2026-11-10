# Pilar 2: Set.
function biblia:tierra/en_pilar {x:-10,xc:-9.5,nombre:"Set",edad:"912"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:6-8: Set vivio 912 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p3 120t
