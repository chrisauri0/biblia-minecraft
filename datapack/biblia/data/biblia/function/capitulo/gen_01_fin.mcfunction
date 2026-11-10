# Fin del dia 1 (tick 460).
execute as @a at @s if dimension biblia:genesis run tellraw @s {"text":"Dios vio que la luz era buena y la separo de las tinieblas. Fue el primer dia.","color":"yellow"}
schedule function biblia:capitulo/gen_01_dia2 540t
