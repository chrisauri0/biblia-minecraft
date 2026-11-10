# Dia 7 (tick 10200): Dios descansa.
execute as @a at @s if dimension biblia:genesis run function biblia:capitulo/gen_01_aviso {titulo:"Septimo dia",ref:"Genesis 2:1-3",texto:"Dios termino su obra, bendijo el septimo dia y reposo."}
schedule function biblia:capitulo/gen_01_final 2400t
