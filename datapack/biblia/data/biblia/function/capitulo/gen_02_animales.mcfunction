# Genesis 2:19-20: los animales.
function biblia:eden/en {f:"animales"}
execute as @a[scores={biblia_cap=2}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Los animales",ref:"Genesis 2:19-20",texto:"Dios trajo los animales al hombre y el les puso nombre. Pero no hallo ayuda idonea para el."}
schedule function biblia:capitulo/gen_02_eva 400t
