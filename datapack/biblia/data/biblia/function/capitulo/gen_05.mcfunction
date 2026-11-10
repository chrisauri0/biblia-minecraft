# Genesis 5: las generaciones de Adan a Noe. Se ejecuta como el jugador. Un pilar por patriarca.
function biblia:capitulo/cancelar_todo
scoreboard players set @s biblia_cap 5
time of minecraft:overworld set 1000

function biblia:tierra/en {f:"limpiar"}
function biblia:tierra/en {f:"base"}
function biblia:tierra/en {f:"llegada"}

title @s times 20 100 20
function biblia:capitulo/gen_01_aviso {titulo:"Las generaciones",ref:"Genesis 5",texto:"Este es el libro de las generaciones de Adan. De Adan a Noe pasaron diez generaciones."}
schedule function biblia:capitulo/gen_05_p1 200t
