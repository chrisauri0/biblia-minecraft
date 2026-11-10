# Pilar 4: Cainan.
function biblia:tierra/en_pilar {x:-4,xc:-3.5,nombre:"Cainan",edad:"910"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:12-14: Cainan vivio 910 anos y murio.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p5 120t
