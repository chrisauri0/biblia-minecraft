# Pilar 7: Enoc.
function biblia:tierra/en_pilar {x:5,xc:5.5,nombre:"Enoc",edad:"365"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:21-24: Enoc camino con Dios, y desaparecio, porque le llevo Dios.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p8 120t
