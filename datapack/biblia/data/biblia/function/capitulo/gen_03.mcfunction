# Genesis 3 (salto directo con /trigger biblia_saltar set 3): reconstruye el Eden con Adan, Eva y los animales.
function biblia:capitulo/cancelar_todo
scoreboard players set @s biblia_cap 3
time of minecraft:overworld set 1000
function biblia:eden/en {f:"limpiar"}
function biblia:eden/en {f:"construir"}
function biblia:eden/en {f:"adan"}
function biblia:eden/en {f:"eva"}
function biblia:eden/en {f:"animales"}
function biblia:eden/en {f:"llegada"}
schedule function biblia:capitulo/gen_03_serpiente 100t
