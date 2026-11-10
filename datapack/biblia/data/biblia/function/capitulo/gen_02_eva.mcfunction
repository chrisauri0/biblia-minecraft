# Genesis 2:21-25: Eva.
function biblia:eden/en {f:"eva"}
execute as @a[scores={biblia_cap=2}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Eva",ref:"Genesis 2:21-25",texto:"Dios hizo dormir profundamente al hombre, tomo una costilla y formo a la mujer. Los dos estaban desnudos y no se avergonzaban."}
schedule function biblia:capitulo/gen_02_fin 400t
