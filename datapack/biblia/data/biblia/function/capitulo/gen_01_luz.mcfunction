# Genesis 1, dia 1 (prototipo): aparece la luz.
# Se ejecuta como el servidor, asi que busca a los jugadores que estan en la creacion.

execute in biblia:genesis run setblock 0 100 0 minecraft:sea_lantern
execute as @a at @s if dimension biblia:genesis run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute as @a at @s if dimension biblia:genesis run tellraw @s {"text":"Y la luz aparecio.","color":"yellow"}
