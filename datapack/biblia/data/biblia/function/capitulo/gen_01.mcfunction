# Genesis 1: la creacion en siete dias. Se ejecuta como el jugador.
# Se puede repetir sin romper nada: cancela lo programado y limpia lo construido.

function biblia:capitulo/cancelar_todo
function biblia:capitulo/gen_01_limpiar

scoreboard players set @s biblia_cap 1

# Reloj de la creacion: vuelve a la oscuridad total (tick 0) y que corra
time of biblia:genesis set 0
time of biblia:genesis resume

# Plataforma pequena (se reemplaza por la construccion real)
execute in biblia:genesis run fill -3 79 -3 3 79 3 minecraft:black_concrete
execute in biblia:genesis run tp @s 0 81 0 0 0

title @s times 20 100 20
title @s subtitle {"text":"Genesis 1","color":"gray"}
title @s title {"text":"Al principio"}

tellraw @s {"text":"Todo era vacio y oscuridad.","color":"gray"}

# Linea de tiempo (ticks del reloj): 160 luz, 460 fin dia 1, 1000 dia 2, 2000 dia 3, 3000 dia 4,
# 5400 dia 5, 7800 dia 6, 10200 dia 7, 12600 final
schedule function biblia:capitulo/gen_01_luz 160t
