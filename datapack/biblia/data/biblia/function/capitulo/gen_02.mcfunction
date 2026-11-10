# Genesis 2: el Eden. Se ejecuta como el jugador. Construye el jardin y narra la creacion de Adan, los animales y Eva.
# Los textos son parafrasis (pendiente: texto literal RV1909, ver docs/fuentes-biblicas.md).
function biblia:capitulo/cancelar_todo

scoreboard players set @s biblia_cap 2

# Amanecer en el Overworld para ver bien la escena (si el reloj no se llama asi, solo da un error inofensivo)
time of minecraft:overworld set 1000

function biblia:eden/en {f:"limpiar"}
function biblia:eden/en {f:"construir"}
function biblia:eden/en {f:"llegada"}

title @s times 20 100 20
title @s subtitle {"text":"Genesis 2","color":"gray"}
title @s title {"text":"El Eden"}

schedule function biblia:capitulo/gen_02_adan 160t
