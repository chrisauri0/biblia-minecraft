# Genesis 4:8: Abel muere.
function biblia:tierra/en {f:"abel"}
execute as @a[scores={biblia_cap=4}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"El primer crimen",ref:"Genesis 4:8",texto:"Cain hablo con su hermano Abel y, estando en el campo, se levanto contra el y lo mato."}
schedule function biblia:capitulo/gen_04_pregunta 400t
