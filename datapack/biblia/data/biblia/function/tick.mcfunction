# Se ejecuta cada tick.

# Los jugadores nuevos empiezan en la creacion
execute as @a[tag=!biblia_inicio] at @s run function biblia:inicio

# Salto de capitulo
scoreboard players enable @a biblia_saltar
execute as @a[scores={biblia_saltar=1..}] run function biblia:saltar
