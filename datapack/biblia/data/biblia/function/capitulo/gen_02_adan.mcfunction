# Genesis 2:7 (tick 160): Dios forma a Adan. Se ejecuta como el servidor.
function biblia:eden/en {f:"adan"}
execute as @a[scores={biblia_cap=2}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Adan",ref:"Genesis 2:7",texto:"Dios formo al hombre del polvo de la tierra y soplo en su nariz aliento de vida."}
schedule function biblia:capitulo/gen_02_jardin 400t
