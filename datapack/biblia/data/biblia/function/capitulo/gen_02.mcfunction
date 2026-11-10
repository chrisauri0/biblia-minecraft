# Genesis 2: el Eden (marcador de posicion). Se ejecuta como el jugador.
# TODO: reemplazar las coordenadas por las del Eden en el mapa principal.

scoreboard players set @s biblia_cap 2
execute in minecraft:overworld run tp @s 0 100 0 0 0
tellraw @s {"text":"El Eden aun no esta construido.","color":"gray"}
