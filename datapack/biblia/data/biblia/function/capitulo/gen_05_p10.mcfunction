# Pilar 10: Noe.
function biblia:tierra/en_pilar {x:14,xc:14.5,nombre:"Noe",edad:"950"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:32; 9:29: Noe tenia 500 anos cuando tuvo a Sem, Cam y Jafet.","color":"yellow"}
schedule function biblia:capitulo/gen_05_fin 200t
