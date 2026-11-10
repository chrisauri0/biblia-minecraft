# Dia 5 (tick 5400): peces y aves.
function biblia:capitulo/gen_01_dia5_peces

execute as @a at @s if dimension biblia:genesis run function biblia:capitulo/gen_01_aviso {titulo:"Quinto dia",ref:"Genesis 1:20-23",texto:"Las aguas se llenaron de peces y el cielo de aves."}
schedule function biblia:capitulo/gen_01_dia6 2400t
