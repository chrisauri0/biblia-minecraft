# Pilar 9: Lamec.
function biblia:tierra/en_pilar {x:11,xc:11.5,nombre:"Lamec",edad:"777"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:28-31: Lamec vivio 777 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p10 120t
