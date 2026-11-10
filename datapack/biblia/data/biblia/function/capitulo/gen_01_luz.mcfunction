# Dia 1: aparece la luz (el cielo se aclara solo segun la timeline biblia:creacion).
execute as @a at @s if dimension biblia:genesis run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute as @a at @s if dimension biblia:genesis run tellraw @s {"text":"Y la luz aparecio.","color":"yellow"}
schedule function biblia:capitulo/gen_01_fin 300t
