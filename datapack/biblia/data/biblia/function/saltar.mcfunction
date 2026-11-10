# El jugador uso /trigger biblia_saltar set <n>. Se ejecuta como ese jugador.
execute if score @s biblia_saltar matches 1 run function biblia:capitulo/gen_01
execute if score @s biblia_saltar matches 2 run function biblia:capitulo/gen_02
execute if score @s biblia_saltar matches 3 run function biblia:capitulo/gen_03
execute if score @s biblia_saltar matches 4 run function biblia:capitulo/gen_04
execute if score @s biblia_saltar matches 5 run function biblia:capitulo/gen_05

# Reinicia el valor para poder usarlo de nuevo
scoreboard players set @s biblia_saltar 0
