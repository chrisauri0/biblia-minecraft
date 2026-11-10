# Genesis 4:13-16: la senal de Cain.
function biblia:tierra/en {f:"senal"}
execute as @a[scores={biblia_cap=4}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"La senal",ref:"Genesis 4:13-16",texto:"Cain dijo que su castigo era demasiado grande. Dios puso una senal en Cain para que nadie lo matara, y Cain salio de la presencia de Dios y habito en la tierra de Nod, al oriente del Eden."}
schedule function biblia:capitulo/gen_04_nod 400t
