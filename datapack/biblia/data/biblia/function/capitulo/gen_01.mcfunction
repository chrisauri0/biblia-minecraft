# Genesis 1 (prototipo): la creacion. Se ejecuta como el jugador.
# Se puede repetir sin romper nada.

scoreboard players set @s biblia_cap 1

# Reloj de la creacion: vuelve a la oscuridad total (tick 0) y que corra
time of biblia:genesis set 0
time of biblia:genesis resume

# Plataforma pequena en la dimension de la creacion (se reemplaza por la construccion real)
execute in biblia:genesis run fill -3 79 -3 3 79 3 minecraft:black_concrete
execute in biblia:genesis run tp @s 0 81 0 0 0

title @s times 20 100 20
title @s subtitle {"text":"Genesis 1","color":"gray"}
title @s title {"text":"Al principio"}

tellraw @s {"text":"Todo era vacio y oscuridad.","color":"gray"}

# A los 8 segundos aparece la luz
schedule function biblia:capitulo/gen_01_luz 160t
