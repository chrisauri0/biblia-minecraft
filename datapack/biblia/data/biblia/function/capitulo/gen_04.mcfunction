# Genesis 4: Cain y Abel. Se ejecuta como el jugador. Construye la zona, coloca a los personajes y narra.
# Textos: parafrasis (pendiente RV1909, ver docs/fuentes-biblicas.md).
function biblia:capitulo/cancelar_todo
scoreboard players set @s biblia_cap 4
time of minecraft:overworld set 1000

function biblia:tierra/en {f:"limpiar"}
function biblia:tierra/en {f:"base"}
function biblia:tierra/en {f:"campos"}
function biblia:tierra/en {f:"poblar"}
function biblia:tierra/en {f:"llegada"}

title @s times 20 100 20
function biblia:capitulo/gen_01_aviso {titulo:"Cain y Abel",ref:"Genesis 4:1-2",texto:"Adan conocio a su mujer Eva, y ella dio a luz a Cain y despues a su hermano Abel. Abel fue pastor de ovejas y Cain labrador de la tierra."}
schedule function biblia:capitulo/gen_04_ofrendas 300t
