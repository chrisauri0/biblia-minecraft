# Fin del prototipo del Eden: los jugadores salen por el oriente.
execute as @a[scores={biblia_cap=3}] at @s run function biblia:eden/en {f:"salida"}
tellraw @a[scores={biblia_cap=3}] {"text":"(Prueba) Fin del prototipo del Eden. Siguiente: Genesis 4.","color":"gray"}
scoreboard players set @a[scores={biblia_cap=3}] biblia_cap 4
