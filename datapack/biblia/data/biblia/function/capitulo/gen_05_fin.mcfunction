# Fin de Genesis 5 y del tramo actual.
execute as @a[scores={biblia_cap=5}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Noe",ref:"Genesis 5:28-29",texto:"Lamec dijo de su hijo Noe: este nos aliviara de nuestra obra y del trabajo de nuestras manos en la tierra que Dios maldijo."}
tellraw @a[scores={biblia_cap=5}] {"text":"(Prueba) Fin del tramo actual. Siguiente: Genesis 6, el arca.","color":"gray"}
scoreboard players set @a[scores={biblia_cap=5}] biblia_cap 6
