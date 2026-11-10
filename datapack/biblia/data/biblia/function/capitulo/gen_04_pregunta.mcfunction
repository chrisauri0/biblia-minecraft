# Genesis 4:9-12: Dios pregunta por Abel y la tierra se niega a dar fruto.
function biblia:tierra/en {f:"maldicion"}
execute as @a[scores={biblia_cap=4}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Donde esta tu hermano",ref:"Genesis 4:9-12",texto:"Dios pregunto: donde esta tu hermano Abel? Cain respondio: no lo se. Soy yo acaso el guarda de mi hermano? Dios dijo: la voz de la sangre de tu hermano clama a mi desde la tierra. Seras errante y extranjero."}
schedule function biblia:capitulo/gen_04_senal 400t
