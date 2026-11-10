# Genesis 3:1-5 (servidor): la serpiente.
function biblia:eden/en {f:"serpiente"}
execute as @a[scores={biblia_cap=3}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"La serpiente",ref:"Genesis 3:1-5",texto:"La serpiente, la mas astuta de los animales, pregunto a la mujer si Dios habia prohibido comer de los arboles. Le dijo: no moririais, seriais como Dios."}
schedule function biblia:capitulo/gen_03_fruto 400t
