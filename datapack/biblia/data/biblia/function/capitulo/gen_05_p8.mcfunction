# Pilar 8: Matusalen.
function biblia:tierra/en_pilar {x:8,xc:8.5,nombre:"Matusalen",edad:"969"}
execute as @a[scores={biblia_cap=5}] at @s run tellraw @s {"text":"Genesis 5:25-27: Matusalen vivio 969 anos, el mas longevo de todos.","color":"yellow"}
schedule function biblia:capitulo/gen_05_p9 120t
