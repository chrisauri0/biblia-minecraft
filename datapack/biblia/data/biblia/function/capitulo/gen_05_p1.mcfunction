# Pilar 1: Adan.
function biblia:tierra/en_pilar {x:-13,xc:-12.5,nombre:"Adan",edad:"930"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:3-5: Adan vivio 930 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p2 120t
