# Fin de Genesis 3: los jugadores salen del Eden por el oriente y, poco despues, llegan a la Tierra de Nod.
execute as @a[scores={biblia_cap=3}] at @s run function biblia:eden/en {f:"salida"}
scoreboard players set @a[scores={biblia_cap=3}] biblia_cap 4
schedule function biblia:capitulo/gen_04_llegada 300t
