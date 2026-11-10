# Fin de la creacion (tick 12600): se detiene el reloj y, tras 10 segundos, paso al Eden.
# PRUEBA: el paso definitivo al Eden sera una escena propia.
time of biblia:genesis pause
tellraw @a[scores={biblia_cap=1}] {"text":"(Prueba) En 10 segundos pasaras al Eden.","color":"gray"}
schedule function biblia:capitulo/gen_01_eden 200t
