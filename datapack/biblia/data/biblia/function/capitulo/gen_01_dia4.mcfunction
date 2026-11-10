# Dia 4 (tick 3000): el sol, la luna y las estrellas (los pone la timeline: un ciclo por dia).
execute as @a at @s if dimension biblia:genesis run function biblia:capitulo/gen_01_aviso {titulo:"Cuarto dia",ref:"Genesis 1:14-19",texto:"Dios puso lumbreras en el cielo: el sol, la luna y las estrellas, para marcar los tiempos."}
schedule function biblia:capitulo/gen_01_dia5 2400t
