# Genesis 4:17-22: la ciudad de Enoc y sus descendientes.
function biblia:tierra/en {f:"ciudad"}
execute as @a[scores={biblia_cap=4}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"La ciudad de Enoc",ref:"Genesis 4:17-22",texto:"Cain tuvo un hijo, Enoc, y edifico una ciudad. De sus descendientes vino Jabal, padre de los que habitan en tiendas, Jubal, padre de los que tocan arpa y flauta, y Tubal-Cain, forjador de bronce y hierro."}
schedule function biblia:capitulo/gen_04_set 400t
