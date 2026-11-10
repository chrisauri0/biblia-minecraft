# Borra todo lo construido en la dimension de la creacion (zona -25..25) y los animales de la creacion.
execute in biblia:genesis run fill -25 59 -25 25 66 25 minecraft:air
execute in biblia:genesis run fill -25 67 -25 25 74 25 minecraft:air
execute in biblia:genesis run fill -25 75 -25 25 82 25 minecraft:air
execute in biblia:genesis run fill -25 83 -25 25 90 25 minecraft:air
execute in biblia:genesis run kill @e[tag=biblia_gen]
