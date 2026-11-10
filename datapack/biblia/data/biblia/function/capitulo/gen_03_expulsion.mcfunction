# Genesis 3:22-24: la expulsion. Se va la pareja y la serpiente; queda el guardian.
kill @e[tag=biblia_pareja]
kill @e[tag=biblia_serpiente]
function biblia:eden/en {f:"guardia"}
execute as @a[scores={biblia_cap=3}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Fuera del Eden",ref:"Genesis 3:22-24",texto:"Dios los echo del jardin y puso al oriente querubines y una espada de fuego para guardar el camino al arbol de la vida."}
schedule function biblia:capitulo/gen_03_salida 200t
