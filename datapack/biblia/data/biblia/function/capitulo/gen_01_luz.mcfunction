# Genesis 1, dia 1 (prototipo): aparece la luz.
# Se ejecuta como el servidor. El cielo se aclara solo, segun la timeline biblia:creacion
# (tick 160 a 460 del reloj biblia:genesis).

execute as @a at @s if dimension biblia:genesis run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute as @a at @s if dimension biblia:genesis run tellraw @s {"text":"Y la luz aparecio.","color":"yellow"}

# Cuando termina el cambio de luz (tick 460), se detiene el reloj
schedule function biblia:capitulo/gen_01_fin 300t
